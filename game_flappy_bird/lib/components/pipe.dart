import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Pipe extends SpriteComponent with CollisionCallbacks {
  Pipe() : super(size: Vector2(70, 400));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('pipe.png');
    position = Vector2(400, 300);
    add(RectangleHitbox()); // Va chạm
  }

  @override
  void update(double dt) {
    position.x -= 100 * dt; // Di chuyển ống nước

    if (position.x < -size.x) {
      position.x = 400; // Reset vị trí
    }
  }
}
