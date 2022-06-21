import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge

@cocotb.test()
async def runTest(dut):
    dut.rst_n.value=1
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    await Timer(1000,"ns")

        
            
