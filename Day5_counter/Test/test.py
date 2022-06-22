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
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    for _ in range(100):
        await RisingEdge(dut.clk)
        cntr.inccount()
        await FallingEdge(dut.clk)
        assert dut.count_o.value.integer == cntr.count

        
            
