/// @description Insert description here
// You can write your code in this editor
	
	if ImgInd > Limit { ImgInd = 14 }
	if !ImgInd        { ImgInd = 0 }
	BtnPart.image_index = floor(ImgInd / 2)