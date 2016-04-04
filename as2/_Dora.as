class Dora 
	{
	
	private var centerX:Number;
	private var centerY:Number;
	
	private var mc:MovieClip;
	
	private var fillColor:Number = 0x99FF00;
	private var radius:Number = 100;
	
	public function Dora() {
		centerX = Stage.width / 2;
		centerY = Stage.height / 2;
		
		mc = _root.createEmptyMovieClip("mc", _root.getNextHighestDepth());
		
		mc._x = 100;
		mc._y = 100;
		
		trace(centerX)
		
		var x:Number = radius;
		var y:Number = radius;
		
		var thisWidth:Number = 100;
		var thisHeight:Number = 90;
		
		//mc.beginFill(fillColor, 100);
        //mc.moveTo(0, 0);
        //mc.lineTo(200, 0);
        //mc.lineTo(200, 200);
        //mc.lineTo(0, 200);
        //mc.lineTo(0, 0);
        //mc.endFill();
		
		mc.beginFill(fillColor, 100); 
		//mc.moveTo(x + radius, y);
		//mc.curveTo(radius + x, Math.tan(Math.PI / 8) * radius + y, Math.sin(Math.PI / 4) * radius + x, Math.sin(Math.PI / 4) * radius + y);
		//mc.curveTo(Math.tan(Math.PI / 8) * radius + x, radius + y, x, radius + y);
		//mc.curveTo(-Math.tan(Math.PI / 8) * radius + x, radius+ y, -Math.sin(Math.PI / 4) * radius + x, Math.sin(Math.PI / 4) * radius + y);
		//mc.curveTo(-radius + x, Math.tan(Math.PI / 8) * radius + y, -radius + x, y);
		//mc.curveTo(-radius + x, -Math.tan(Math.PI / 8) * radius + y, -Math.sin(Math.PI / 4) * radius + x, - Math.sin(Math.PI / 4) * radius + y);
		//mc.curveTo(-Math.tan(Math.PI / 8) * radius + x, -radius + y, x, -radius + y);
		//mc.curveTo(Math.tan(Math.PI / 8) * radius + x, -radius + y, Math.sin(Math.PI / 4) * radius + x, - Math.sin(Math.PI / 4) * radius + y);
		//mc.curveTo(radius + x, -Math.tan(Math.PI / 8) * radius + y, radius + x, y);
		
		mc.moveTo(0, thisHeight/2);
		mc.curveTo(0, 0, thisWidth/2, 0);
		mc.curveTo(thisWidth, 0, thisWidth, thisHeight/2);
		mc.curveTo(thisWidth, thisHeight, thisWidth/2, thisHeight);
		mc.curveTo(0, thisHeight, 0, thisHeight / 2);
			
		mc.endFill();
	}
	
}