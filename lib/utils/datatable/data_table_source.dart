import 'package:flutter/material.dart';
import 'package:paginatedemo_app/model/user_model.dart';

typedef OnRowSelect = void Function(int index);

class UserDataTableSource extends DataTableSource {
  final List<UserModel> _userData;
  // final OnRowSelect onRowSelect;

  UserDataTableSource({
    required List<UserModel> userData,
    //required this.onRowSelect,
  })  : _userData = userData,
        assert(userData != null);

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);

    if (index >= _userData.length) {
      return null;
    }
    final _user = _userData[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text('${_user.receipt}')),
      DataCell(Text('${_user.date}')),
      DataCell(Text('${_user.employee}')),
      DataCell(Text('${_user.customer}')),
      DataCell(Text('${_user.type}')),
      DataCell(Text('${_user.total}')),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _userData.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

  void sort<T>(Comparable<T> Function(UserModel d) getField, bool ascending) {
    _userData.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });

    notifyListeners();
  }
}
