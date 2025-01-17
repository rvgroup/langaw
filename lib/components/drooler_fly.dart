import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:langaw/components/fly.dart';
import 'package:langaw/langaw_game.dart';

class DroolerFly extends Fly {
  @override
  double get speed => game.tileSize! * 1.5;

  DroolerFly(LangawGame game, double x, double y) : super(game) {
    resize(x: x, y: y);
    flyingSprite = <Sprite>[];
    flyingSprite!.add(Sprite('flies/drooler-fly-1.png'));
    flyingSprite!.add(Sprite('flies/drooler-fly-2.png'));
    deadSprite = Sprite('flies/drooler-fly-dead.png');
  }

  @override
  void resize({double? x, double? y}) {
    x ??= (flyRect?.left) ?? 0;
    y ??= (flyRect?.top) ?? 0;
    flyRect = Rect.fromLTWH(x, y, game.tileSize! * 1, game.tileSize! * 1);
    super.resize();
  }
}
