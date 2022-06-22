import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge,RisingEdge
from model import shiftreg

@cocotb.test()
async def runTest(dut):
    mdl=shiftreg(8)
    dut.rst_n.value=1
    dut.s_i.value=0
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    for _ in range(1000):
        i=random.getrandbits(1)
        dut.s_i.value=i
        mdl.shift(i)
        await FallingEdge(dut.clk)
        assert mdl.getval()==dut.p_o.value.integer,"i={} model={} dut={}".format(i,hex(mdl.getval()),hex(dut.p_o.value.integer))


        
            
