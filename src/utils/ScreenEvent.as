package utils
{
    import flash.events.Event;
    
    public class ScreenEvent extends Event
    {
        public static var TRANSITION:String = "Transition";
        public var origin:Class;
        public var newScreen:Class;
        
        /**
        * @param evt: type of transition - only use static variables
        * @param o: current screen
        * @param n: new screen
         */
        public function ScreenEvent(evt:String, o:Class = null, n:Class = null)
        {
            super(evt);
            origin = o;
            newScreen = n;
        }
    }
}