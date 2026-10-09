import 'dart:io';

void main() {
  print('====================================');
  print(' PIZZA ORDER CALCULATOR (CONTINUOUS)');
  print('====================================');
  print('Prices: Small (S) = \$5 | Medium (M) = \$7 | Large (L) = \$10');

  while (true) {
    stdout.write('\nEnter pizza size (S, M, L) or Q to quit: ');
    String? sizeInput = stdin.readLineSync();
    if (sizeInput == null) continue;

    String size = sizeInput.trim().toUpperCase();

    if (size == 'Q') {
      print('Thank you for ordering! Please come again.');
      break;
    }

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
        print('Invalid size! Please enter S, M, L, or Q.');
        continue;
    }

    stdout.write('Enter quantity: ');
    String? qtyInput = stdin.readLineSync();
    int? quantity = int.tryParse(qtyInput ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity! Please enter a positive integer.');
      continue;
    }

    int totalPayment = pricePerPizza * quantity;

    print('------------------------------------');
    print('Total Payment: \$$totalPayment USD');
    print('------------------------------------');
  }
}