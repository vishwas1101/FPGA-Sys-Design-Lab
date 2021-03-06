
d
Command: %s
53*	vivadotcl23
write_bitstream -force main.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?	
?Unspecified I/O Standard: 6 out of 6 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2?
 "
B0B02default:default"
B1B12default:default"
CLKCLK2default:default"&
CorrectCorrect2default:default"*
	Incorrect	Incorrect2default:default""
RESETRESET2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px? 
?	
?Unconstrained Logical Port: 6 out of 6 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2?
 "
B0B02default:default"
B1B12default:default"
CLKCLK2default:default"&
CorrectCorrect2default:default"*
	Incorrect	Incorrect2default:default""
RESETRESET2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2>
 "(
DEB1/CLKDEB1/CLK2default:default2default:default2B
 ",

DEB1/OUT/O
DEB1/OUT/O2default:default2default:default2>
 "(
DEB1/OUT	DEB1/OUT2default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 4 cells. This could lead to large hold time violations. First few involved cells are:
    %s {FDCE}
    %s {FDCE}
    %s {FDCE}
    %s {FDCE}
%s*DRC2>
 "(
DEB1/OUT	DEB1/OUT2default:default2default:default2~
 "h
(FSM1/FSM_sequential_current_state_reg[0]	(FSM1/FSM_sequential_current_state_reg[0]2default:default2default:default2~
 "h
(FSM1/FSM_sequential_current_state_reg[1]	(FSM1/FSM_sequential_current_state_reg[1]2default:default2default:default2~
 "h
(FSM1/FSM_sequential_current_state_reg[2]	(FSM1/FSM_sequential_current_state_reg[2]2default:default2default:default2~
 "h
(FSM1/FSM_sequential_current_state_reg[3]	(FSM1/FSM_sequential_current_state_reg[3]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
uPS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.%s*DRC2;
 #DRC|PS7|Zynq requires PS7 block|PS72default:default8ZZPS7-1h px? 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 3 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
812default:default2
192default:default2
122default:default2
32default:defaultZ4-41h px? 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Sep 29 12:31:15 20212default:defaultZ17-206h px? 


End Record