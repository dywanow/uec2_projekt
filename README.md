# Bomberman using Xilinx Microblaze for UEC2 project


## Software

1. [Git](https://git-scm.com/downloads) (Optional)
2. [Basys 3 board files](https://reference.digilentinc.com/reference/software/vivado/board-files)



## Download and programming instruction

1. Open cmd
2. Navigate to your working directory:
    ```
    cd <working_directory>
    ```
3. Download the ZIP file and extract in `<working_directory>` or use git command:
    ```
    git clone git://github.com/micholek/uec2_projekt.git
    ```
4. Open Vivado
5. Open Tcl Console by choosing `Window -> Tcl Console` or using `Ctrl+Shift+T` combination
6. Navigate to the sources directory:
    ```
    cd {<working_directory>/src}
    ```
7. Build the Vivado project:
    ```
    source build.tcl
    ```
    The project will be created under `<working_directory>/vivado`
8. Run synthesis, implementation and generate bitstream
9. Export hardware by choosing `File -> Export -> Export Hardware...`  
  - Tick `Include bitstream` option
10. Launch SDK environment by choosing `File -> Launch SDK`  
11. Create New C++ Application Project
  - Set name to bomberman
12. Configure SDK project  
  - Delete default main.cc file
  - Import C++ sources from `<working_directory>/src/sdk`
    - `Project Explorer -> bomberman -> RMB -> Import...`
    - `General -> File System`
    - Click `Browse...` and choose `<working_directory>/src/sdk`
    - Tick sdk folder on the left side
    - Click `Advanced >>` and tick all 3 options, set PROJECT_LOC
    - Click `Finish`
  - Set stack size to 0x3000 and heap size to 0x1000 in lscript.ld
13. Program device
  - `Xilinx -> Program FPGA`
  - `Project Explorer -> bomberman -> RMB -> Run As -> Launch on Hardware (System Debugger)`
14. Open UART terminal for keyboard input

## Video presentation

You can watch a short video presenting the game [here](https://drive.google.com/open?id=18dinKnmbFVfMRYR385YRHtESh4WQq4uN)
