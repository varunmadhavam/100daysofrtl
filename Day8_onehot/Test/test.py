import random
import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def runTest(dut):

    for _ in range(100):
            a=random.randrange(16)
            b=1<<a
            dut.bin_i.value=a
            await Timer(10, units="ns")
            assert b==dut.onehot_o.value.integer,"model={} dut={}".format(hex(b),hex(dut.onehot_o.value.integer))

        
            
