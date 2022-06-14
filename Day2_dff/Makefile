
all:

sim:
	$(MAKE) -C Test -f Makefile_SIM

gls: synth
	$(MAKE) -C Test -f Makefile_GLS

synth:
	$(MAKE) -C synth

wave:
	gtkwave ./Test/*.vcd

clean:
	$(MAKE) -C Test clean

.PHONY: clean synth
