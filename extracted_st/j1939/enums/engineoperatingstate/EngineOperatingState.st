(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
TYPE EngineOperatingState : (
        EngineStopped               := 2#0000,
        PreStart                    := 2#0001,
        Starting                    := 2#0010,
        WarmUp                      := 2#0011,
        Running                     := 2#0100,
        CoolDown                    := 2#0101,
        EngineStopping              := 2#0110,
        PostRun                     := 2#0111,
        AvailableForSAEAssignment8  := 2#1000,
        AvailableForSAEAssignment9  := 2#1001,
        AvailableForSAEAssignment10 := 2#1010,
        AvailableForSAEAssignment11 := 2#1011,
        AvailableForSAEAssignment12 := 2#1100,
        AvailableForSAEAssignment13 := 2#1101,
        Reserved                    := 2#1110,
        NotAvailable                := 2#1111
    );
END_TYPE
