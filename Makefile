all:

flashelf: App
	/opt/tools/Xilinx/Vitis/2020.2/bin/program_flash -f ./main_App/firmware/firmware.srec -offset 0x00600000 -flash_type s25fl128sxxxxxx0-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121 

flashbit:
	/opt/tools/Xilinx/Vitis/2020.2/bin/program_flash -f ../icap_axi_ddr/bitstreams/config2prr0nandprr1xnor/config2.bit -offset 0x00000000 -flash_type s25fl128sxxxxxx0-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121 
boot:
	$(MAKE) -C bootloader

App:
	$(MAKE) -C main_App

cleanapp:
	$(MAKE) -C main_App clean

cleanboot:
	$(MAKE) -C bootloader clean

.PHONY: cleanapp cleanboot
