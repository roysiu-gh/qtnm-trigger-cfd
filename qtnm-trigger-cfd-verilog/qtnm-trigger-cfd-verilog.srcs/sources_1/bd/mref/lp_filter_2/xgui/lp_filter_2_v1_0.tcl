# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DECAY_FULL_POWER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DECAY_PART" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.DECAY_FULL_POWER { PARAM_VALUE.DECAY_FULL_POWER } {
	# Procedure called to update DECAY_FULL_POWER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECAY_FULL_POWER { PARAM_VALUE.DECAY_FULL_POWER } {
	# Procedure called to validate DECAY_FULL_POWER
	return true
}

proc update_PARAM_VALUE.DECAY_PART { PARAM_VALUE.DECAY_PART } {
	# Procedure called to update DECAY_PART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECAY_PART { PARAM_VALUE.DECAY_PART } {
	# Procedure called to validate DECAY_PART
	return true
}

proc update_PARAM_VALUE.SIZE { PARAM_VALUE.SIZE } {
	# Procedure called to update SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIZE { PARAM_VALUE.SIZE } {
	# Procedure called to validate SIZE
	return true
}


proc update_MODELPARAM_VALUE.DECAY_FULL_POWER { MODELPARAM_VALUE.DECAY_FULL_POWER PARAM_VALUE.DECAY_FULL_POWER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECAY_FULL_POWER}] ${MODELPARAM_VALUE.DECAY_FULL_POWER}
}

proc update_MODELPARAM_VALUE.DECAY_PART { MODELPARAM_VALUE.DECAY_PART PARAM_VALUE.DECAY_PART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECAY_PART}] ${MODELPARAM_VALUE.DECAY_PART}
}

proc update_MODELPARAM_VALUE.SIZE { MODELPARAM_VALUE.SIZE PARAM_VALUE.SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIZE}] ${MODELPARAM_VALUE.SIZE}
}

