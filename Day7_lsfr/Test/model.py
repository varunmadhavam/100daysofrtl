from ctypes import *
class shiftreg():
    def __init__(self,n,init):
        self.data=c_uint(init<<(32-n))
        self.n=n

    def shift(self):
        #print(hex((self.getval()&(1<<3))>>3))
        #print(hex((self.getval()&(1<<1))>>1))
        i=((self.getval()&(1<<3))>>3)^((self.getval()&(1<<1))>>1)
        self.shift_i(i)

    def shift_i(self,i):
        self.data.value=self.data.value>>1
        self.data.value|=i<<31

    def getval(self):
        return self.data.value>>(32-self.n)

if __name__ == "__main__":
    sht=shiftreg(4,0xE)
    print(hex(sht.getval()))
    sht.shift()
    print(hex(sht.getval()))
    sht.shift()
    print(hex(sht.getval()))
    sht.shift()
    print(hex(sht.getval()))
    sht.shift()
    print(hex(sht.getval()))