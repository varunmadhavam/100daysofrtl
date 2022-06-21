import random
import cocotb
from cocotb.triggers import Timer
from ctypes import *
@cocotb.test()
async def runTest(dut):

    for _ in range(1000):
            op=random.getrandbits(2)
            a=random.randrange(1,16)
            b=random.randrange(1,16)
            if(op==0):
                r=a+b
            elif(op==1):
                r=a-b
            elif(op==2):
                r=a*b
            else:
                r=int(a/b)
            dut.op_i.value=op
            dut.a_i.value=a
            dut.b_i.value=b
            await Timer(20, units="ns")
            r_=c_short(dut.r_o.value.integer)
            assert r==r_.value,"model={} dut={}".format(r,r_.value)

        
            
