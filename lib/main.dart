// a) Abstract class Vehicle
abstract class Vehicle {
  int _speed = 0; // c) Encapsulated variable

  void setSpeed(int speed) {
    _speed = speed;
  }

  void move(); 
}

// b) Subclass Car
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

// d) Main function
void main() {
  Car myCar = Car();
  myCar.setSpeed(80);
  myCar.move();
}
