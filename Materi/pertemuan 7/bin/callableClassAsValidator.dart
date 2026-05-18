class EmailValidator {
  bool call(String email) {
    return email.contains("@") && email.contains("."); // validator by contains
  }
}

class RangeValidator {
  int min, max;
  RangeValidator(this.min, this.max);
  
  bool call(int value) {
    return value >= min && value <= max;
  }
}

void main(List<String> args) {
  EmailValidator isValidEmail = EmailValidator();
  RangeValidator isValidAge = RangeValidator(17, 60);

  print(isValidEmail("budi@gmail.com"));
  print(isValidEmail("bukan-email"));

  print(isValidAge(25));
  print(isValidAge(10));
}