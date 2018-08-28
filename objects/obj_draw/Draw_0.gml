if (ds_exists(ds_depthgrid, ds_type_grid)) {
	var depthgrid = ds_depthgrid;
	var instNum = instance_number(obj_parent_depth);
	ds_grid_resize(depthgrid, 2, instNum);
	var yy = 0;
	
	with (obj_parent_depth) {
		depthgrid[# 0, yy] = id;
		depthgrid[# 1, yy] = y;
		yy++;
	}
	ds_grid_sort(ds_depthgrid, 1, true);
	yy = 0; repeat(instNum) {
		var instanceId = ds_depthgrid[# 0, yy];
		with (instanceId) {
			draw_self();	
		}
		yy++;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
}