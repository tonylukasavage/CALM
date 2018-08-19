/*
if (room_exists(room_first)) {
	waveCounter++;
	
	if (waveCounter mod 30 == 0) {
		var lay_id = layer_get_id("Tiles_Background");
		var map_id = layer_tilemap_get_id(lay_id);
	
		// randomize ocean tiles
		// 896,96 (clear)
		// 864,160
		// 896,160
		// 928,160
		for (var _y = 0; _y < 7; _y++) {
			for (var _x = 0; _x < 32; _x++) {
				if (random(1) > 0.9) {
					var data = tilemap_get(map_id, 704, 352);
					var ind = tile_get_index(data);
					data = tile_set_index(data, choose(160 + choose(864,896,928)/32, 96 + 896/32));
					data = tile_set_rotate(data, false);
					show_debug_message(string(_x) + "," + string(_y));
					tilemap_set(map_id, data, _x, _y);
				}
			}
		}
	}
}
*/