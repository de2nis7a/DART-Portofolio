/// This file implements a function that increases the price of every product 
/// in a Map by a fixed percentage (10%).
///
/// It demonstrates:
/// - **Map Manipulation:** Iterating over the keys of a Map<String, double>.
/// - **In-Place Modification:** Updating the value associated with a key directly 
///   within the original Map object (modification by reference).
/// - **Business Logic:** Performing a simple percentage calculation (Price + 10%).

Map<String, double> priceRise(Map<String, double> productPrices) {
  for(String product in productPrices.keys){
    double price = productPrices[product]!; 
    productPrices[product] = price + 10 / 100 * price;
  }
  return productPrices;
}

void main(){
  print(priceRise({'p1' : 11, 'p2' : 6, 'p3' : 4}));
}

