import 'package:flutter/material.dart';
import 'package:paginatedemo_app/model/user_model.dart';

class UserDataNotifier with ChangeNotifier {
  // UserDataNotifier() {
  //   fetchData();
  // }

  List<UserModel> get userModel => _userModel;

  // SORT COLUMN INDEX...

  int get sortColumnIndex => _sortColumnIndex;

  set sortColumnIndex(int sortColumnIndex) {
    _sortColumnIndex = sortColumnIndex;
    notifyListeners();
  }

  getLegnth() {
    return _userModel.length;
  }

  // SORT ASCENDING....

  bool get sortAscending => _sortAscending;

  set sortAscending(bool sortAscending) {
    _sortAscending = sortAscending;
    notifyListeners();
  }

  int get rowsPerPage => _rowsPerPage;

  set rowsPerPage(int rowsPerPage) {
    _rowsPerPage = rowsPerPage;
    notifyListeners();
  }

  // -------------------------------------- INTERNALS --------------------------------------------

  //var _userModel = <UserModel>[];

  var _userModel = <UserModel>[
    UserModel(
        receipt: '1011',
        date: DateTime(2021, 04, 01, 13, 53),
        employee: "Owner",
        customer: "Sajan Gurung",
        type: "Sale",
        total: "300.00"),
    UserModel(
        receipt: '1012',
        date: DateTime(2021, 03, 30, 14, 05),
        employee: "Kriti Gurung",
        customer: "Dhiraj Khetan",
        type: "Sale",
        total: "300.00"),
    UserModel(
        receipt: '1013',
        date: DateTime(2021, 03, 30, 14, 04),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "333.00"),
    UserModel(
        receipt: '1014',
        date: DateTime(2021, 03, 30, 14, 04),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "322.00"),
    UserModel(
        receipt: '1015',
        date: DateTime(2021, 03, 30, 14, 03),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "633.00"),
    UserModel(
        receipt: '1016',
        date: DateTime(2021, 03, 30, 14, 02),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "311.00"),
    UserModel(
        receipt: '1017',
        date: DateTime(2021, 03, 30, 13, 42),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "371.00"),
    UserModel(
        receipt: '1018',
        date: DateTime(2021, 03, 24, 12, 18),
        employee: "Smriti Khetan",
        customer: "Sajan Gurung",
        type: "Sale",
        total: "810.00"),
    UserModel(
        receipt: '1020',
        date: DateTime(2021, 03, 24, 12, 18),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "900.00"),
    UserModel(
        receipt: '1021',
        date: DateTime(2021, 03, 24, 12, 16),
        employee: "Owner",
        customer: "-",
        type: "Sale",
        total: "450.00"),
  ];

  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  notifyListeners();

  // Future<void> fetchData() async {
  //   _userModel = await DataTableApi.fetchData();
  //   notifyListeners();
  // }
}
