import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flame/input.dart';

import 'components/bird.dart';
import 'components/ground.dart';
import 'components/pipe.dart';

class FlappyGame extends FlameGame with HasCollisionDetection, TapDetector {
  late Bird bird;

  @override
  Future<void> onLoad() async {
    // Thêm nền
    add(
      SpriteComponent()
        ..sprite = await Sprite.load('background.png')
        ..size = size,
    );

    // Thêm nhân vật chính
    bird = Bird();
    add(bird);

    // Thêm đất
    add(Ground());

    // Thêm ống nước
    add(Pipe());

    return super.onLoad();
  }

  @override
  void onTap() {
    bird.jump(); // Nhảy khi nhấn màn hình
  }
}
