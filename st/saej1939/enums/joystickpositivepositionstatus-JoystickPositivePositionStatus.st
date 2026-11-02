(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
TYPE JoystickPositivePositionStatus : (
		NotOnPositiveSideOfNeutral := 2#00,
		OnPositiveSideOfNeutral    := 2#01,
		ErrorIndicator             := 2#10,
		NotAvailable               := 2#11
	);
END_TYPE
