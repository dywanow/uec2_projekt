# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir [file dirname [info script]]

# Set the project name
set project_name "bomberman"

variable script_file
set script_file "build2.tcl"

# Create project
create_project ${project_name} ./vivado/${project_name} -part xc7a35tcpg236-1 -force

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [current_project]
set_property -name "board_part" -value "digilentinc.com:basys3:part0:1.1" -objects $obj
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${project_name}.cache/ip" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/ip"]" $obj

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/src/hdl/scene_mux.v"]"\
 "[file normalize "$origin_dir/src/hdl/vga_timing.v"]"\
 "[file normalize "$origin_dir/src/hdl/font_rom.v"]"\
 "[file normalize "$origin_dir/src/hdl/delay.v"]"\
 "[file normalize "$origin_dir/src/hdl/menu_text_draw.v"]"\
 "[file normalize "$origin_dir/src/hdl/text_rom.v"]"\
 "[file normalize "$origin_dir/src/hdl/endgame_text_draw.v"]"\
 "[file normalize "$origin_dir/src/hdl/board_draw.v"]"\
 "[file normalize "$origin_dir/src/hdl/rom_rgb_mux.v"]"\
 "[file normalize "$origin_dir/src/hdl/bomber_info_text_draw.v"]"\
 "[file normalize "$origin_dir/bd/design_1/hdl/design_1_wrapper.v"]"\
 "[file normalize "$origin_dir/src/coe/path.coe"]"\
 "[file normalize "$origin_dir/src/coe/surr.coe"]"\
 "[file normalize "$origin_dir/src/coe/obs1.coe"]"\
 "[file normalize "$origin_dir/src/coe/obs2.coe"]"\
 "[file normalize "$origin_dir/src/coe/bomb.coe"]"\
 "[file normalize "$origin_dir/src/coe/expl.coe"]"\
 "[file normalize "$origin_dir/src/coe/plr1.coe"]"\
 "[file normalize "$origin_dir/src/coe/plr2.coe"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "top" -value "design_1_wrapper" -objects $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/src/xdc/basys3.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/src/xdc/basys3.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]

