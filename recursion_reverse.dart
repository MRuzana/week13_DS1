String reverseString(String str) {
  if (str.isEmpty) {
    return "";
  } else {
    return reverseString(str.substring(1)) + str[0]; 
  }
}

void main() {
  String originalString = "Hello";
  String reversedString = reverseString(originalString);
  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}