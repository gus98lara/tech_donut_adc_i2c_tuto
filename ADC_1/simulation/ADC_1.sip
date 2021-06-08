set_global_assignment -entity "ADC_1" -library "lib_ADC_1" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "ADC_1" -library "lib_ADC_1" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "ADC_1" -library "lib_ADC_1" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_ADC_1" -name SPD_FILE [file join $::quartus(sip_path) "../ADC_1.spd"]
set_global_assignment -library "lib_ADC_1" -name MISC_FILE [file join $::quartus(sip_path) "../../ADC_1.qsys"]

set_global_assignment -library "lib_ADC_1" -name MISC_FILE [file join $::quartus(sip_path) "ADC_1.vhd"]
