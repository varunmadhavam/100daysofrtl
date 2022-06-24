import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge,RisingEdge
from model import shiftreg

@cocotb.test()
async def runTest(dut):
    mdl=shiftreg(4,0xE)
    dut.rst_n.value=1
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    for _ in range(1000):
        i=random.getrandbits(1)
        mdl.shift()
        await FallingEdge(dut.clk)
        assert mdl.getval()==dut.lfsr_o.value.integer,"i={} model={} dut={}".format(i,hex(mdl.getval()),hex(dut.lfsr_o.value.integer))


        
            
