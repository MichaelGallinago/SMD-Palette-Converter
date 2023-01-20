// Шейдер коррекции цвета и ограничения палитры на экране v5.0
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Bar1[8];
uniform float Bar2[8];
uniform float Bar3[8];
uniform int ColorMode;
float Mod36;
int i;
int j;

void main() {
	// Установить базовый цвет
	vec4 BaseCol = texture2D(gm_BaseTexture, v_vTexcoord);
	BaseCol.rgb *= 255.0;
	
	#region Основной массив
	///////////////////////
	
	float BC_RGB[3]; // Создать массив данных
	#define BC_R BC_RGB[0] // Красный
	#define BC_G BC_RGB[1] // Зелёный
	#define BC_B BC_RGB[2] // Синий
	// Установить значения массива
	BC_R = BaseCol.r;
	BC_G = BaseCol.g;
	BC_B = BaseCol.b;
	
	#endregion
	
	#region 9-битная палитра
	// Если включена 9-битная палитра - применить код
	
	if (ColorMode == 1) {
		
		// Округлить цвет до 9-битной палитры
		/*
		for (i = 0; i < 3; i++) {
			Mod36 = mod(BC_RGB[i], 36.0);
			BC_RGB[i] -= Mod36;
			if (Mod36 > 18.0) { BC_RGB[i] += 36.0; }
			if (BC_RGB[i] >= 235.0) { BC_RGB[i] = 255.0; }
		} */
		for (i = 0; i < 3; i++) {
			float Dif, Dist, Len = 255.0;
			for (j = 0; j < 8; j++) {
				Dif = BC_RGB[i] - Bar1[j];
				if (Len > abs(Dif)) {
					Len = abs(Dif);
					Dist = Dif;
				}
			}
			BC_RGB[i] -= Dist;
		}
	}
	
	#endregion

	#region Output палитра
	// Если включена output палитра - применить код
	
	if (ColorMode == 2) {
		// Если цвет соответствует данному - изменить на другой, соответствующий ему
		for (i = 0; i < 3; i++) {
			for (j = 0; j < 8; j++) {
				if (BC_RGB[i] == Bar2[j]) { BC_RGB[i] = Bar3[j]; }
			}
		}
	}
	
	#endregion
	
	// Установить изменённый цвет
	gl_FragColor = v_vColour * vec4( vec3(BC_R, BC_G, BC_B) / 255.0, BaseCol.a);
}
