(* --- Interface --- *)
FUNCTION_BLOCK Joystick
VAR_INPUT
	(* X axis *)
	bXAxisNeutrStat    : BYTE;
	bXAxisLeverNegStat : BYTE;
	bXAxisLeverPosStat : BYTE;
	rXAxisPos          : REAL;
	(* Y axis *)
	bYAxisNeutrStat    : BYTE;
	bYAxisLeverNegStat : BYTE;
	bYAxisLeverPosStat : BYTE;
	rYAxisPos          : REAL;
	(* X & Y detents *)
	bXAxisDetStat : BYTE;
	bYAxisDetStat : BYTE;
	(* button presses *)
	abButtPressStat : ARRAY[1..12] OF BYTE;
END_VAR
VAR_OUTPUT
	xXAxisInDetent : BOOL;
	xYAxisInDetent : BOOL;
	axButtPress    : ARRAY[1..12] OF BOOL;
END_VAR
VAR
	joystickAxisX, joystickAxisY : JoystickAxis;
END_VAR
VAR_TEMP
	butt : DINT;
END_VAR

(* --- Implementation --- *)
joystickAxisX(bNeutrStat    := bXAxisNeutrStat,
	          bLeverNegStat := bXAxisLeverNegStat,
	          bLeverPosStat := bXAxisLeverPosStat,
	          rPos          := rXAxisPos,
	          bDetStat      := bXAxisDetStat,
	          xInDetent     => xXAxisInDetent);

joystickAxisY(bNeutrStat    := bYAxisNeutrStat,
	          bLeverNegStat := bYAxisLeverNegStat,
	          bLeverPosStat := bYAxisLeverPosStat,
	          rPos          := rYAxisPos,
	          bDetStat      := bYAxisDetStat,
	          xInDetent     => xYAxisInDetent);

FOR butt := LOWER_BOUND(abButtPressStat, 1) TO UPPER_BOUND(abButtPressStat, 1) DO
	axButtPress[butt] := abButtPressStat[butt] = JoystickButtonPressedStatus.ButtonPressed;
END_FOR
