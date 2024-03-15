void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  for (var details in fruits) {
    displayFruitsDetails(
      name: details['name'].toString(),
      color: details['color'].toString(),
      price: details['price'],
    );
  }
  print("Fruit Details After Applying 10% Discount:");
  for (var afterDiscount in fruits) {
    applyPriceDiscount(
      name: afterDiscount['name'].toString(),
      color: afterDiscount['color'].toString(),
      price: afterDiscount['price'],
    );
  }
}

void displayFruitsDetails({required String name, required String color, required double price}) {
  print("Name: $name, Color: $color, Price: \$${price}");
}

void applyPriceDiscount({required String name, required String color, required double price}){
  print("Name: $name, Color: $color, Price: \$${price-(price*10/100)}");

}
