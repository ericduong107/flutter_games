import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Ground extends SpriteComponent with CollisionCallbacks {
  Ground() : super(size: Vector2(800, 100));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('ground.png');
    position = Vector2(0, 500);
    add(RectangleHitbox()); // Va chạm
  }
}
