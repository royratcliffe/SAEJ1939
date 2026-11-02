(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
(* Detent status for either axis of joysticks 1-10 (BJM1-BJM10). *)
TYPE JoystickDetentPositionStatus : (
		NotInDetentPosition := 2#00,
		InDetentPosition    := 2#01,
		ErrorIndicator      := 2#10,
		NotAvailable        := 2#11
	);
END_TYPE
