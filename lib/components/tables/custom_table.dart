import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomTable extends StatelessWidget {
  const CustomTable(
      {super.key,
      this.frozenColumn,
      this.columnWidthMode,
      required this.source,
      required this.columns,
      this.columnWidthCalculationRange,
      this.gridLinesVisibility,
      this.headerGridLinesVisibility});
  final int? frozenColumn;
  final ColumnWidthMode? columnWidthMode;
  final GridLinesVisibility? gridLinesVisibility;
  final GridLinesVisibility? headerGridLinesVisibility;
  final ColumnWidthCalculationRange? columnWidthCalculationRange;

  final BuildDataSource source;
  final List<GridColumn> columns;

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      frozenColumnsCount: frozenColumn ?? 1,
      columnWidthMode: columnWidthMode ??
          (isLargeScreen(context)
              ? ColumnWidthMode.fill
              : ColumnWidthMode.fitByCellValue),
      gridLinesVisibility: gridLinesVisibility ?? GridLinesVisibility.both,
      headerGridLinesVisibility:
          headerGridLinesVisibility ?? GridLinesVisibility.both,
      columnWidthCalculationRange: ColumnWidthCalculationRange.visibleRows,
      source: source,
      columns: columns,
    );
  }
}

isLargeScreen(BuildContext context) {
  final _width = MediaQuery.of(context).size.width;
  if (_width > 600) {
    return true;
  } else {
    return false;
  }
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
        alignment: (dataGridCell.columnName == dataGridCell.value)
            ? Alignment.centerRight
            : Alignment.centerLeft,
        padding: const EdgeInsets.all(16.0),
        child: Text(dataGridCell.value.toString()),
      );
    }).toList());
  }
}
