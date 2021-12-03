import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:langaw/components/fly.dart';
import 'package:langaw/langaw_game.dart';

class HouseFly extends Fly {
  HouseFly(LangawGame game, double x, double y) : super(game) {
    resize(x: x, y: y);
    flyingSprite = <Sprite>[];
    flyingSprite!.add(Sprite('flies/house-fly-1.png'));
    flyingSprite!.add(Sprite('flies/house-fly-2.png'));
    deadSprite = Sprite('flies/house-fly-dead.png');
  }

  @override
  void resize({double? x, double? y}) {
    x ??= flyRect!.left;
    y ??= flyRect!.top;
    flyRect = Rect.fromLTWH(x, y, game.tileSize! * 1, game.tileSize! * 1);
    super.resize();
  }
}