# Proc to create BD design_1
proc cr_bd_design_1 { parentCell } {
# The design that will be created by this Tcl proc contains the following 
# module references:
# scene_mux, vga_timing, board_draw, font_rom, bomber_info_text_draw, text_rom, rom_rgb_mux, endgame_text_draw, font_rom, menu_text_draw, text_rom



  # CHANGE DESIGN NAME HERE
  set design_name design_1

  common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

  create_bd_design $design_name

  set bCheckIPsPassed 1
  ##################################################################
  # CHECK IPs
  ##################################################################
  set bCheckIPs 1
  if { $bCheckIPs == 1 } {
     set list_check_ips "\ 
  xilinx.com:user:axi_bomberman_memory:1.0\
  xilinx.com:user:axi_bomberman_single_memory:1.0\
  xilinx.com:ip:axi_timer:2.0\
  xilinx.com:ip:axi_uartlite:2.0\
  xilinx.com:ip:clk_wiz:5.4\
  xilinx.com:ip:mdm:3.2\
  xilinx.com:ip:microblaze:10.0\
  xilinx.com:ip:proc_sys_reset:5.0\
  xilinx.com:ip:lmb_bram_if_cntlr:4.0\
  xilinx.com:ip:lmb_v10:3.0\
  xilinx.com:ip:blk_mem_gen:8.4\
  xilinx.com:ip:xlconstant:1.1\
  xilinx.com:ip:xlslice:1.0\
  xilinx.com:ip:dist_mem_gen:8.0\
  xilinx.com:ip:xlconcat:2.1\
  "

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

  }

  ##################################################################
  # CHECK Modules
  ##################################################################
  set bCheckModules 1
  if { $bCheckModules == 1 } {
     set list_check_mods "\ 
  scene_mux\
  vga_timing\
  board_draw\
  font_rom\
  bomber_info_text_draw\
  text_rom\
  rom_rgb_mux\
  endgame_text_draw\
  font_rom\
  menu_text_draw\
  text_rom\
  "

   set list_mods_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_msg_id "BD_TCL-008" "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

  if { $bCheckIPsPassed != 1 } {
    common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
    return 3
  }

  
# Hierarchical cell: menu_draw
proc create_hier_cell_menu_draw { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_menu_draw() - Empty argument(s)!"}
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
  create_bd_pin -dir I i_hblnk
  create_bd_pin -dir I -from 11 -to 0 i_hcount
  create_bd_pin -dir I i_hsync
  create_bd_pin -dir I i_pclk
  create_bd_pin -dir I -from 11 -to 0 i_rgb
  create_bd_pin -dir I i_vblnk
  create_bd_pin -dir I -from 11 -to 0 i_vcount
  create_bd_pin -dir I i_vsync
  create_bd_pin -dir O o_hsync
  create_bd_pin -dir O -from 11 -to 0 o_rgb
  create_bd_pin -dir O o_vsync
  create_bd_pin -dir I -type rst reset

  # Create instance: font_rom, and set properties
  set block_name font_rom
  set block_cell_name font_rom
  if { [catch {set font_rom [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $font_rom eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: menu_rom_addr, and set properties
  set menu_rom_addr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 menu_rom_addr ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {7} \
 ] $menu_rom_addr

  # Create instance: menu_text_draw_0, and set properties
  set block_name menu_text_draw
  set block_cell_name menu_text_draw_0
  if { [catch {set menu_text_draw_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $menu_text_draw_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.X_ADDR_WIDTH {7} \
   CONFIG.Y_ADDR_WIDTH {4} \
 ] $menu_text_draw_0

  # Create instance: menu_text_rom, and set properties
  set block_name text_rom
  set block_cell_name menu_text_rom
  if { [catch {set menu_text_rom [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $menu_text_rom eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.PATH {../rom/menu_text.data} \
   CONFIG.X_ADDR_WIDTH {7} \
   CONFIG.Y_ADDR_WIDTH {4} \
 ] $menu_text_rom

  # Create port connections
  connect_bd_net -net font_rom_char_line_pixels [get_bd_pins font_rom/rom_word] [get_bd_pins menu_text_draw_0/i_rom_word]
  connect_bd_net -net i_hblnk_1 [get_bd_pins i_hblnk] [get_bd_pins menu_text_draw_0/i_hblnk]
  connect_bd_net -net i_hcount_1 [get_bd_pins i_hcount] [get_bd_pins menu_text_draw_0/i_hcount]
  connect_bd_net -net i_hsync_1 [get_bd_pins i_hsync] [get_bd_pins menu_text_draw_0/i_hsync]
  connect_bd_net -net i_pclk_1 [get_bd_pins i_pclk] [get_bd_pins font_rom/clk] [get_bd_pins menu_text_draw_0/i_pclk] [get_bd_pins menu_text_rom/i_clk]
  connect_bd_net -net i_rgb_1 [get_bd_pins i_rgb] [get_bd_pins menu_text_draw_0/i_rgb]
  connect_bd_net -net i_vblnk_1 [get_bd_pins i_vblnk] [get_bd_pins menu_text_draw_0/i_vblnk]
  connect_bd_net -net i_vcount_1 [get_bd_pins i_vcount] [get_bd_pins menu_text_draw_0/i_vcount]
  connect_bd_net -net i_vsync_1 [get_bd_pins i_vsync] [get_bd_pins menu_text_draw_0/i_vsync]
  connect_bd_net -net menu_text_draw_0_o_hsync [get_bd_pins o_hsync] [get_bd_pins menu_text_draw_0/o_hsync]
  connect_bd_net -net menu_text_draw_0_o_rgb [get_bd_pins o_rgb] [get_bd_pins menu_text_draw_0/o_rgb]
  connect_bd_net -net menu_text_draw_0_o_title_char_addr [get_bd_pins menu_text_draw_0/o_char_addr] [get_bd_pins menu_text_rom/i_char_addr]
  connect_bd_net -net menu_text_draw_0_o_title_char_line [get_bd_pins menu_rom_addr/In0] [get_bd_pins menu_text_draw_0/o_char_line]
  connect_bd_net -net menu_text_draw_0_o_vsync [get_bd_pins o_vsync] [get_bd_pins menu_text_draw_0/o_vsync]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins menu_text_draw_0/i_rst]
  connect_bd_net -net title_text_addr_dout [get_bd_pins font_rom/addr] [get_bd_pins menu_rom_addr/dout]
  connect_bd_net -net title_text_rom_o_char_code [get_bd_pins menu_rom_addr/In1] [get_bd_pins menu_text_rom/o_char_code]

  # Restore current instance
  current_bd_instance $oldCurInst
}
  
# Hierarchical cell: endgame_draw
proc create_hier_cell_endgame_draw { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_endgame_draw() - Empty argument(s)!"}
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
  create_bd_pin -dir I i_hblnk
  create_bd_pin -dir I -from 11 -to 0 i_hcount
  create_bd_pin -dir I i_hsync
  create_bd_pin -dir I i_pclk
  create_bd_pin -dir I i_vblnk
  create_bd_pin -dir I -from 11 -to 0 i_vcount
  create_bd_pin -dir I i_vsync
  create_bd_pin -dir O o_hsync
  create_bd_pin -dir O -from 11 -to 0 o_rgb
  create_bd_pin -dir O o_vsync
  create_bd_pin -dir I -type rst reset

  # Create instance: endgame_text_draw_0, and set properties
  set block_name endgame_text_draw
  set block_cell_name endgame_text_draw_0
  if { [catch {set endgame_text_draw_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $endgame_text_draw_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net endgame_text_draw_0_o_hsync [get_bd_pins o_hsync] [get_bd_pins endgame_text_draw_0/o_hsync]
  connect_bd_net -net endgame_text_draw_0_o_rgb [get_bd_pins o_rgb] [get_bd_pins endgame_text_draw_0/o_rgb]
  connect_bd_net -net endgame_text_draw_0_o_vsync [get_bd_pins o_vsync] [get_bd_pins endgame_text_draw_0/o_vsync]
  connect_bd_net -net i_pclk_1 [get_bd_pins i_pclk] [get_bd_pins endgame_text_draw_0/i_pclk]
  connect_bd_net -net i_vsync_1 [get_bd_pins i_vsync] [get_bd_pins endgame_text_draw_0/i_vsync]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins endgame_text_draw_0/i_rst]
  connect_bd_net -net vga_timing_0_o_hblnk [get_bd_pins i_hblnk] [get_bd_pins endgame_text_draw_0/i_hblnk]
  connect_bd_net -net vga_timing_0_o_hcount [get_bd_pins i_hcount] [get_bd_pins endgame_text_draw_0/i_hcount]
  connect_bd_net -net vga_timing_0_o_hsync [get_bd_pins i_hsync] [get_bd_pins endgame_text_draw_0/i_hsync]
  connect_bd_net -net vga_timing_0_o_vblnk [get_bd_pins i_vblnk] [get_bd_pins endgame_text_draw_0/i_vblnk]
  connect_bd_net -net vga_timing_0_o_vcount [get_bd_pins i_vcount] [get_bd_pins endgame_text_draw_0/i_vcount]

  # Restore current instance
  current_bd_instance $oldCurInst
}
  
# Hierarchical cell: battle_draw
proc create_hier_cell_battle_draw { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_battle_draw() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 3 -to 0 i_axi_arena_data
  create_bd_pin -dir I -from 13 -to 0 i_axi_bomber_info_text_data
  create_bd_pin -dir I i_hblnk
  create_bd_pin -dir I -from 11 -to 0 i_hcount
  create_bd_pin -dir I i_hsync
  create_bd_pin -dir I i_pclk
  create_bd_pin -dir I -from 11 -to 0 i_rgb
  create_bd_pin -dir I i_vblnk
  create_bd_pin -dir I -from 11 -to 0 i_vcount
  create_bd_pin -dir I i_vsync
  create_bd_pin -dir O -from 7 -to 0 o_axi_board_addr
  create_bd_pin -dir O o_axi_bomber_info_text_addr
  create_bd_pin -dir O o_hsync
  create_bd_pin -dir O -from 11 -to 0 o_rgb
  create_bd_pin -dir O o_vsync
  create_bd_pin -dir I -type rst reset

  # Create instance: arena_draw, and set properties
  set block_name board_draw
  set block_cell_name arena_draw
  if { [catch {set arena_draw [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $arena_draw eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bomb_texture, and set properties
  set bomb_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 bomb_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/bomb.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $bomb_texture

  # Create instance: bomber1_font_rom, and set properties
  set block_name font_rom
  set block_cell_name bomber1_font_rom
  if { [catch {set bomber1_font_rom [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bomber1_font_rom eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: bomber1_info_text_draw, and set properties
  set block_name bomber_info_text_draw
  set block_cell_name bomber1_info_text_draw
  if { [catch {set bomber1_info_text_draw [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bomber1_info_text_draw eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.X_ADDR_WIDTH {5} \
   CONFIG.X_CHAR_COUNT {18} \
   CONFIG.X_MAX1 {448} \
   CONFIG.X_MAX2 {1919} \
   CONFIG.X_MIN1 {0} \
   CONFIG.X_MIN2 {1472} \
   CONFIG.Y_ADDR_WIDTH {3} \
   CONFIG.Y_CHAR_COUNT {5} \
   CONFIG.Y_MAX1 {500} \
   CONFIG.Y_MAX2 {500} \
   CONFIG.Y_MIN1 {100} \
   CONFIG.Y_MIN2 {100} \
 ] $bomber1_info_text_draw

  # Create instance: bomber1_info_text_rom, and set properties
  set block_name text_rom
  set block_cell_name bomber1_info_text_rom
  if { [catch {set bomber1_info_text_rom [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bomber1_info_text_rom eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.PATH {../rom/bomber_info_text.data} \
   CONFIG.X_ADDR_WIDTH {5} \
   CONFIG.Y_ADDR_WIDTH {3} \
 ] $bomber1_info_text_rom

  # Create instance: bomber1_rom_addr, and set properties
  set bomber1_rom_addr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 bomber1_rom_addr ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {7} \
 ] $bomber1_rom_addr

  # Create instance: expl_texture, and set properties
  set expl_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 expl_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/expl.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $expl_texture

  # Create instance: obs1_texture, and set properties
  set obs1_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 obs1_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/obs1.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $obs1_texture

  # Create instance: obs2_texture, and set properties
  set obs2_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 obs2_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/obs2.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $obs2_texture

  # Create instance: path_texture, and set properties
  set path_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 path_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/path.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.input_options {non_registered} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
   CONFIG.reset_qspo {false} \
   CONFIG.sync_reset_qspo {false} \
 ] $path_texture

  # Create instance: plr1_texture, and set properties
  set plr1_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 plr1_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/plr1.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $plr1_texture

  # Create instance: plr2_texture, and set properties
  set plr2_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 plr2_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/plr2.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $plr2_texture

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
  set surr_texture [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 surr_texture ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../src/coe/surr.coe} \
   CONFIG.data_width {12} \
   CONFIG.depth {4096} \
   CONFIG.memory_type {rom} \
   CONFIG.output_options {registered} \
 ] $surr_texture

  # Create port connections
  connect_bd_net -net arena_draw_0_o_hblnk [get_bd_pins arena_draw/o_hblnk] [get_bd_pins bomber1_info_text_draw/i_hblnk]
  connect_bd_net -net arena_draw_0_o_hcount [get_bd_pins arena_draw/o_hcount] [get_bd_pins bomber1_info_text_draw/i_hcount]
  connect_bd_net -net arena_draw_0_o_hsync [get_bd_pins arena_draw/o_hsync] [get_bd_pins bomber1_info_text_draw/i_hsync]
  connect_bd_net -net arena_draw_0_o_rgb [get_bd_pins arena_draw/o_rgb] [get_bd_pins bomber1_info_text_draw/i_rgb]
  connect_bd_net -net arena_draw_0_o_vblnk [get_bd_pins arena_draw/o_vblnk] [get_bd_pins bomber1_info_text_draw/i_vblnk]
  connect_bd_net -net arena_draw_0_o_vcount [get_bd_pins arena_draw/o_vcount] [get_bd_pins bomber1_info_text_draw/i_vcount]
  connect_bd_net -net arena_draw_0_o_vsync [get_bd_pins arena_draw/o_vsync] [get_bd_pins bomber1_info_text_draw/i_vsync]
  connect_bd_net -net board_draw_0_o_axi_addr [get_bd_pins o_axi_board_addr] [get_bd_pins arena_draw/o_axi_addr]
  connect_bd_net -net board_draw_0_o_rom_addr [get_bd_pins arena_draw/o_rom_addr] [get_bd_pins bomb_texture/a] [get_bd_pins expl_texture/a] [get_bd_pins obs1_texture/a] [get_bd_pins obs2_texture/a] [get_bd_pins path_texture/a] [get_bd_pins plr1_texture/a] [get_bd_pins plr2_texture/a] [get_bd_pins surr_texture/a]
  connect_bd_net -net board_draw_0_o_sel [get_bd_pins arena_draw/o_sel] [get_bd_pins rom_rgb_mux_0/i_sel]
  connect_bd_net -net bomb_texture_qspo [get_bd_pins bomb_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_bomb_rom_rgb]
  connect_bd_net -net bomber1_info_text_draw_o_axi_addr [get_bd_pins o_axi_bomber_info_text_addr] [get_bd_pins bomber1_info_text_draw/o_axi_addr]
  connect_bd_net -net bomber1_info_text_draw_o_char_addr [get_bd_pins bomber1_info_text_draw/o_char_addr] [get_bd_pins bomber1_info_text_rom/i_char_addr]
  connect_bd_net -net bomber_info_text_draw_0_o_char_line [get_bd_pins bomber1_info_text_draw/o_char_line] [get_bd_pins bomber1_rom_addr/In0]
  connect_bd_net -net bomber_info_text_draw_0_o_hsync [get_bd_pins o_hsync] [get_bd_pins bomber1_info_text_draw/o_hsync]
  connect_bd_net -net bomber_info_text_draw_0_o_rgb [get_bd_pins o_rgb] [get_bd_pins bomber1_info_text_draw/o_rgb]
  connect_bd_net -net bomber_info_text_draw_0_o_vsync [get_bd_pins o_vsync] [get_bd_pins bomber1_info_text_draw/o_vsync]
  connect_bd_net -net dist_mem_gen_0_qspo [get_bd_pins path_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_path_rom_rgb]
  connect_bd_net -net expl_texture_qspo [get_bd_pins expl_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_expl_rom_rgb]
  connect_bd_net -net font_rom_0_rom_word [get_bd_pins bomber1_font_rom/rom_word] [get_bd_pins bomber1_info_text_draw/i_rom_word]
  connect_bd_net -net i_axi_data_1 [get_bd_pins i_axi_arena_data] [get_bd_pins arena_draw/i_axi_data]
  connect_bd_net -net i_axi_data_2 [get_bd_pins i_axi_bomber_info_text_data] [get_bd_pins bomber1_info_text_draw/i_axi_data]
  connect_bd_net -net i_pclk_1 [get_bd_pins i_pclk] [get_bd_pins arena_draw/i_pclk] [get_bd_pins bomb_texture/clk] [get_bd_pins bomber1_font_rom/clk] [get_bd_pins bomber1_info_text_draw/i_pclk] [get_bd_pins bomber1_info_text_rom/i_clk] [get_bd_pins expl_texture/clk] [get_bd_pins obs1_texture/clk] [get_bd_pins obs2_texture/clk] [get_bd_pins path_texture/clk] [get_bd_pins plr1_texture/clk] [get_bd_pins plr2_texture/clk] [get_bd_pins rom_rgb_mux_0/i_pclk] [get_bd_pins surr_texture/clk]
  connect_bd_net -net i_rgb_1 [get_bd_pins i_rgb] [get_bd_pins arena_draw/i_rgb]
  connect_bd_net -net obs1_texture_qspo [get_bd_pins obs1_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_obs1_rom_rgb]
  connect_bd_net -net obs2_texture_qspo [get_bd_pins obs2_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_obs2_rom_rgb]
  connect_bd_net -net plr1_texture_qspo [get_bd_pins plr1_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_plr1_rom_rgb]
  connect_bd_net -net plr2_texture_qspo [get_bd_pins plr2_texture/qspo] [get_bd_pins rom_rgb_mux_0/i_plr2_rom_rgb]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins arena_draw/i_rst] [get_bd_pins bomber1_info_text_draw/i_rst] [get_bd_pins rom_rgb_mux_0/i_rst]
  connect_bd_net -net rom_rgb_mux_0_o_rom_rgb [get_bd_pins arena_draw/i_rom_rgb] [get_bd_pins rom_rgb_mux_0/o_rom_rgb]
  connect_bd_net -net surr_texture_qspo [get_bd_pins rom_rgb_mux_0/i_surr_rom_rgb] [get_bd_pins surr_texture/qspo]
  connect_bd_net -net text_rom_0_o_char_code [get_bd_pins bomber1_info_text_rom/o_char_code] [get_bd_pins bomber1_rom_addr/In1]
  connect_bd_net -net vga_timing_0_o_hblnk [get_bd_pins i_hblnk] [get_bd_pins arena_draw/i_hblnk]
  connect_bd_net -net vga_timing_0_o_hcount [get_bd_pins i_hcount] [get_bd_pins arena_draw/i_hcount]
  connect_bd_net -net vga_timing_0_o_hsync [get_bd_pins i_hsync] [get_bd_pins arena_draw/i_hsync]
  connect_bd_net -net vga_timing_0_o_vblnk [get_bd_pins i_vblnk] [get_bd_pins arena_draw/i_vblnk]
  connect_bd_net -net vga_timing_0_o_vcount [get_bd_pins i_vcount] [get_bd_pins arena_draw/i_vcount]
  connect_bd_net -net vga_timing_0_o_vsync [get_bd_pins i_vsync] [get_bd_pins arena_draw/i_vsync]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins bomber1_font_rom/addr] [get_bd_pins bomber1_rom_addr/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}
  
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
  create_bd_pin -dir I -from 3 -to 0 i_axi_battle_arena_data
  create_bd_pin -dir I -from 13 -to 0 i_axi_battle_bomber_info_text_data
  create_bd_pin -dir I -from 1 -to 0 i_axi_scene_sel
  create_bd_pin -dir I i_pclk
  create_bd_pin -dir O -from 7 -to 0 o_axi_battle_board_addr
  create_bd_pin -dir O o_axi_battle_bomber_info_text_addr
  create_bd_pin -dir O -from 3 -to 0 r
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir O vs

  # Create instance: battle_draw
  create_hier_cell_battle_draw $hier_obj battle_draw

  # Create instance: bg_color, and set properties
  set bg_color [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 bg_color ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x69e} \
   CONFIG.CONST_WIDTH {12} \
 ] $bg_color

  # Create instance: blue_value, and set properties
  set blue_value [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 blue_value ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $blue_value

  # Create instance: endgame_draw
  create_hier_cell_endgame_draw $hier_obj endgame_draw

  # Create instance: green_value, and set properties
  set green_value [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 green_value ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $green_value

  # Create instance: menu_draw
  create_hier_cell_menu_draw $hier_obj menu_draw

  # Create instance: red_value, and set properties
  set red_value [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 red_value ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $red_value

  # Create instance: scene_mux_0, and set properties
  set block_name scene_mux
  set block_cell_name scene_mux_0
  if { [catch {set scene_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $scene_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
  connect_bd_net -net battle_draw_hs [get_bd_pins battle_draw/o_hsync] [get_bd_pins scene_mux_0/i_battle_hs]
  connect_bd_net -net battle_draw_o_axi_addr [get_bd_pins o_axi_battle_bomber_info_text_addr] [get_bd_pins battle_draw/o_axi_bomber_info_text_addr]
  connect_bd_net -net battle_draw_o_rgb [get_bd_pins battle_draw/o_rgb] [get_bd_pins scene_mux_0/i_battle_scene_rgb]
  connect_bd_net -net battle_draw_vs [get_bd_pins battle_draw/o_vsync] [get_bd_pins scene_mux_0/i_battle_vs]
  connect_bd_net -net blue_value_Dout [get_bd_pins b] [get_bd_pins blue_value/Dout]
  connect_bd_net -net board_draw_0_o_axi_addr [get_bd_pins o_axi_battle_board_addr] [get_bd_pins battle_draw/o_axi_board_addr]
  connect_bd_net -net endgame_draw_o_hsync [get_bd_pins endgame_draw/o_hsync] [get_bd_pins scene_mux_0/i_endgame_hs]
  connect_bd_net -net endgame_draw_o_rgb [get_bd_pins endgame_draw/o_rgb] [get_bd_pins scene_mux_0/i_endgame_scene_rgb]
  connect_bd_net -net endgame_draw_o_vsync [get_bd_pins endgame_draw/o_vsync] [get_bd_pins scene_mux_0/i_endgame_vs]
  connect_bd_net -net green_value_Dout [get_bd_pins g] [get_bd_pins green_value/Dout]
  connect_bd_net -net i_axi_data_1 [get_bd_pins i_axi_battle_arena_data] [get_bd_pins battle_draw/i_axi_arena_data]
  connect_bd_net -net i_axi_data_2 [get_bd_pins i_axi_battle_bomber_info_text_data] [get_bd_pins battle_draw/i_axi_bomber_info_text_data]
  connect_bd_net -net i_pclk_1 [get_bd_pins i_pclk] [get_bd_pins battle_draw/i_pclk] [get_bd_pins endgame_draw/i_pclk] [get_bd_pins menu_draw/i_pclk] [get_bd_pins scene_mux_0/i_pclk] [get_bd_pins vga_timing_0/i_pclk]
  connect_bd_net -net i_scene_sel_1 [get_bd_pins i_axi_scene_sel] [get_bd_pins scene_mux_0/i_sel]
  connect_bd_net -net i_vsync_1 [get_bd_pins battle_draw/i_vsync] [get_bd_pins endgame_draw/i_vsync] [get_bd_pins menu_draw/i_vsync] [get_bd_pins vga_timing_0/o_vsync]
  connect_bd_net -net menu_draw_o_hsync [get_bd_pins menu_draw/o_hsync] [get_bd_pins scene_mux_0/i_menu_hs]
  connect_bd_net -net menu_draw_o_rgb [get_bd_pins menu_draw/o_rgb] [get_bd_pins scene_mux_0/i_menu_scene_rgb]
  connect_bd_net -net menu_draw_o_vsync [get_bd_pins menu_draw/o_vsync] [get_bd_pins scene_mux_0/i_menu_vs]
  connect_bd_net -net red_value_Dout [get_bd_pins r] [get_bd_pins red_value/Dout]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins battle_draw/reset] [get_bd_pins endgame_draw/reset] [get_bd_pins menu_draw/reset] [get_bd_pins scene_mux_0/i_rst] [get_bd_pins vga_timing_0/i_rst]
  connect_bd_net -net scene_mux_0_o_scene_hs [get_bd_pins hs] [get_bd_pins scene_mux_0/o_scene_hs]
  connect_bd_net -net scene_mux_0_o_scene_vs [get_bd_pins vs] [get_bd_pins scene_mux_0/o_scene_vs]
  connect_bd_net -net scene_rgb_mux_0_o_scene_rgb [get_bd_pins blue_value/Din] [get_bd_pins green_value/Din] [get_bd_pins red_value/Din] [get_bd_pins scene_mux_0/o_scene_rgb]
  connect_bd_net -net vga_timing_0_o_hblnk [get_bd_pins battle_draw/i_hblnk] [get_bd_pins endgame_draw/i_hblnk] [get_bd_pins menu_draw/i_hblnk] [get_bd_pins vga_timing_0/o_hblnk]
  connect_bd_net -net vga_timing_0_o_hcount [get_bd_pins battle_draw/i_hcount] [get_bd_pins endgame_draw/i_hcount] [get_bd_pins menu_draw/i_hcount] [get_bd_pins vga_timing_0/o_hcount]
  connect_bd_net -net vga_timing_0_o_hsync [get_bd_pins battle_draw/i_hsync] [get_bd_pins endgame_draw/i_hsync] [get_bd_pins menu_draw/i_hsync] [get_bd_pins vga_timing_0/o_hsync]
  connect_bd_net -net vga_timing_0_o_vblnk [get_bd_pins battle_draw/i_vblnk] [get_bd_pins endgame_draw/i_vblnk] [get_bd_pins menu_draw/i_vblnk] [get_bd_pins vga_timing_0/o_vblnk]
  connect_bd_net -net vga_timing_0_o_vcount [get_bd_pins battle_draw/i_vcount] [get_bd_pins endgame_draw/i_vcount] [get_bd_pins menu_draw/i_vcount] [get_bd_pins vga_timing_0/o_vcount]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins battle_draw/i_rgb] [get_bd_pins bg_color/dout] [get_bd_pins menu_draw/i_rgb]

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
  variable script_folder

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

  # Create instance: axi_battle_arena, and set properties
  set axi_battle_arena [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_bomberman_memory:1.0 axi_battle_arena ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {8} \
   CONFIG.DATA_WIDTH {4} \
 ] $axi_battle_arena

  # Create instance: axi_battle_bomber_info_text, and set properties
  set axi_battle_bomber_info_text [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_bomberman_memory:1.0 axi_battle_bomber_info_text ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {14} \
 ] $axi_battle_bomber_info_text

  # Create instance: axi_scenes, and set properties
  set axi_scenes [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_bomberman_single_memory:1.0 axi_scenes ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {2} \
 ] $axi_scenes

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
   CONFIG.C_ADDR_TAG_BITS {0} \
   CONFIG.C_AREA_OPTIMIZED {0} \
   CONFIG.C_DCACHE_ADDR_TAG {0} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
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
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_scenes/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_battle_arena/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins axi_battle_bomber_info_text/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net axi_battle_arena_data [get_bd_pins axi_battle_arena/data] [get_bd_pins vga_drawer/i_axi_battle_arena_data]
  connect_bd_net -net axi_battle_bomber_info_text_data [get_bd_pins axi_battle_bomber_info_text/data] [get_bd_pins vga_drawer/i_axi_battle_bomber_info_text_data]
  connect_bd_net -net axi_scenes_data [get_bd_pins axi_scenes/data] [get_bd_pins vga_drawer/i_axi_scene_sel]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_100M/dcm_locked]
  connect_bd_net -net clk_wiz_0_pclk [get_bd_pins axi_battle_arena/pclk] [get_bd_pins axi_battle_bomber_info_text/pclk] [get_bd_pins axi_scenes/pclk] [get_bd_pins clk_wiz_0/pclk] [get_bd_pins vga_drawer/i_pclk]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_battle_arena/s00_axi_aclk] [get_bd_pins axi_battle_bomber_info_text/s00_axi_aclk] [get_bd_pins axi_scenes/s00_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in] [get_bd_pins vga_drawer/reset]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_peripheral_aresetn [get_bd_pins axi_battle_arena/s00_axi_aresetn] [get_bd_pins axi_battle_bomber_info_text/s00_axi_aresetn] [get_bd_pins axi_scenes/s00_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net vga_drawer_b [get_bd_ports b] [get_bd_pins vga_drawer/b]
  connect_bd_net -net vga_drawer_g [get_bd_ports g] [get_bd_pins vga_drawer/g]
  connect_bd_net -net vga_drawer_hs [get_bd_ports hs] [get_bd_pins vga_drawer/hs]
  connect_bd_net -net vga_drawer_o_axi_battle_board_addr [get_bd_pins axi_battle_arena/addr] [get_bd_pins vga_drawer/o_axi_battle_board_addr]
  connect_bd_net -net vga_drawer_o_axi_battle_bomber_info_text_addr [get_bd_pins axi_battle_bomber_info_text/addr] [get_bd_pins vga_drawer/o_axi_battle_bomber_info_text_addr]
  connect_bd_net -net vga_drawer_r [get_bd_ports r] [get_bd_pins vga_drawer/r]
  connect_bd_net -net vga_drawer_vs [get_bd_ports vs] [get_bd_pins vga_drawer/vs]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_battle_arena/S00_AXI/S00_AXI_reg] SEG_axi_battle_arena_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_battle_bomber_info_text/S00_AXI/S00_AXI_reg] SEG_axi_battle_bomber_info_text_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_scenes/S00_AXI/S00_AXI_reg] SEG_axi_scenes_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
  close_bd_design $design_name 
}
# End of cr_bd_design_1()
cr_bd_design_1 ""
set_property SYNTH_CHECKPOINT_MODE "Hierarchical" [get_files design_1.bd ] 

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7a35tcpg236-1 -flow {Vivado Synthesis 2017} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2017" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property -name "report_strategy" -value "Vivado Synthesis Default Reports" -objects $obj
set_property -name "strategy" -value "Vivado Synthesis Defaults" -objects $obj

set reports [get_report_configs -of_objects $obj]
if { [llength $reports ] > 0 } {
  delete_report_config [get_report_configs -of_objects $obj]
}
# Create 'synth_1_synth_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0] "" ] } {
  create_report_config -report_name synth_1_synth_report_utilization_0 -report_type report_utilization:1.0 -steps synth_design -runs synth_1
}
set obj [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0]
if { $obj != "" } {

}
# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7a35tcpg236-1 -flow {Vivado Implementation 2017} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2017" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property -name "report_strategy" -value "Vivado Implementation Default Reports" -objects $obj
set_property -name "strategy" -value "Vivado Implementation Defaults" -objects $obj
set_property -name "steps.write_bitstream.args.readback_file" -value "0" -objects $obj
set_property -name "steps.write_bitstream.args.verbose" -value "0" -objects $obj

set reports [get_report_configs -of_objects $obj]
if { [llength $reports ] > 0 } {
  delete_report_config [get_report_configs -of_objects $obj]
}
# Create 'impl_1_init_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_init_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps init_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_opt_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_drc_0 -report_type report_drc:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_io_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0] "" ] } {
  create_report_config -report_name impl_1_place_report_io_0 -report_type report_io:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0] "" ] } {
  create_report_config -report_name impl_1_place_report_utilization_0 -report_type report_utilization:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_control_sets_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0] "" ] } {
  create_report_config -report_name impl_1_place_report_control_sets_0 -report_type report_control_sets:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_1' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_1 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_place_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_post_place_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_place_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_place_power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_route_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_route_report_drc_0 -report_type report_drc:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_methodology_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0] "" ] } {
  create_report_config -report_name impl_1_route_report_methodology_0 -report_type report_methodology:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_power_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0] "" ] } {
  create_report_config -report_name impl_1_route_report_power_0 -report_type report_power:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_route_status_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0] "" ] } {
  create_report_config -report_name impl_1_route_report_route_status_0 -report_type report_route_status:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_route_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_route_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_clock_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0] "" ] } {
  create_report_config -report_name impl_1_route_report_clock_utilization_0 -report_type report_clock_utilization:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_post_route_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0]
if { $obj != "" } {

}
# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:$project_name"
