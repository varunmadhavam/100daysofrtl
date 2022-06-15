import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge, RisingEdge, Timer, with_timeout

async def reset_dut(reset, clock):
    await FallingEdge(clock)
    reset.value = 0
    await FallingEdge(clock)
    reset.value = 1

@cocotb.test()
async def runTest(dut):
    dut.rst_n.value = 1
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await cocotb.start(reset_dut(dut.rst_n,dut.clk))

    await FallingEdge(dut.rst_n)
    await RisingEdge(dut.rst_n)

    await Timer(1000, units="ns")

        
            
