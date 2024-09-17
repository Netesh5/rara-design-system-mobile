import 'package:flutter/material.dart';
import 'package:rara_design_system/components/tables/custom_table.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Customizable', type: CustomTable)
CustomTable buildTable(BuildContext context) {
  return CustomTable(
    source: BuildDataSource(
        data: getEmployees()
            .map(
              (e) => DataGridRow(
                cells: [
                  DataGridCell<int>(columnName: e.id.toString(), value: e.id),
                  DataGridCell<String>(
                      columnName: e.name.toString(), value: e.name),
                  DataGridCell<String>(
                      columnName: e.designation.toString(),
                      value: e.designation),
                  DataGridCell<int>(
                      columnName: e.salary.toString(), value: e.salary),
                  DataGridCell<String>(
                      columnName: e.address.toString(), value: e.address),
                ],
              ),
            )
            .toList()),
    columns: const ["Id", "Name", "Desgination", "Address", "Salary"],
  );
}

List<Employee> getEmployees() {
  return [
    Employee(10001, 'James', 'Project Lead', 20000, "asdfasfasdf"),
    Employee(10002, 'Kathryn', 'Manager', 30000, "asdfasfasdf"),
    Employee(10003, 'Lara', 'Developer', 15000, "asdfasfasdf"),
    Employee(10004, 'Michael', 'Designer', 15000, "asdfasfasdf"),
    Employee(10005, 'Martin', 'Developer', 15000, "asdfasfasdf"),
    Employee(10006, 'Newberry', 'Developer', 15000, "asdfasfasdf"),
    Employee(10007, 'Balnc', 'Developer', 15000, "asdfasfasdf"),
    Employee(10008, 'Perry', 'Developer', 15000, "asdfasfasdf"),
    Employee(10009, 'Gable', 'Developer', 15000, "asdfasfasdf"),
    Employee(10010, 'Grimes', 'Developer', 15000, "asdfasfasdf"),
    Employee(10001, 'James', 'Project Lead', 20000, "asdfasfasdf"),
    Employee(10002, 'Kathryn', 'Manager', 30000, "asdfasfasdf"),
    Employee(10003, 'Lara', 'Developer', 15000, "asdfasfasdf"),
    Employee(10004, 'Michael', 'Designer', 15000, "asdfasfasdf"),
    Employee(10005, 'Martin', 'Developer', 15000, "asdfasfasdf"),
    Employee(10006, 'Newberry', 'Developer', 15000, "asdfasfasdf"),
    Employee(10007, 'Balnc', 'Developer', 15000, "asdfasfasdf"),
    Employee(10008, 'Perry asdasfasfasf adsfasfasdf', 'Developer', 15000,
        "asdfasfasdf"),
    Employee(10009, 'Gable', 'Developer', 15000, "asdfasfasdf"),
    Employee(10010, 'Grimes', 'Developer', 15000, "asdfasfasdf"),
    Employee(10001, 'James', 'Project Lead', 20000, "asdfasfasdf"),
    Employee(10002, 'Kathryn', 'Manager', 30000, "asdfasfasdf"),
    Employee(10003, 'Lara', 'Developer', 15000, "asdfasfasdf"),
    Employee(10004, 'Michael', 'Designer', 15000, "asdfasfasdf"),
    Employee(10005, 'Martin', 'Developer', 15000, "asdfasfasdf"),
    Employee(10006, 'Newberry', 'Developer', 15000, "asdfasfasdf"),
    Employee(10007, 'Balnc', 'Developer', 15000, "asdfasfasdf"),
    Employee(10008, 'Perry', 'Developer', 15000, "asdfasfasdf"),
    Employee(10009, 'Gable', 'Developer', 15000, "asdfasfasdf"),
    Employee(10010, 'Grimes', 'Developer', 15000, "asdfasfasdf")
  ];
}

class Employee {
  Employee(this.id, this.name, this.designation, this.salary, this.address);
  final int id;
  final String name;
  final String designation;
  final int salary;
  final String address;
}

isLargeScreen(BuildContext context) {
  final _width = MediaQuery.of(context).size.width;
  if (_width > 600) {
    return true;
  } else {
    return false;
  }
}
