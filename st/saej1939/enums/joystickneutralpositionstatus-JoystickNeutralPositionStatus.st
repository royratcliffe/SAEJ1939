(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
TYPE JoystickNeutralPositionStatus : (
		NotInNeutralPosition := 2#00,
		InNeutralPosition    := 2#01,
		ErrorIndicator       := 2#10,
		NotAvailable         := 2#11
	);
END_TYPE
