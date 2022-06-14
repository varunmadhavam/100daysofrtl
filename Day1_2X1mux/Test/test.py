import random
import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def runTest(dut):

    for _ in range(100):
            a=random.getrandbits(1)
            b=random.getrandbits(1)
            sel=random.getrandbits(1)
            c=a|b
            dut.a.value=a
            dut.b.value=b
            dut.sel.value=sel
            await Timer(10, units="ns")
            if(sel==0):
                assert a==dut.c.value
            else:
                assert b==dut.c.value

        
            
