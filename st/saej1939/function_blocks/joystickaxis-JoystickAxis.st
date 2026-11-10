(* --- Interface --- *)
FUNCTION_BLOCK JoystickAxis
VAR_INPUT
	bNeutrStat    : BYTE;
	bLeverNegStat : BYTE;
	bLeverPosStat : BYTE;
	rPos          : REAL;
	bDetStat      : BYTE;
END_VAR
VAR_OUTPUT
	xInNeutral : BOOL;
	rPosition : REAL;
	xInDetent : BOOL;
END_VAR
VAR
END_VAR

(* --- Implementation --- *)
xInNeutral := bNeutrStat = JoystickNeutralPositionStatus.InNeutralPosition;
rPosition  := 0;
IF bLeverNegStat = JoystickNegativePositionStatus.OnNegativeSideOfNeutral THEN
	rPosition := -rPos;
ELSIF bLeverPosStat = JoystickPositivePositionStatus.OnPositiveSideOfNeutral THEN
	rPosition := rPos;
END_IF;

xInDetent := bDetStat = JoystickDetentPositionStatus.InDetentPosition;
