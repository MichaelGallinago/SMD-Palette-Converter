/// @function scr_mode_visible(group, loop)
/// @param {real} group
/// @param {real} loop

	// Script
	function scr_mode_visible(Grp, j) {
		SldrBr[j].visible = Grp; Lck[j].visible = Grp; 
		Ptrn[0][j].visible = Grp; Ptrn[1][j].visible = Grp;
		for (var i = 0; i < 8; i++) { Sldr[j][i].visible = Grp; 
		TxtBx[j][i].visible = Grp; }
	}

/// @function scr_mode_visible_full()
	
	function scr_mode_visible_full() {
		for (var j = 0; j < 3; j++) {
			scr_mode_visible(!Mode ? 0 : (Mode - 1 ? j > 0 : !j), j)
		}
	}