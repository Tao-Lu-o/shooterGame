/// @description 

// Player health, score, bombs.
if(global.game_state == states.paused || global.game_state == states.playing){
	var xhp = 30;
	repeat(obj_player.hp) {
		draw_sprite(spr_life, 0, xhp, 750);
		xhp += 30;
	}
	draw_set_font(fnt_score);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(50,0,"Score: " + string(score));
	if(obj_player.bomb == 1){
		draw_text(800,750, "BOMB READY");
	}
}

// Draw PAUSE or GAMEOVER text in the center.
if (global.game_state == states.paused && instance_exists(obj_player)){
	var cam = view_camera[0];
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);
	
	draw_set_color(c_white);
	draw_set_alpha(0.75);
	draw_rectangle(cam_w * 0.25,cam_h * 0.25,cam_w * 0.75,cam_h * 0.75,false);
	draw_set_alpha(1.0);
	draw_set_color(c_black);
	draw_set_font(fnt_messages);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(cam_w * 0.5,cam_h * 0.5,"GAME PAUSED");
	for(var i = 0; i < array_length(pauseOption); i++){
		var _print = "";
		if(i == pauseOptionSelected){
			_print += "			 " + pauseOption[i] + " 			";
		}
		else {
			_print += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(cam_w * 0.5, cam_h * 0.5 + 36 + (i * 24), _print);
		draw_set_alpha(1.0);
	}
}

if(global.game_state == states.gameover){
	var cam = view_camera[0];
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);
	draw_set_font(fnt_messages);
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(cam_w * 0.5,cam_h * 0.5,"GAME OVER");
	draw_text(cam_w * 0.5,cam_h * 0.5 + 24,"Press R to play again");
	draw_text(cam_w * 0.5,cam_h * 0.5 + 48, "Press Q to quit");
}

if(global.game_state == states.win && instance_exists(obj_player)){
	var cam = view_camera[0];
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);
	draw_set_font(fnt_messages);
	draw_set_color(c_silver);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(cam_w * 0.5,cam_h * 0.5,"YOU WON");
	draw_text(cam_w * 0.5,cam_h * 0.5 + 24,"Press R to play again!");
	draw_text(cam_w * 0.5,cam_h * 0.5 + 48, "Press Q to quit");
}


