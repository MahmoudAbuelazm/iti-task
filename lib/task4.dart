abstract class Serializable {
  Map<String, dynamic> toJson();
}

class User implements Serializable {
  final String name;
  final int age;
  final int phoneNumber;

  User(this.name, this.age, this.phoneNumber);

  @override
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'Phone Number': phoneNumber};
  }
}

class Product implements Serializable {
  final String productName;
  final double price;

  Product(this.productName, this.price);

  @override
  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'price': price,
    };
  }
}

void main() {
  final user = User('John Doe', 30, 1234567890);
  final product = Product( 'Laptop', 1000.0);

  print('User JSON: ${user.toJson()}');
  print('Product JSON: ${product.toJson()}');
}