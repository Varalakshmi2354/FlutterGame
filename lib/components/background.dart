import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappy_bird_game/game/assets.dart';
import 'package:flappy_bird_game/game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    await _loadBackground();
  }

  Future<void> _loadBackground() async {
    final background = await Flame.images.load(Assets.backgorund);
    size = gameRef.size;
    sprite = Sprite(background);
  }

  @override
  void update(double dt) {
    super.update(dt);
    updateBackground(); // Call updateBackground during the game's update phase
  }

  void updateBackground() async {
    final score = gameRef.getScore();

    if (score >= 2) {
      final newBackground = await Flame.images.load(Assets.newBackground);
      size = gameRef.size;
      sprite = Sprite(newBackground);
    }
  }
   void resetBackground() async {
    await _loadBackground();
  }
}

