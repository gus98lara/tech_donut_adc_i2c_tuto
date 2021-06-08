set_global_assignment -entity "ADC_2" -library "lib_ADC_2" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "ADC_2" -library "lib_ADC_2" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "ADC_2" -library "lib_ADC_2" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_ADC_2" -name SPD_FILE [file join $::quartus(sip_path) "../ADC_2.spd"]
set_global_assignment -library "lib_ADC_2" -name MISC_FILE [file join $::quartus(sip_path) "../../ADC_2.qsys"]

set_global_assignment -library "lib_ADC_2" -name MISC_FILE [file join $::quartus(sip_path) "ADC_2.vhd"]
