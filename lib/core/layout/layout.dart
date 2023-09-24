import 'package:anama/core/component/customer_card.dart';
import 'package:anama/core/component/transaction_card.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigation());

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ButtomNavigation(),
    );
  }
}

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    CustomerCard(),
    TransactionCard(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 60, left: 10, right: 10),
          child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Customers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: 'Transactions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}
