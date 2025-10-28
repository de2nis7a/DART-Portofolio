/// This file contains functions demonstrating fundamental computer science algorithms.
/// 'isPrime' checks for primality using an optimized loop (i*i <= n),
/// and 'gcd' calculates the Greatest Common Divisor using the recursive Euclidean Algorithm,
/// which is a key demonstration of recursive programming in Dart.

void main() {
  int number = 29;
  if (isPrime(number)) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}

bool isPrime(int n){
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i += 1){
    if(n % i == 0) {return false;
  }
  }
  return true;
}

int gcd(int n1, int n2){
  if(n1 == n2){
    return n1;
  }
  else if(n1 > n2){
    return(gcd(n2, (n1 - n2)));
  }
  else{
    return(gcd(n1, (n2 - n1)));
  }
}