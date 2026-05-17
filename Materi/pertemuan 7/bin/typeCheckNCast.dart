// Tyoe Check (IS)
// // Mengembalikan true jika sebuah objek merupakan instance dari tipe yang disebutkan.

// abstract class Animal {
//   String name;
//   Animal(this.name);
//   void makeSound();
// }

// class Cat extends Animal {
//   Cat(String name) : super(name);
//   @override
//   void makeSound() => print("$name : Meong!");
//   void purr() => print("$name : Purrr...");
// }

// class Dog extends Animal {
//   Dog(String name) : super(name);
//   @override
//   void makeSound() => print("$name : Guk!");
//   void fetch() => print("$name mengambil bola");
// }

// void main(List<String> args) {
//   List<Animal> animals = [Cat("Kitty"), Dog("Rex"), Cat("Luna")];

//   for (var animal in animals) {
//     animal.makeSound();
//     if (animal is Cat) {
//       animal.purr();
//     } else if (animal is Dog) {
//       animal.fetch();
//     }
//   }
// }

// Type Cast (AS)
// Digunakan untuk mengonversi objek ke tipe yang lebih spesifik secara eksplisit.

abstract class Animal {
  String name;
  Animal(this.name);
  void makeSound();
}

class Cat extends Animal {
  Cat(String name) : super(name);
  @override
  void makeSound() => print("$name : Meong!");
  void purr() => print("$name : Purrr...");
}

class Dog extends Animal {
  Dog(String name) : super(name);
  @override
  void makeSound() => print("$name : Guk!");
  void fetch() => print("$name mengambil bola");
}

void main(List<String> args) {
  List<Animal> animals = [Cat("Kitty"), Dog("Rex"), Cat("Luna")];

  for (var animal in animals) {
    animal.makeSound();
    
    // 1. Contoh Type Cast untuk Cat
    if (animal is Cat) {
      // Mengubah tipe 'animal' secara eksplisit menjadi 'Cat' menggunakan 'as'
      Cat myCat = animal as Cat; 
      myCat.purr();
    } 
    
    // 2. Contoh Type Cast langsung (Inline) untuk Dog
    else if (animal is Dog) {
      // Melakukan casting dan langsung memanggil method milik Dog dalam satu baris
      (animal as Dog).fetch();
    }
  }

  print("\n--- Contoh Bahaya 'as' Tanpa Pengecekan 'is' ---");
  
  // Mengambil elemen pertama (Kitty yang merupakan objek Cat)
  Animal hewanAcak = animals[0]; 
  
  try {
    // Ini akan menyebabkan error karena hewanAcak adalah Cat, bukan Dog
    Dog paksaDog = hewanAcak as Dog; 
    paksaDog.fetch();
  } catch (e) {
    print("Error tertangkap: $e"); 
    // Output: TypeError: Instance of 'Cat': type 'Cat' is not a subtype of type 'Dog'
  }
}



