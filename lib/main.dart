import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:my_flame_project/game/flappybird.dart';

void main() {
  final game=flappybird();
  runApp(GameWidget(game: game));
}