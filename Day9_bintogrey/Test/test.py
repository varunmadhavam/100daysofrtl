import random
import cocotb
from cocotb.triggers import Timer

def bintogray(n):
    n ^= (n >> 1)
    return n

@cocotb.test()
async def runTest(dut):

    for _ in range(10):
            a=random.randrange(15)
            b=bintogray(a)
            dut.bin_i.value=a
            await Timer(10, units="ns")
            assert b==dut.gray_o.value.integer,"model={} dut={}".format(hex(b),hex(dut.gray_o.value.integer))

        
            
