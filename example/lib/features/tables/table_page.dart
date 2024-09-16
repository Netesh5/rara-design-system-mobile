import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Customizable',
  type: SfDataGrid,
)
buildTable(BuildContext context) {
  // return SfDataGrid(
  //   // frozenColumnsCount: 1,
  //   // columnWidthMode: isLargeScreen(context)
  //   //     ? ColumnWidthMode.fill
  //   //     : ColumnWidthMode.fitByCellValue,
  //   // gridLinesVisibility: GridLinesVisibility.both,
  //   // headerGridLinesVisibility: GridLinesVisibility.both,
  //   // columnWidthCalculationRange: ColumnWidthCalculationRange.visibleRows,
  //   source: BuildDataSource(
  //       data: getEmployees()
  //       .map<DataGridRow>((e) => DataGridRow(
  //               cells: List.generate(getEmployees().length, (index) {
  //             return DataGridCell(columnName: columnName[index], value: e.);
  //           })))
  //       .toList(),

  //   // columns:List.generate(getEmployees().length, (index) {
  //   //   return GridColumn(
  //   //       columnName: columnName[index],
  //   //       label: Container(
  //   //           padding: const EdgeInsets.all(16.0),
  //   //           alignment: Alignment.centerRight,
  //   //           child: const columnName[index],),);
  //   // })
  // );
}

class BuildDataSource extends DataGridSource {
  BuildDataSource({required this.data});

  List<DataGridRow> data;

  @override
  List<DataGridRow> get rows => data;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        alignment: (dataGridCell.columnName == 'Address')
            ? Alignment.centerRight
            : Alignment.centerLeft,
        padding: const EdgeInsets.all(16.0),
        child: Text(dataGridCell.value.toString()),
      );
    }).toList());
  }
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
