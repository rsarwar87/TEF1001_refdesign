# TEF1001_refdesign: only 1-160-1
Project Description
==========================================================================

Replaces the default implementation of pcie to an xDMA/Bridge system. Host can now access all memory 
components using the bar interface when used with Xioinx XDMA drivers.

##Usage
1. Edit "design_basic_settings.cmd" with text editor:
''' 
      @set XILDIR=C:\Xilinx
      @set VIVADO_VERSION=2018.2
'''      
2. Run:
'''
vivado_create_project_guimode.sh
vivado_open_project_guimode.sh
'''
3. Build system: Create HDF and export to prebuilt folder. Run on Vivado TCL: 
'''TE::hw_build_design -export_prebuilt'''
Note: Script generate design and export files into \prebuilt\hardware\<short dir>. Use GUI is the same, except file export to prebuilt folder

4. Generate Programming Files with HSI/SDK Vivado TCL console: 
'''TE::sw_run_hsi'''
5. Rebuild bootloader/app from SDK
5.a. Run: '''TE::sw_run_sdk''' 
5.b. Add the SPI_bootloader in the SDK and compile. SDK bootloader should use xiflm v5.11. 
5.c. Add and compile a test app, i.e. hello_tef1001 
5.d. When done, close SDK and copy the wto elf files to prebuilt/software/<board name>/. 
5.e. copy new boot leader to firmware/microblazw_0 
5.f. rebuild mcs file by clicking "Generate Bitstream" and than running the following in the vivado TCL console: 
'''
TE::sw_run_hsi -no_hsi
'''
6 Connect JTAG and add the device to vivado; now program the bitstream.
       '''TE::pr_program_flash_mcsfile -swapp hello_tef1001'''

JTAG/UART Console:
'''
connect -url TCP:10.211.3.140:3121
targets -set -filter {name =~ "MicroBlaze Debug*"} -index 0
type: jtagterminal -start
'''              

