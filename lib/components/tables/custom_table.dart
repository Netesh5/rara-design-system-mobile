import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
    this.frozenColumn,
    this.columnWidthMode,
    required this.source,
    required this.columns,
    this.columnWidthCalculationRange,
    this.gridLinesVisibility,
    this.headerGridLinesVisibility,
    this.allowSorting = false,
    this.allowFiltering = false,
    this.onTap,
    this.allowPullToRefersh = false,
  });
  final int? frozenColumn;
  final ColumnWidthMode? columnWidthMode;
  final GridLinesVisibility? gridLinesVisibility;
  final GridLinesVisibility? headerGridLinesVisibility;
  final ColumnWidthCalculationRange? columnWidthCalculationRange;
  final bool allowSorting;
  final bool allowFiltering;
  final bool allowPullToRefersh;
  final BuildDataSource source;
  final List<String> columns;
  final Function(DataGridCellTapDetails)? onTap;

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      allowFiltering: true,
      allowPullToRefresh: allowPullToRefersh,
      allowSorting: allowSorting,
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
      onCellTap: onTap,
      columns: List.generate(
        columns.length,
        (index) {
          return GridColumn(
            columnName: columns[index],
            label: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                columns[index],
              ),
            ),
          );
        },
      ),
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
          alignment:
              // (data.last.getCells().last.columnName == dataGridCell.columnName)
              // ?
              Alignment.center,
          //   : Alignment.centerLeft,
          padding: const EdgeInsets.all(16.0),
          child: Text(
            dataGridCell.value.toString(),
          ),
        );
      }).toList(),
    );
  }

  @override
  Future<void> handleRefresh() async {
    await Future.delayed(const Duration(seconds: 5));
    notifyListeners();
  }
}
