
all:

sim:
	$(MAKE) -C Test -f Makefile_GLS clean
	$(MAKE) -C Test -f Makefile_SIM clean
	$(MAKE) -C Test -f Makefile_SIM

gls: synth
	$(MAKE) -C Test -f Makefile_GLS clean
	$(MAKE) -C Test -f Makefile_SIM clean
	$(MAKE) -C Test -f Makefile_GLS

synth:
	$(MAKE) -C synth

wave:
	gtkwave ./Test/sim.vcd

clean:
	rm -f ./synth/*.v ./synth/*.sp
	rm -f ./Test/*.vcd
	$(MAKE) -C Test -f Makefile_GLS clean
	$(MAKE) -C Test -f Makefile_SIM clean

.PHONY: clean synth
