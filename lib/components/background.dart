import 'dart:ffi';

class background extends SpriteComponent{
background()
}

@override
Future<Void> onLoad() async {
  await Flame.images.load();
  
}