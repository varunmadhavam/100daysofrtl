import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge


@cocotb.test()
async def runTest(dut):
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    dut.rst_n.value=1
    dut.sig_i.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    await cocotb.start(Clock(dut.sig_i, 47, units="ns").start())
    await Timer(1000, units="ns")