#!/bin/bash

PANELIZE_GLOBAL="0xb2_panelize.json"
PANELIZE_VCUTS="0xb2_panelize_vcuts.json"

PANELIZE_OPTIONS="-p $PANELIZE_GLOBAL"
if [[ "$1" == "vcuts" ]]
then
	PANELIZE_OPTIONS="$PANELIZE_OPTIONS -p $PANELIZE_VCUTS"
fi

kikit panelize \
	$PANELIZE_OPTIONS \
	0xB2.kicad_pcb \
	panel/0xB2_panel.kicad_pcb

