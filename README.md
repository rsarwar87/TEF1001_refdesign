# TEF1001 ref design using XDMA/Bridge Bridge subsystem
## Usage
1. Clone repo: glit clone https://github.com/rsarwar87/TEF1001\_refdesign
  1.a. Change directory: cd TEF1001\_refdesign
  1.b. change branch: git checkout: xdma\_default
2. mkdir <projname>
  2.a.Change directory: cd <projname>
3. run vivado
4. vivado, run TCL: source ../TeF1001i\_xDMA.tcl

## Note
* RAM is at the memoment incorrectly configured. 
* XDMA was configured in memory-mapped mode to read the SDRAM
* The XDMA Bar0 is configured to access the QSPI, IIC, block ram, etc.
* also contains a microblaze to carry prcessing on device
