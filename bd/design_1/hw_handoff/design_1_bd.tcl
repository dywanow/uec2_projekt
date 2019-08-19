
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# board_draw, rom_rgb_mux, vga_timing

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: vga_drawer
proc create_hier_cell_vga_drawer { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_vga_drawer() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 3 -to 0 b
  create_bd_pin -dir O -from 3 -to 0 g
  create_bd_pin -dir O hs
  create_bd_pin -dir I -from 3 -to 0 i_axi_data
  create_bd_pin -dir I i_pclk
  create_bd_pin -dir O -from 7 -to 0 o_axi_addr
  create_bd_pin -dir O -from 3 -to 0 r
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir O vs

  # Create instance: blue_value, and set properties
  set blue_value [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 blue_value ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $blue_value

  # Create instance: board_draw_0, and set properties
  set block_name board_draw
  set block_cell_name board_draw_0
  if { [catch {set board_draw_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $board_draw_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bomb_texture, and set properties
  set bomb_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 bomb_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/bomb.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $bomb_texture

  # Create instance: expl_texture, and set properties
  set expl_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 expl_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/expl.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $expl_texture

  # Create instance: green_value, and set properties
  set green_value [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 green_value ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $green_value

  # Create instance: obs1_texture, and set properties
  set obs1_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 obs1_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/obs1.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $obs1_texture

  # Create instance: obs2_texture, and set properties
  set obs2_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 obs2_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/obs2.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $obs2_texture

  # Create instance: path_texture, and set properties
  set path_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 path_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/path.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $path_texture

  # Create instance: plr1_texture, and set properties
  set plr1_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 plr1_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/plr1.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $plr1_texture

  # Create instance: plr2_texture, and set properties
  set plr2_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 plr2_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/plr2.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $plr2_texture

  # Create instance: red_value, and set properties
  set red_value [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 red_value ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $red_value

  # Create instance: rom_rgb_mux_0, and set properties
  set block_name rom_rgb_mux
  set block_cell_name rom_rgb_mux_0
  if { [catch {set rom_rgb_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rom_rgb_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: surr_texture, and set properties
  set surr_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 surr_texture ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../src/coe/surr.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $surr_texture

  # Create instance: vga_timing_0, and set properties
  set block_name vga_timing
  set block_cell_name vga_timing_0
  if { [catch {set vga_timing_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vga_timing_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net blue_value_Dout [get_bd_pins b] [get_bd_pins blue_value/Dout]
  connect_bd_net -net board_draw_0_o_axi_addr [get_bd_pins o_axi_addr] [get_bd_pins board_draw_0/o_axi_addr]
  connect_bd_net -net board_draw_0_o_hsync [get_bd_pins hs] [get_bd_pins board_draw_0/o_hsync]
  connect_bd_net -net board_draw_0_o_rgb [get_bd_pins blue_value/Din] [get_bd_pins board_draw_0/o_rgb] [get_bd_pins green_value/Din] [get_bd_pins red_value/Din]
  connect_bd_net -net board_draw_0_o_rom_addr [get_bd_pins board_draw_0/o_rom_addr] [get_bd_pins bomb_texture/addra] [get_bd_pins expl_texture/addra] [get_bd_pins obs1_texture/addra] [get_bd_pins obs2_texture/addra] [get_bd_pins path_texture/addra] [get_bd_pins plr1_texture/addra] [get_bd_pins plr2_texture/addra] [get_bd_pins surr_texture/addra]
  connect_bd_net -net board_draw_0_o_sel [get_bd_pins board_draw_0/o_sel] [get_bd_pins rom_rgb_mux_0/i_sel]
  connect_bd_net -net board_draw_0_o_vsync [get_bd_pins vs] [get_bd_pins board_draw_0/o_vsync]
  connect_bd_net -net bomb_texture_douta [get_bd_pins bomb_texture/douta] [get_bd_pins rom_rgb_mux_0/i_bomb_rom_rgb]
  connect_bd_net -net expl_texture_douta [get_bd_pins expl_texture/douta] [get_bd_pins rom_rgb_mux_0/i_expl_rom_rgb]
  connect_bd_net -net green_value_Dout [get_bd_pins g] [get_bd_pins green_value/Dout]
  connect_bd_net -net i_axi_data_1 [get_bd_pins i_axi_data] [get_bd_pins board_draw_0/i_axi_data]
  connect_bd_net -net i_pclk_1 [get_bd_pins i_pclk] [get_bd_pins board_draw_0/i_pclk] [get_bd_pins bomb_texture/clka] [get_bd_pins expl_texture/clka] [get_bd_pins obs1_texture/clka] [get_bd_pins obs2_texture/clka] [get_bd_pins path_texture/clka] [get_bd_pins plr1_texture/clka] [get_bd_pins plr2_texture/clka] [get_bd_pins rom_rgb_mux_0/i_pclk] [get_bd_pins surr_texture/clka] [get_bd_pins vga_timing_0/i_pclk]
  connect_bd_net -net obs1_texture_douta [get_bd_pins obs1_texture/douta] [get_bd_pins rom_rgb_mux_0/i_obs1_rom_rgb]
  connect_bd_net -net obs2_texture_douta [get_bd_pins obs2_texture/douta] [get_bd_pins rom_rgb_mux_0/i_obs2_rom_rgb]
  connect_bd_net -net path_texture_douta [get_bd_pins path_texture/douta] [get_bd_pins rom_rgb_mux_0/i_path_rom_rgb]
  connect_bd_net -net plr1_texture_douta [get_bd_pins plr1_texture/douta] [get_bd_pins rom_rgb_mux_0/i_plr1_rom_rgb]
  connect_bd_net -net plr2_texture_douta [get_bd_pins plr2_texture/douta] [get_bd_pins rom_rgb_mux_0/i_plr2_rom_rgb]
  connect_bd_net -net red_value_Dout [get_bd_pins r] [get_bd_pins red_value/Dout]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins board_draw_0/i_rst] [get_bd_pins rom_rgb_mux_0/i_rst] [get_bd_pins vga_timing_0/i_rst]
  connect_bd_net -net rom_rgb_mux_0_o_rom_rgb [get_bd_pins board_draw_0/i_rom_rgb] [get_bd_pins rom_rgb_mux_0/o_rom_rgb]
  connect_bd_net -net surr_texture_douta [get_bd_pins rom_rgb_mux_0/i_surr_rom_rgb] [get_bd_pins surr_texture/douta]
  connect_bd_net -net vga_timing_0_o_hblnk [get_bd_pins board_draw_0/i_hblnk] [get_bd_pins vga_timing_0/o_hblnk]
  connect_bd_net -net vga_timing_0_o_hcount [get_bd_pins board_draw_0/i_hcount] [get_bd_pins vga_timing_0/o_hcount]
  connect_bd_net -net vga_timing_0_o_hsync [get_bd_pins board_draw_0/i_hsync] [get_bd_pins vga_timing_0/o_hsync]
  connect_bd_net -net vga_timing_0_o_vblnk [get_bd_pins board_draw_0/i_vblnk] [get_bd_pins vga_timing_0/o_vblnk]
  connect_bd_net -net vga_timing_0_o_vcount [get_bd_pins board_draw_0/i_vcount] [get_bd_pins vga_timing_0/o_vcount]
  connect_bd_net -net vga_timing_0_o_vsync [get_bd_pins board_draw_0/i_vsync] [get_bd_pins vga_timing_0/o_vsync]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set b [ create_bd_port -dir O -from 3 -to 0 b ]
  set g [ create_bd_port -dir O -from 3 -to 0 g ]
  set hs [ create_bd_port -dir O hs ]
  set r [ create_bd_port -dir O -from 3 -to 0 r ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set vs [ create_bd_port -dir O vs ]

  # Create instance: axi_board, and set properties
  set axi_board [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_bomberman_controller:1.0 axi_board ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {8} \
   CONFIG.DATA_WIDTH {4} \
   CONFIG.MEMORY_WIDTH {256} \
 ] $axi_board

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {116.394} \
   CONFIG.CLKOUT1_PHASE_ERROR {87.466} \
   CONFIG.CLKOUT2_JITTER {108.254} \
   CONFIG.CLKOUT2_PHASE_ERROR {87.466} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {148.5} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_OUT2_PORT {pclk} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {11.875} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {11.875} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {8} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_0_100M

  # Create instance: vga_drawer
  create_hier_cell_vga_drawer [current_bd_instance .] vga_drawer

  # Create interface connections
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_board/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net axi_bomberman_controller_0_data [get_bd_pins axi_board/data] [get_bd_pins vga_drawer/i_axi_data]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_100M/dcm_locked]
  connect_bd_net -net clk_wiz_0_pclk [get_bd_pins axi_board/pclk] [get_bd_pins clk_wiz_0/pclk] [get_bd_pins vga_drawer/i_pclk]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_board/s00_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in] [get_bd_pins vga_drawer/reset]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_peripheral_aresetn [get_bd_pins axi_board/s00_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net vga_drawer_b [get_bd_ports b] [get_bd_pins vga_drawer/b]
  connect_bd_net -net vga_drawer_g [get_bd_ports g] [get_bd_pins vga_drawer/g]
  connect_bd_net -net vga_drawer_hs [get_bd_ports hs] [get_bd_pins vga_drawer/hs]
  connect_bd_net -net vga_drawer_o_axi_addr [get_bd_pins axi_board/addr] [get_bd_pins vga_drawer/o_axi_addr]
  connect_bd_net -net vga_drawer_r [get_bd_ports r] [get_bd_pins vga_drawer/r]
  connect_bd_net -net vga_drawer_vs [get_bd_ports vs] [get_bd_pins vga_drawer/vs]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_board/S00_AXI/S00_AXI_reg] SEG_axi_bomberman_controller_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


