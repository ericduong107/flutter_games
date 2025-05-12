import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Bird extends SpriteComponent with CollisionCallbacks {
  Vector2 velocity = Vector2(0, -300); // Tốc độ nhảy

  Bird() : super(size: Vector2(50, 50));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('bird.png');
    position = Vector2(100, 300);
    add(CircleHitbox()); //Va chạm
  }

  @override
  void update(double dt) {
    velocity.y += 800 * dt; // Trọng lực
    position += velocity * dt;

    // Giữ trong màn hình
    if (position.y > 600) {
      position.y = 600;
      velocity.y = 0;
    }
  }

  void jump() {
    velocity.y = -300; // Nhảy lên
  }
}
