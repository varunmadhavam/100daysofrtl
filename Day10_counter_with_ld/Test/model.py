class Counter:
    def __init__(self,n):
        self.max_val=(2**n)-1
        self.count=0
        self.load=0
    def inccount(self,load,val):
        if(load):
            self.load=val
        if(self.count==self.max_val):
            if(load):
                self.count=val
            else:
                self.count=self.load
        else:
            self.count+=1