DutySequences:
	dw Duty_Piano
	dw Duty_Pluck
	dw Duty_Piano
	dw Duty_13

Duty_Piano:
	db $80
	db $40
	db $ff

Duty_Pluck:
	db $c0
	db $00
	db $ff

Duty_13:
	db $40
	db $c0
	db $ff