import 'package:flutter/material.dart';
import '../Model/InfoEmp.dart';

class Employ extends StatefulWidget {
  const Employ({Key? key}) : super(key: key);
  @override
  State<Employ> createState() => _EmployState();
}

class _EmployState extends State<Employ> {
  TextEditingController nameController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController hireDateController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController salaryController = TextEditingController();

  void addEmployee() {
    setState(() {
      String name = nameController.text;
      String imageUrl = imageUrlController.text;
      DateTime hireDate = DateTime.parse(hireDateController.text);
      String department = departmentController.text;
      double salary = double.parse(salaryController.text);

      Employee newEmployee = Employee(
        name: name,
        imageUrl: imageUrl,
        hireDate: hireDate,
        department: department,
        monthlySalary: salary,
      );

      employees.add(newEmployee);

      nameController.clear();
      imageUrlController.clear();
      hireDateController.clear();
      departmentController.clear();
      salaryController.clear();

    });
  }

  void editEmployee(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('تعديل معلومات الموظف'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: imageUrlController,
                  decoration: const InputDecoration(labelText: 'رابط الصورة'),
                ),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'الاسم'),
                ),
                TextField(
                  controller: hireDateController,
                  decoration: const InputDecoration(labelText: 'تاريخ التعيين'),
                ),
                TextField(
                  controller: departmentController,
                  decoration: const InputDecoration(labelText: 'القسم'),
                ),
                TextField(
                  controller: salaryController,
                  decoration: const InputDecoration(labelText: 'الراتب الشهري'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('إلغاء'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('حفظ'),
              onPressed: () {
                setState(() {
                  employees[index].name = nameController.text;
                  employees[index].imageUrl = imageUrlController.text;
                  employees[index].hireDate =
                      DateTime.parse(hireDateController.text);
                  employees[index].department = departmentController.text;
                  employees[index].monthlySalary =
                      double.parse(salaryController.text);

                  nameController.clear();
                  imageUrlController.clear();
                  hireDateController.clear();
                  departmentController.clear();
                  salaryController.clear();

                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('الموظفين'),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          return Dismissible(
              key: UniqueKey(),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(employees[index].imageUrl),
                  ),
                  title: Text(employees[index].name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'تاريخ التعيين: ${employees[index].hireDate.toString()}'),
                      Text('القسم: ${employees[index].department}'),
                      Text(
                          'الراتب الشهري: ${employees[index].monthlySalary.toString()}'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      editEmployee(index);
                    },
                  ),
                ),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('إضافة موظف جديد'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: imageUrlController,
                        decoration:
                            const InputDecoration(labelText: 'رابط الصورة'),
                      ),
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(labelText: 'الاسم'),
                      ),
                      TextField(
                        controller: hireDateController,
                        decoration:
                            const InputDecoration(labelText: 'تاريخ التعيين'),
                      ),
                      TextField(
                        controller: departmentController,
                        decoration: const InputDecoration(labelText: 'القسم'),
                      ),
                      TextField(
                        controller: salaryController,
                        decoration:
                            const InputDecoration(labelText: 'الراتب الشهري'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text('إلغاء'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('حفظ'),
                    onPressed: () {
                      addEmployee();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
