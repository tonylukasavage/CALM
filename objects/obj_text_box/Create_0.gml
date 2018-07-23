x1 = 0;
x2 = 0;
y1 = 0;
y2 = 0;

x_padding = 40;
y_padding = 20;
text_padding = 30;
shadow_offset = 5;
inner_padding = 3;
text_box_color = make_color_rgb(8, 39, 89);
text_box_outline_color = c_white;
text_box_font_color = c_white;

text_animated = instance_create_layer(0, 0, "Inst_TextBox_Next", obj_text_animated);
text_next = instance_create_layer(0, 0, "Inst_TextBox_Next", obj_text_box_next);