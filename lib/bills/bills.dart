import 'package:bille/bills/allBills.dart';
import 'package:bille/bills/cyclicBills.dart';
import 'package:bille/bills/groupBills.dart';
import 'package:bille/bills/oneShotBills.dart';
import 'package:bille/views/animatedBottom.dart';
import 'package:flutter/material.dart';

class BillsPage extends StatefulWidget {
  const BillsPage({Key key}) : super(key: key);
  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  int _currentPage;

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width > 1280
            ? 414
            : MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Bills'),
          ),
          body: getPage(_currentPage),
          bottomNavigationBar: AnimatedBottomNav(
              currentIndex: _currentPage,
              onChange: (index) {
                setState(() {
                  _currentPage = index;
                });
              }),
        ),
      ),
    );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return AllBills();
      case 1:
        return CyclicBills();
      case 2:
        return OneShotBills();
      case 3:
        return GroupBills();
    }
  }
}
