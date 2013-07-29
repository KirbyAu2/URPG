package screens
{
    import flash.display.Bitmap;
    import flash.display.Sprite;

    public class MenuScreen extends Sprite
    {
        [Embed(source='../../assets/backgrounds/loadingScreen_small.png')]
        private var backgroundClass:Class;
        private var background:Bitmap;
        
        public function MenuScreen()
        {
            background = new backgroundClass();
            addChild(background);
            trace("hey!");
        }
    }
}