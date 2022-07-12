
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name lab1 -dir "C:/Sistemas Digitais/lab1/planAhead_run_5" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Sistemas Digitais/lab1/ula2bits.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Sistemas Digitais/lab1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ula2bits.ucf" [current_fileset -constrset]
add_files [list {ula2bits.ucf}] -fileset [get_property constrset [current_run]]
link_design
