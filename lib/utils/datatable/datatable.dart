import 'package:flutter/material.dart';
import 'package:paginatedemo_app/model/data_notifier.dart';
import 'package:paginatedemo_app/model/user_model.dart';

import 'package:provider/provider.dart';

import 'constants.dart';
import 'data_table_source.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = context.watch<UserDataNotifier>();
    final _model = _provider.userModel;

    if (_model.isEmpty) {
      return const SizedBox.shrink();
    }
    final _dtSource = UserDataTableSource(
      //  onRowSelect: (index) => _showDetails(context, _model[index]),
      userData: _model,
    );
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: PaginatedDataTable(
          columns: _colGen(_dtSource, _provider),
          source: _dtSource, columnSpacing: 150,
          // onRowsPerPageChanged: (index) => _provider.rowsPerPage = index!,
          rowsPerPage: _provider.rowsPerPage,
          sortAscending: _provider.sortAscending,
          sortColumnIndex: _provider.sortColumnIndex,
        ),
      ),
    );
  }

  List<DataColumn> _colGen(
    UserDataTableSource _src,
    UserDataNotifier _provider,
  ) =>
      [
        DataColumn(
          label: Text(
            DataTableConstants.colReciets,
          ),
          // numeric: true,
          tooltip: DataTableConstants.colReciets,
          onSort: (colIndex, asc) {
            _sort<String>(
                (user) => '${user.receipt}', colIndex, asc, _src, _provider);
          },
        ),
        DataColumn(
          label: Text(DataTableConstants.colDate),
          tooltip: DataTableConstants.colDate,
          numeric: true,
          onSort: (colIndex, asc) {
            _sort<String>(
                (user) => '${user.date}', colIndex, asc, _src, _provider);
          },
        ),
        DataColumn(
          label: Text(DataTableConstants.colEmployee),
          tooltip: DataTableConstants.colEmployee,
          onSort: (colIndex, asc) {
            _sort<String>(
                (user) => '${user.employee}', colIndex, asc, _src, _provider);
          },
        ),
        DataColumn(
          label: Text(DataTableConstants.colCustomer),
          tooltip: DataTableConstants.colCustomer,
          onSort: (colIndex, asc) {
            _sort<String>(
                (user) => '${user.customer}', colIndex, asc, _src, _provider);
          },
        ),
        DataColumn(
          label: Text(DataTableConstants.colType),
          tooltip: DataTableConstants.colType,
          onSort: (colIndex, asc) {
            _sort<String>(
                (user) => '${user.type}', colIndex, asc, _src, _provider);
          },
        ),
        DataColumn(
          label: Text(DataTableConstants.colTotal),
          tooltip: DataTableConstants.colTotal,
          onSort: (colIndex, asc) {
            _sort<String>(
                (user) => '${user.total}', colIndex, asc, _src, _provider);
          },
        ),
      ];

  void _sort<T>(
    Comparable<T> Function(UserModel user) getField,
    int colIndex,
    bool asc,
    UserDataTableSource _src,
    UserDataNotifier _provider,
  ) {
    _src.sort<T>(getField, asc);
    _provider.sortAscending = asc;
    _provider.sortColumnIndex = colIndex;
  }
}
