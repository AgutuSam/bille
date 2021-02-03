import 'package:bille/lists/billsList.dart';
import 'package:bille/views/bills_view.dart';
import 'package:flutter/material.dart';

class AllBills extends StatefulWidget {
  @override
  _AllBillsState createState() => _AllBillsState();
}

class _AllBillsState extends State<AllBills> with TickerProviderStateMixin {
  AnimationController animationController;
  final List<Bills> bill = Bills.billsList;

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
                      bill.length,
                      (int index) {
                        final int count = bill.length;
                        final Animation<double> animation =
                            Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                            parent: animationController,
                            curve: Interval((1 / count) * index, 1.0,
                                curve: Curves.fastOutSlowIn),
                          ),
                        );
                        animationController.forward();
                        bill.sort((a, b) => a.priority.compareTo(b.priority));
                        return BillsView(
                          bill: bill[index],
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
