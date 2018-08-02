/// @function scr_event_fire(eventType)
/// @description fire listener for given event type
/// @param eventType the type of event to fire

var events = global.events;
var eventType = argument0;

// no listeners for this event, skip
if (!ds_map_exists(events, eventType)) { 
	return show_debug_message("no handle for event '" + eventType + "'"); 
}

// get array of listeners
var listeners = events[? eventType];

// execute each listener
var i;
var len = ds_list_size(listeners);
for (i = 0; i < len; i++) {
	var listener = listeners[| i];
	
	// validate the listener entry
	if (!ds_map_exists(listener, "object")) {
		show_debug_message("events: listener " + string(listener) + " has no object");	
	}
	if (!ds_map_exists(listener, "script")) {
		show_debug_message("events: listener " + string(listener) + " has no script");	
	}
	
	// get each listener's target object and script
	var object = listener[? "object"];
	var script = listener[? "script"];
	
	// execute the listeners script with the target object as the first param
	show_debug_message("executing script");
	script_execute(script, object); 
}
