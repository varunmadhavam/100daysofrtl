import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge,RisingEdge

async def drive_ready_i(dut):
    while True:
        await FallingEdge(dut.clk)
        dut.ready_i.value=not dut.ready_i.value
        await FallingEdge(dut.clk)
        n=random.randrange(10,90,10)
        await Timer(n,"ns")

@cocotb.test()
async def runTest(dut):
    dut.rst_n.value=1
    dut.valid_i.value=0
    dut.ready_i.value=1
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    await cocotb.start(drive_ready_i(dut))
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=0
    await FallingEdge(dut.clk)
    await FallingEdge(dut.clk)
    dut.rst_n.value=1
    dut.p_i.value=0xAA
    await FallingEdge(dut.clk)
    dut.valid_i.value=1
    await FallingEdge(dut.clk)
    dut.valid_i.value=0
    await Timer(1000,"ns")



        
            
