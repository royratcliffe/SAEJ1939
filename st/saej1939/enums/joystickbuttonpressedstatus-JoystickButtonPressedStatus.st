(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
(* Button status for joysticks 1-10, buttons 1-16 (BJM and EJM). *)
TYPE JoystickButtonPressedStatus : (
		ButtonNotPressed := 2#00,
		ButtonPressed    := 2#01,
		ErrorIndicator   := 2#10,
		NotAvailable     := 2#11
	);
END_TYPE
