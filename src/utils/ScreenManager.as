package utils
{
    import flash.utils.Dictionary;
    import flash.display.Sprite;
    
    import screens.MenuScreen;
    
    import utils.ScreenEvent;

    public class ScreenManager extends Sprite
    {
        private static var ScreenDict:Dictionary = new Dictionary();
        
        public function ScreenManager()
        {
            transition(new ScreenEvent(ScreenEvent.TRANSITION, null, MenuScreen));
        }
        
        public function transition(evt:ScreenEvent):void{
            if(!ScreenDict[evt.newScreen]){
                ScreenDict[evt.newScreen] = new evt.newScreen();
                addChild(ScreenDict[evt.newScreen]);
            }
        }
    }
}