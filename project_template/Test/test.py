import random
import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def runTest(dut):

    for _ in range(100):
            a=random.getrandbits(1)
            b=random.getrandbits(1)
            c=a|b
            dut.a.value=a
            dut.b.value=b
            await Timer(10, units="ns")
            assert c==dut.c.value

        
            
