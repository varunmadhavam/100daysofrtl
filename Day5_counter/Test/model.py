class Counter:
    def __init__(self,n):
        self.max_val=(2**n)-1
        self.count=0
    def inccount(self):
        if(self.count==self.max_val):
            self.count=0
        else:
            self.count+=1