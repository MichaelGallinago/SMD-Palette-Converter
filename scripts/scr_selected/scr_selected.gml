/// @function scr_selected()

	function scr_selected() {
		with Controller {
			var sln = Selected.SlNumb, n = Selected.Numb;
			switch Exit {
				case 0: Selected.Count = Digits; break;
				case 1:
					var Output;
					if Lck[sln].image_index {
						Output = clamp(int64(Selected.Count),
						n > 0 ? int64(TxtBx[sln][n - 1].BaseCount) + 1 : 0, 
						n < 7 ? int64(TxtBx[sln][n + 1].BaseCount) - 1 : 255);
						Selected.BaseCount = Output;
						Selected.Count = string(Output);
						Image.BarVal[sln][n] = Output;
						Sldr[sln][n].x = SldrBr[sln].x + Output + 2;
					} else {
						var Count = int64(Selected.Count);
						for (var i = 0; i < 8; i++) {
							var Max = 248 + i;
							if i > n { Output = clamp(TxtBx[sln][i].BaseCount, max(i, min(Count, Max)), Max); }
							else if i < n { Output = clamp(TxtBx[sln][i].BaseCount, i, min(Max, max(Count, i))); }
							else { Output = clamp(Count, i, 248 + i); }
							TxtBx[sln][i].BaseCount = Output;
							TxtBx[sln][i].Count = string(Output);
							Image.BarVal[sln][i] = Output;
							Sldr[sln][i].x = SldrBr[sln].x + Output + 2;
						}
					}
					Exit = 0;
				break;
				case 2:
					Selected.Count = string(Selected.BaseCount); Exit = 0;
				break;
			}
		}
	}