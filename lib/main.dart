import 'package:flutter/material.dart';

// a) Abstract class Vehicle
abstract class Vehicle {
  // c) Encapsulated variable
  int _speed = 0;

  void setSpeed(int speed) {
    _speed = speed;
  }

  void move(); // Abstract method
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


