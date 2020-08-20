import 'package:robot_simulator/orientation.dart';
import 'package:robot_simulator/position.dart';

const left = {
  Orientation.north: Orientation.west,
  Orientation.west: Orientation.south,
  Orientation.south: Orientation.east,
  Orientation.east: Orientation.north
};

const right = {
  Orientation.north: Orientation.east,
  Orientation.east: Orientation.south,
  Orientation.south: Orientation.west,
  Orientation.west: Orientation.north
};

const vectors = {
  Orientation.north: [0, 1],
  Orientation.east: [1, 0],
  Orientation.south: [0, -1],
  Orientation.west: [-1, 0]
};

class Robot {
  Position position;
  Orientation orientation;
  Robot(this.position, this.orientation);

  move(String text) {
    List<String> commands = text.split('');
    for (String command in commands) {
      if (command == 'R') this.orientation = right[this.orientation];
      else if (command == 'L') this.orientation = left[this.orientation];
      else if (command == 'A') {
        List<int> vector = vectors[this.orientation];
        this.position.x += vector[0];
        this.position.y += vector[1];
      }
    }
  }
}
