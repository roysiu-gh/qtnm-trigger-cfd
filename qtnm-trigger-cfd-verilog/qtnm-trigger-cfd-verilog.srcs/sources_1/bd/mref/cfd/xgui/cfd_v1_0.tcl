# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DELAY_SAMPLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INV_FRAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.DELAY_SAMPLES { PARAM_VALUE.DELAY_SAMPLES } {
	# Procedure called to update DELAY_SAMPLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DELAY_SAMPLES { PARAM_VALUE.DELAY_SAMPLES } {
	# Procedure called to validate DELAY_SAMPLES
	return true
}

proc update_PARAM_VALUE.INV_FRAC { PARAM_VALUE.INV_FRAC } {
	# Procedure called to update INV_FRAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INV_FRAC { PARAM_VALUE.INV_FRAC } {
	# Procedure called to validate INV_FRAC
	return true
}

proc update_PARAM_VALUE.SIZE { PARAM_VALUE.SIZE } {
	# Procedure called to update SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIZE { PARAM_VALUE.SIZE } {
	# Procedure called to validate SIZE
	return true
}


proc update_MODELPARAM_VALUE.DELAY_SAMPLES { MODELPARAM_VALUE.DELAY_SAMPLES PARAM_VALUE.DELAY_SAMPLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DELAY_SAMPLES}] ${MODELPARAM_VALUE.DELAY_SAMPLES}
}

proc update_MODELPARAM_VALUE.INV_FRAC { MODELPARAM_VALUE.INV_FRAC PARAM_VALUE.INV_FRAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INV_FRAC}] ${MODELPARAM_VALUE.INV_FRAC}
}

proc update_MODELPARAM_VALUE.SIZE { MODELPARAM_VALUE.SIZE PARAM_VALUE.SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIZE}] ${MODELPARAM_VALUE.SIZE}
}

