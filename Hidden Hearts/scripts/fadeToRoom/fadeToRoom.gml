function fadeToRoom(_room, _dur, _color)
{
	var _inst = instance_create_depth(0, 0, 0, oTransitionFade);
	
	with (_inst)
	{
		targetRoom = _room;
		duration = _dur;
		color = _color;
	}
}