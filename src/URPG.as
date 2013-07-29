package
{
	import flash.desktop.NativeApplication;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.system.Capabilities;
	
	import utils.ScreenManager;
	
	public class URPG extends Sprite
	{
        public static const HIGH_RES:Boolean = Capabilities.screenDPI>132;
        //Get descriptors from Main-app.xml
        public static var appXML:XML =  NativeApplication.nativeApplication.applicationDescriptor;
        public static var ns:Namespace = appXML.namespace();
        public static var versionNumber:String = String(appXML.ns::versionNumber);
        
        public static var screenManager:ScreenManager = new ScreenManager();
        
        [Embed(source='../assets/backgrounds/loadingScreen.png')]
        private var loadingScreen:Class;
        public var loadingImage:Bitmap;
        
		public function URPG()
		{
			super();
            screenManager.x = screenManager.y = 0;
            addChild(screenManager);
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
            
            loadingImage = (HIGH_RES)?new loadingScreen:new loadingScreen;
            addEventListener(MouseEvent.MOUSE_DOWN, function(evt:MouseEvent):void{
            });
            
            //addChild(loadingImage);
		}
	}
}