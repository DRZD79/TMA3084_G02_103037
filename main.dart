// Creates employee calculates overtime pay and prints  total salary

import 'myLib.dart';

void main() {
  // Sample values
  Employee emp = Employee('Zur Aina Faqihah', 5500.0, 20, 28.5);

  double overtimePay = emp.calculateOvertimePay();
  double totalSalary = emp.calculateTotalSalary();

  print('Employee Name   = ${emp.name}');
  print('Basic Salary    = \$${emp.basicSalary} USD');
  print('Overtime Pay    = \$$overtimePay USD');
  print('Total Salary = \$$totalSalary USD');
}
