import random
import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock
from cocotb.triggers import FallingEdge


@cocotb.test()
async def runTest(dut):
    await cocotb.start(Clock(dut.clk, 10, units="ns").start())
    dut.rst_n.value=1

    for _ in range(100):
            await FallingEdge(dut.clk)
            dut.d.value=random.getrandbits(1)
            wait=random.randrange(20,40)
            await Timer(wait, units="ns")
            dut.rst_n.value=random.getrandbits(1)

        
            
