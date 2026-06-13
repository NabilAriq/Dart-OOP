enum Planet {
  mercury(3.303e+23, 2.4397e6),
  venus(4.869e+24, 6.0518e6),
  earth(5.976e+24, 6.37814e6),
  mars(6.421e+23, 3.3972e6);
  
  // Field
  final double mass;   
  final double radius; 

  // Constructor enum (wajib const)
  const Planet(this.mass, this.radius);

  // Method
  static const double G = 6.67430e-11; 
  double get surfaceGravity => G * mass / (radius * radius);
  double weightOn(double otherMass) => otherMass * surfaceGravity;
}
  
void main() {
  double myWeightOnEarth = 70.0; 

  print('Berat saya di setiap planet:');

  for (var planet in Planet.values) {
    double weight = planet.weightOn(myWeightOnEarth);
    print(' ${planet.name}: ${weight.toStringAsFixed(2)} N');
  }
}