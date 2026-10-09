import 'dart:io';

void main() {
  print('------------------------------------');
  print('    PIZZA ORDER CALCULATOR');
  print('------------------------------------');
  print('Prices:');
  print('  Small  (S) : \$5 USD');
  print('  Medium (M) : \$7 USD');
  print('  Large  (L) : \$10 USD');
  print('------------------------------------');

  stdout.write('Enter pizza size (S, M, L): ');
  String? sizeInput = stdin.readLineSync();
  String size = (sizeInput ?? '').trim().toUpperCase();

  int pricePerPizza = 0;

  switch (size) {
    case 'S':
      pricePerPizza = 5;
      break;
    case 'M':
      pricePerPizza = 7;
      break;
    case 'L':
      pricePerPizza = 10;
      break;
    default:
      print('Invalid size.');
      return;
  }

  stdout.write('Enter quantity: ');
  String? qtyInput = stdin.readLineSync();
  int? quantity = int.tryParse(qtyInput ?? '');

  if (quantity == null || quantity <= 0) {
    print('Invalid quantity.');
    return;
  }

  int totalPayment = pricePerPizza * quantity;

  print('------------------------------------');
  print('ORDER SUMMARY:');
  print('Size        : $size');
  print('Quantity    : $quantity');
  print('Total Price : \$$totalPayment USD');
  print('------------------------------------');
}