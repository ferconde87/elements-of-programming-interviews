#include <bits/stdc++.h>

using namespace std;

int count_bits(int number){
  int result = 0;
  while(number){
    result += number & 1;
    number >>= 1;
  }
  return result;
}

// pre: number > 0
string print_bits(int number){
  string result;
  while(number > 0){
    result += (number & 1) ? "1" : "0";
    number >>= 1;
  }
  reverse(result.begin(), result.end());
  return result;
}

int bits_to_number(string & str){
  int exp = str.size()-1;
  int result = 0;
  for(char c : str){
    if(c == '1'){
      result += 1 << exp;
    }
    exp--;
  }
  return result;
}

string binary_representation(int x){
  char sign = '0';
  if(x < 0){
    sign = '1';
    x *= -1;
  }
  string result = "";
  while(x > 0){
    result += (x & 1) ? "1" : "0";
    x >>= 1;
  }
  string first_part(31-result.size(), '0');
  first_part.insert(first_part.begin(), sign);
  reverse(result.begin(), result.end());
  return first_part + result;
}

void basic_math(){
  int x = -34.5;
  int y = 50;
  int a = 4;
  int b = 3;
  cout << "abs(" << x << ") = " << abs(x) << endl;
  cout << "min(" << x << ", " << y << ") = " << min(x,y) << endl;
  cout << "max(" << x << ", " << y << ") = " << max(x,y) << endl;
  cout << "pow(" << x << ", " << y << ") = " << pow(x,y) << endl;
  cout << "sqrt(" << a << ") = " << sqrt(a) << endl;
  cout << "sqrt(" << b << ") = " << sqrt(b) << endl;
}


int main(){
  int number = 27;
  cout << "Count bits of " << number << " is " << count_bits(number) << endl;
  cout << "Binary representation of " << number << " is " << print_bits(number) << endl;
  number = 1456;
  cout << "Binary representation of " << number << " is " << print_bits(number) << endl;
  string str = "10110110000";
  cout << "String bits to number: from " <<  str << " to number " << bits_to_number(str) << endl;
  number = -16;
  cout << "Binary representation of " << number << " is " << binary_representation(number) << endl;
  number = -4;
  cout << "Binary representation of " << number << " is " << binary_representation(number) << endl;

  basic_math();
  return 0;
}
