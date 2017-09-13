
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name PCPU -dir "F:/MyProgramme/0/PCPU/planAhead_run_2" -part xc7k325tffg676-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/MyProgramme/0/PCPU/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/MyProgramme/0/PCPU} }
set_property target_constrs_file "Sword_v4.ucf" [current_fileset -constrset]
add_files [list {Sword_v4.ucf}] -fileset [get_property constrset [current_run]]
link_design
