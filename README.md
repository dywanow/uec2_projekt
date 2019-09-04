# Bomberman using Xilinx Microblaze for UEC2 project

## Essential software

1. Git: https://git-scm.com/downloads


## Download instruction

1. Open cmd
2. Navigate to your working directory:
    ```
    cd <working_directory>
    ```
3. Download the repository:
    ```
    git clone git://github.com/dywanow/uec2_projekt.git
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
9. Export hardware (just in case) by choosing `File -> Export -> Export Hardware...`  
   Choose `<working_directory>/hw` as the destination path, tick `Include bitstream` option
10. Launch SDK environment by choosing `File -> Launch SDK`  
    Set `Exported location` to `<working_directory>/hw`
11. Create New C++ App, import sources, set stack size to 0x3000 in lscript.ld...