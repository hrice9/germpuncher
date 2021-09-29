/// @description 

var input_string = "";

for(i = 0; i < array_length(input_chain); i++) {
	input_string += string(input_chain[i]) + " ";
}

draw_text(x + 125, y, input_string);



draw_circle(x, y, 100, true);