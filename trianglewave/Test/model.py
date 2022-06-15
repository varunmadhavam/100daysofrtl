class Trianglewave():
    def __init__(self,min,max):
        self.min=min
        self.max=max
        self.down=0
        self.count=0

    def updatecnt(self):
        if(self.down==1):
            self.count=self.count-1
            if(self.count==self.min):
                self.down=0
        else:
            self.count=self.count+1
            if(self.count==self.max):
                self.down=1

if __name__ == "__main__":
    cnt=Trianglewave(0,3)
    for _ in range(10):
        print(cnt.count)
        cnt.updatecnt()

