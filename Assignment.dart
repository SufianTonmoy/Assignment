class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;

  void drive(double miles) {
    milesDriven += miles;
  }
  double getMilesDriven() {
    return milesDriven;
  }
  String getBrand() {
    return brand;
  }
  String getModel() {
    return model;
  }
  int getYear() {
    return year;
  }
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }
}
void main() {
  Car car_1 = Car('Ford', 'Edge', 2000, 10500);
  Car car_2 = Car('BMW', '3 Series', 2005, 20400);
  Car car_3 = Car('Audi', 'A3', 2010, 30100);

  car_1.drive(100);
  car_2.drive(300);
  car_3.drive(500);

  print('Car_1= ${car_1.getBrand()} ${car_1.getModel()}, Year= ${car_1.getYear()}, Miles Driven= ${car_1.getMilesDriven()}, Age= ${car_1.getAge()}');
  print('Car_2= ${car_2.getBrand()} ${car_2.getModel()}, Year= ${car_2.getYear()}, Miles Driven= ${car_2.getMilesDriven()}, Age= ${car_2.getAge()}');
  print('Car_3= ${car_3.getBrand()} ${car_3.getModel()}, Year= ${car_3.getYear()}, Miles Driven= ${car_3.getMilesDriven()}, Age= ${car_3.getAge()}');

  print('Total number of cars created by the objects: ${Car.numberOfCars}');
}
