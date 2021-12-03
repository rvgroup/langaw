import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:langaw/langaw_game.dart';

class ScoreDisplay {
  final LangawGame game;
  TextPainter? painter;
  Offset? position;

  ScoreDisplay(this.game) {
    painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    position = Offset.zero;
  }

  void render(Canvas c) {
    painter!.paint(c, position!);
  }

  void update(double t) {
    if ((painter!.text ?? '') != game.score.toString()) {
      resize();
    }
  }

  void resize() {
    painter!.text = TextSpan(
      text: game.score.toString(),
      style: TextStyle(
        color: const Color(0xffffffff),
        fontSize: game.tileSize! * 2,
        shadows: <Shadow>[
          Shadow(
            blurRadius: game.tileSize! * .25,
            color: const Color(0xff000000),
            offset: const Offset(3, 3),
          ),
        ],
      ),
    );
    painter!.layout();
    position = Offset(
      (game.screenSize!.width / 2) - (painter!.width / 2),
      (game.screenSize!.height * .25) - (painter!.height / 2),
    );
  }
}
