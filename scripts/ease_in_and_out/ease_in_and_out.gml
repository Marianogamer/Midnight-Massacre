/// ease_in_and_out (time, start, change, duration)
function ease_in_and_out()
{
	var t = argument0 //time
	var b = argument1 //begin
	var c = argument2 //change
	var d = argument3 //duration
	
	t /= d;
	
	return c * t + b;
}