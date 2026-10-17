(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
(* Gear request indicators; numeric gear values and reserved ranges are not enum members. *)
TYPE GearRequested : (
		HoldCurrentGear                   := 16#FD,
		ForwardDrivePosition              := 16#FC,
		ParkPosition                      := 16#FB,
		ForwardLowPosition                := 16#FA,
		UpshiftOneGear                    := 16#F9,
		UpshiftTwoGears                   := 16#F8,
		DownshiftOneGear                  := 16#F7,
		DownshiftTwoGears                 := 16#F6,
		DriveMinus1                       := 16#F5,
		DriveMinus2                       := 16#F4,
		DriveMinus3                       := 16#F3,
		DriveMinus4                       := 16#F2,
		DriveMinus5                       := 16#F1,
		DriveMinus6                       := 16#F0,
		DriveMinus7                       := 16#EF,
		BetweenShiftSelectorPositions     := 16#EE,
		BetweenReverseSelectorPositions   := 16#ED,
		BetweenForwardSelectorPositions   := 16#EC,
		BetweenD7AndD6                    := 16#EB,
		BetweenD6AndD5                    := 16#EA,
		BetweenD5AndD4                    := 16#E9,
		BetweenD4AndD3                    := 16#E8,
		BetweenD3AndD2                    := 16#E7,
		BetweenD2AndD1                    := 16#E6,
		BetweenD1AndDrive                 := 16#E5,
		BetweenDriveAndNeutral            := 16#E4,
		BetweenNeutralAndReverse          := 16#E3,
		BetweenReverseAndPark             := 16#E2,
		ReselectCurrentPosition           := 16#E1,
		PositionUnknownOrNoButtonsPressed := 16#E0,
		ReverseSelectorPosition           := 16#DF
	);
END_TYPE
