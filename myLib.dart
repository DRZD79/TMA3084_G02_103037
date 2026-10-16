//Employee class used by main.dart

class Employee {
  String name;
  double basicSalary;
  double overtimeHours;
  double overtimeRate;

  Employee(this.name, this.basicSalary, this.overtimeHours, this.overtimeRate);

  // Calculate overtime payment
  double calculateOvertimePay() {
    return overtimeHours * overtimeRate;
  }

  // Calculate total salary (basic salary + overtime pay)
  double calculateTotalSalary() {
    return basicSalary + calculateOvertimePay();
  }
}
