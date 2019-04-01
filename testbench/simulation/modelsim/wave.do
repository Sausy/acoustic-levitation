onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /trigger_tb_/sim_delay
add wave -noupdate /trigger_tb_/clock
add wave -noupdate /trigger_tb_/reset
add wave -noupdate /trigger_tb_/trigger
add wave -noupdate /trigger_tb_/time_cnt
add wave -noupdate /trigger_tb_/time_stamp_US_out
add wave -noupdate /trigger_tb_/enable_IO
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {191 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
