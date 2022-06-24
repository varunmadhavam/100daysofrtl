import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge,RisingEdge
from model import Counter

@cocotb.test()
async def runTest(dut):
    cntr=Counter(4)
    dut.rst_n.value=1
    dut.load_i.value=0
    dut.load_val_i.value=0
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    for i in range(100):
        assert dut.count_o.value.integer == cntr.count,"i={} model={} dut={}".format(i,cntr.count,dut.count_o.value.integer)
        
        if(random.randrange(10,90) in range (i-5,i+5)):
            val=random.randrange(5,12)
            cntr.inccount(True,val)
            dut.load_i.value=1
            dut.load_val_i.value=val
        else:
            cntr.inccount(False,0)
        await FallingEdge(dut.clk)
        dut.load_i.value=0

        
            
