# TEF1001_refdesign: only 1-160-1
Project Description
==========================================================================
  Edit "design_basic_settings.cmd" with text editor:
 
    Set your vivado installation path for edit: 
    
      @set XILDIR=C:\Xilinx
      
      @set VIVADO_VERSION=2018.2
      
    ==
    
    For SDSoC Design only (SDSxC installation is used):
    
      Set variables:
      
        @set ENABLE_SDSOC=1
        
        @set ZIP_PATH=C:/Program Files/7-Zip/7z.exe
        
        =====
        
Run "vivado_create_project_guimode.sh"

Run "vivado_open_project_guimode.sh"


=====
NOTES
=====


https://wiki.trenz-electronic.de/display/PD/TEF1001+Test+Board

Create HDF and export to prebuilt folder

Run on Vivado TCL: TE::hw_build_design -export_prebuilt

        Note: Script generate design and export files into \prebuilt\hardware\<short dir>. Use GUI is the same, except file export to prebuilt folder

Generate Programming Files with HSI/SDK


Start with TE Scripts on Vivado TCL: TE::sw_run_hsi

         (optional) Start SDK with Vivado GUI or start with TE Scripts on Vivado TCL: TE::sw_run_sdk to generate files manually
                    Note: See SDK Projects
                    
         (optional )Copy "prebuilt\software\<short dir>\srec_spi_bootloader.elf" into "\firmware\microblaze_0" (replace shipped one) and regenerate design again (HW (Step5)+SW(Step6 only a.))
         
         
QSPI

Connect JTAG and Power ON PC

        Open Vivado Project with "vivado_open_existing_project_guimode.cmd" or if not created, create with "vivado_create_project_guimode.cmd"
        
       Type on Vivado TCL Console: TE::pr_program_flash_mcsfile -swapp hello_tef1001

JTAG/UART Console:

    Launch the XSDB console on SDK (Xilinx → XSCT Console):
    
              type: connect TCP:10.211.3.16:3121
              
              type: targets -set -filter {name =~ "MicroBlaze Debug*"} -index 0
              
              type: jtagterminal -start
              
