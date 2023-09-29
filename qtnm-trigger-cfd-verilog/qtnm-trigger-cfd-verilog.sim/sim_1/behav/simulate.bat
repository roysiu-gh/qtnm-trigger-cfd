@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim lp_cfd_zd_tb_behav -key {Behavioral:sim_1:Functional:lp_cfd_zd_tb} -tclbatch lp_cfd_zd_tb.tcl -view C:/Users/roysi/Files/URSS/Verilog/Practice/lp_filter_tb_behav sim_45 noisy_sine_3.wcfg -view C:/Users/roysi/Files/URSS/Verilog/Practice/zero_detector_tb_behav sim_58 sine_bin.wcfg -view C:/Users/roysi/Files/URSS/Verilog/Practice/lp_cfd_zd_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
