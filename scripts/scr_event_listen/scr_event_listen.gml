/// @function scr_event_listen(eventType, object, script)
/// @description create listener for given event type
/// @param eventType the type of event to listen for
/// @param object the target object for the script
/// @param script the script to be executed when this event is fired

var events = global.events;
var eventType = argument0;
var object = argument1;
var script = argument2;

// create listener map entry
var entry = ds_map_create();
ds_map_add(entry, "object", object);
ds_map_add(entry, "script", script);

// add listener entry to events map
var eventList = events[? eventType];
if (is_undefined(eventList) || !ds_exists(eventList, ds_type_list)) {
	eventList = ds_list_create();
	ds_list_add(eventList, entry);
	ds_map_add_list(events, eventType, eventList);
} else {
	eventList = events[? eventType];
	ds_list_add(eventList, entry);
	ds_map_replace_list(events, eventType, eventList);
}
