/// This file implements a practical, multi-class Object-Oriented Programming (OOP) model 
/// for a basic shopping system, showcasing how classes interact.
///
/// It showcases:
/// - **Class Collaboration:** The 'ShoppingCart' class manages a list of 'Product' objects.
/// - **Optional Named Parameters:** The 'Product' constructor uses '{clubcardItem = false}' 
///   for flexibility.
/// - **Discount Logic:** The 'discountedPrice' method modifies the product's state (price) 
///   based on a condition.
/// - **List Aggregation:** The 'addProd' method updates the total cost, aggregating data 
///   from all managed Product objects.
/// - **Custom Constructor:** The 'ShoppingCart' constructor correctly handles a nullable 
///   list parameter using the null-aware operator '?? []'.

class Product{
  String name;
  double price;
  bool clubcardItem;
  Product(this.name, this.price, {this.clubcardItem = false});

  void discountedPrice(){
    if(clubcardItem == true){
      price = price - 15 / 100 * price;
    }
  }

  String toString() => '$name: £ $price';
}

class ShoppingCart{
  bool haveCard;
  List<Product> products = [];
  double total = 0;
  //ShoppingCart({this.products = [], this.haveCard = false});
  ShoppingCart({List<Product>? products, this.haveCard = false})
      : products = products ?? [];

  void addProd(Product product){
    product.discountedPrice();
    products.add(product);
    total += product.price;
  }

  String toString(){
  String output = 'Shopping cart:\n';
  for (int i = 0; i < products.length; i++){
    output += '${products[i].toString()}\n';
  }
  output += 'Total: £${total.toStringAsFixed(2)}';
  return output;}
}

void main(){
  Product p1 = Product('Washing-up liquid', 1.5);
  Product p2 = Product('Frozen peas', 1.75, clubcardItem: true);
  Product p3 = Product('Sausages', 3.5, clubcardItem: true);
  ShoppingCart cart = ShoppingCart();
  cart.addProd(p1);
  cart.addProd(p2);
  cart.addProd(p3);
  print(cart);
}