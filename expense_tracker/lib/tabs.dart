import 'package:expense_tracker/add.dart';
import 'package:expense_tracker/expenses.dart';
import 'package:expense_tracker/reports.dart';
import 'package:expense_tracker/settings.dart';
import 'package:expense_tracker/types/widgets.dart';
import 'package:flutter/material.dart';

class TabletsController extends StatefulWidget {
  const TabletsController({Key? key}) : super(key: key);

  @override
  State<TabletsController> createState() => _TabletsControllerState();
}

class _TabletsControllerState extends State<TabletsController> {
  var _selectedIndex = 0;
  static const List<WidgetWithTitle> _pages = [
    Expenses(),
    Reports(),
    Add(),
    Settings()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndex].title),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.paid),
            label: 'Expenses',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reports',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
