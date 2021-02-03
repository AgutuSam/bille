import 'package:bille/lists/billsList.dart';
import 'package:bille/views/bills_view.dart';
import 'package:flutter/material.dart';

class GroupBills extends StatefulWidget {
  @override
  _GroupBillsState createState() => _GroupBillsState();
}

class _GroupBillsState extends State<GroupBills> with TickerProviderStateMixin {
  AnimationController animationController;
  final List<Bills> bill = Bills.billsList;
  List<Bills> _billz;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  List<Bills> _genList(List<Bills> leest) {
    List<Bills> _list = [];
    Bills count(List<Bills> list, int element, Bills item) {
      if (list == null || list.isEmpty) {
        return null;
      }

      var foundElements = list.where((e) => e.priority == element);
      return foundElements.length > 1 ? item : null;
    }

    for (var i in leest) {
      var lizt = count(leest, i.priority, i);
      if (lizt != null) _list.add(lizt);
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SingleChildScrollView(
        child: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: List<Widget>.generate(
                      _genList(bill).length,
                      (int index) {
                        final int count = _genList(bill).length;
                        _billz = _genList(bill);
                        final Animation<double> animation =
                            Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                            parent: animationController,
                            curve: Interval((1 / count) * index, 1.0,
                                curve: Curves.fastOutSlowIn),
                          ),
                        );
                        animationController.forward();
                        _billz.sort((a, b) => a.priority.compareTo(b.priority));
                        _billz = _genList(bill);
                        return BillsView(
                          bill: _billz[index],
                          animation: animation,
                          animationController: animationController,
                        );
                      },
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
