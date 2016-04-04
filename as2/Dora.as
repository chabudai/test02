import flash.geom.ColorTransform;
class Dora 
	{
	
	private var centerX:Number;
	private var centerY:Number;
	
	private var root:MovieClip;
	private var head:MovieClip;
	private var faceline:MovieClip;
	private var righteye:MovieClip;
	private var lefteye:MovieClip;
	private var nose:MovieClip;
	private var noseline:MovieClip;
	private var mouse:MovieClip;
	private var higeR:MovieClip;
	private var higeL:MovieClip;
	
	private var color:Number;
	
	public function Dora(clr:Number, mc:MovieClip) {
		if (clr == undefined) {
			clr = 0x000000;
		}
		color = clr;
		
		centerX = Stage.width / 2;
		centerY = Stage.height / 2;
		
		drawDora(mc);
	}
	
	public function drawDora(mc:MovieClip):Void {

		if (mc == undefined) {
			mc = _root.createEmptyMovieClip("mc", _root.getNextHighestDepth());;
		}
		
		mc._x = centerX;
		mc._y = centerY;
		root = mc.createEmptyMovieClip("root", mc.getNextHighestDepth());
		
		//頭
		head = root.createEmptyMovieClip("head", root.getNextHighestDepth());
		head._x = 0;
		head._y = 0;
		
		var w:Number = 94;
		var h:Number = 82;
		
		head.beginFill(color, 100); 
		head.moveTo(-w/2, 0);
		head.curveTo(-w/2+2, -h/2+1, 0, -h/2);
		head.curveTo(w/2-2, -h/2+1, w/2, 0);
		head.curveTo(w/2-1, h/2-1, 0, h/2);
		head.curveTo(-w/2+1, h/2-1, -w/2, 0);	
		head.endFill();
		
		//フェイスライン
		faceline = root.createEmptyMovieClip("faceline", root.getNextHighestDepth());
		faceline._x = 0;
		faceline._y = 7;
		
		w = 86;
		h = 67;
		faceline.lineStyle(1, 0xDDDDDD);
		faceline.moveTo(-w/2, 0);
		faceline.curveTo(-w/2+2, -h/2+1, 0, -h/2);
		faceline.curveTo(w/2-2, -h/2+1, w/2, 0);
		faceline.curveTo(w/2-1, h/2-1, 0, h/2);
		faceline.curveTo(-w/2+1, h/2-1, -w/2, 0);
		
		//右目
		lefteye = root.createEmptyMovieClip("lefteye", root.getNextHighestDepth());
		lefteye._x = -17.5;
		lefteye._y = -35;
		drawOval(lefteye, 17, 19);
		
		//左目
		righteye = root.createEmptyMovieClip("righteye", root.getNextHighestDepth());
		righteye._x = 0.5;
		righteye._y = -35;
		drawOval(righteye, 17, 19);
		
		//鼻
		nose = root.createEmptyMovieClip("nose", root.getNextHighestDepth());
		nose._x = -5.5;
		nose._y = -20;
		drawOval(nose, 11, 9);
		
		//鼻下
		noseline = root.createEmptyMovieClip("noseline", root.getNextHighestDepth());
		noseline.lineStyle(1, 0xFFFFFF);
		noseline.moveTo( -0.5, -18);
		noseline.lineTo( -0.5, 24);
		
		//口
		mouse = root.createEmptyMovieClip("mouse", root.getNextHighestDepth());
		mouse.lineStyle(1, 0xFFFFFF);
		mouse.moveTo( -31, 6);
		mouse.curveTo( -24, 24, 0, 24);
		mouse.curveTo(24, 24, 31, 6);
		
		//ヒゲ（右）
		higeR = root.createEmptyMovieClip("higeR", root.getNextHighestDepth());
		higeR.lineStyle(1, 0xFFFFFF);
		higeR.moveTo( -16, -13);
		higeR.lineTo( -35, -16);
		higeR.moveTo( -17, -9);
		higeR.lineTo( -36, -9);
		higeR.moveTo( -16, -5);
		higeR.lineTo( -35, -2);
		
		//ヒゲ（左）
		higeL = higeR.duplicateMovieClip("higeL", root.getNextHighestDepth());
		higeL._x = -1;
		higeL._y = 0;
		higeL._xscale = -100;
		
		//デバッグ用
		//var aa:MovieClip = root.createEmptyMovieClip("aa", root.getNextHighestDepth());
		//aa.attachMovie("a_mc", "a", 1);
		
	}
	
	//楕円を描く（target, 幅, 高さ）
	private function drawOval(m:MovieClip, x:Number, y:Number):Void {
		m.beginFill(0xFFFFFF, 100); 
		m.moveTo(0, y/2);
		m.curveTo(0+0.5, 0+0.5, x/2, 0);
		m.curveTo(x-0.5, 0+0.5, x, y/2);
		m.curveTo(x-0.5, y-0.5, x/2, y);
		m.curveTo(0+0.5, y-0.5, 0, y/2);	
		m.endFill();
	}
	
	//色を変えるメソッド
	public function changeColor(n:Number ):Void {
		var r:Number = ( n & 0xff0000 ) >> 16;
		var g:Number = ( n & 0xff00 ) >> 8;
		var b:Number = ( n & 0xff );
		
		var ct:ColorTransform = new ColorTransform(0, 0, 0, 1.100, r, g, b, 0);
		head.transform.colorTransform = ct;
	}
	
	//色を変えるsetter
	public function set _color(n:Number ):Void {
		var r:Number = ( n & 0xff0000 ) >> 16;
		var g:Number = ( n & 0xff00 ) >> 8;
		var b:Number = ( n & 0xff );
		
		var ct:ColorTransform = new ColorTransform(0, 0, 0, 1.100, r, g, b, 0);
		head.transform.colorTransform = ct;
	}
	
}