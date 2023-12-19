class Employee {
  String name;
  String imageUrl;
  DateTime hireDate;
  String department;
  double monthlySalary;

  Employee({
    required this.name,
    required this.imageUrl,
    required this.hireDate,
    required this.department,
    required this.monthlySalary,
  });
}

List<Employee> employees = [
  Employee(
    name: 'محمد',
    imageUrl: 'images/profile.jpg',
    hireDate: DateTime(2021, 10, 1),
    department: 'المبيعات',
    monthlySalary: 5000,
  ),
  Employee(
    name: 'أحمد',
    imageUrl: 'images/profile.jpg',
    hireDate: DateTime(2022, 3, 15),
    department: 'التسويق',
    monthlySalary: 6000,
  ),
  Employee(
    name: 'سارة',
    imageUrl: 'images/profile.jpg',
    hireDate: DateTime(2022, 6, 20),
    department: 'الموارد البشرية',
    monthlySalary: 7000,
  ),
];

