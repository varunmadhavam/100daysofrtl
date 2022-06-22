from ctypes import *
class shiftreg():
    def __init__(self,n):
        self.data=c_uint(0)
        self.n=n
    def shift(self,i):
        self.data.value=self.data.value>>1
        self.data.value|=i<<31
    def getval(self):
        return self.data.value>>(32-self.n)

if __name__ == "__main__":
    sht=shiftreg(8)
    sht.shift(1)
    print(hex(sht.getval()))
    sht.shift(1)
    print(hex(sht.getval()))
    sht.shift(1)
    print(hex(sht.getval()))
    sht.shift(1)
    print(hex(sht.getval()))