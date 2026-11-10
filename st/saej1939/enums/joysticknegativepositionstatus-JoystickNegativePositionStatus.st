(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
TYPE JoystickNegativePositionStatus : (
		NotOnNegativeSideOfNeutral := 2#00,
		OnNegativeSideOfNeutral    := 2#01,
		ErrorIndicator             := 2#10,
		NotAvailable               := 2#11
	);
END_TYPE
