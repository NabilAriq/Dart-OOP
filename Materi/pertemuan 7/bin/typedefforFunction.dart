typedef IntOperation = int Function(int a, int b);

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;

void applyOperation(int x, int y, IntOperation op){
  print(op(x, y));
}

void main(List<String> args) {
  applyOperation(10, 5, add);
  applyOperation(10, 5, subtract);
  applyOperation(10, 5, multiply);

  IntOperation myOp = add;
  print(myOp(3, 7));
}