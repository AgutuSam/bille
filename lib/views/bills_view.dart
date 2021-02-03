import 'package:bille/app_theme.dart';
import 'package:bille/lists/billsList.dart';
import 'package:bille/utils/billDialog.dart';
import 'package:flutter/material.dart';

class BillsView extends StatelessWidget {
  const BillsView(
      {Key key, this.bill, this.animationController, this.animation})
      : super(key: key);

  final Bills bill;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 30 * (1.0 - animation.value), 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                child: Card(
                  color: AppTheme.nearlyWhite,
                  child: ListTile(
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return BillDialog(
                          bill: bill,
                        );
                      },
                    ),
                    isThreeLine: true,
                    dense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  width: 1.0, color: AppTheme.darkText))),
                      child: CircleAvatar(
                        backgroundColor: AppTheme.primary,
                        child: Text(bill.priority.toString()),
                      ),
                    ),
                    title: RichText(
                      text: TextSpan(
                          text: '${bill.title}:\t',
                          style:
                              TextStyle(color: AppTheme.darkText, fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                              text: '${bill.currency} ${bill.amount}',
                              style: TextStyle(
                                  color: AppTheme.orange, fontSize: 18),
                            ),
                          ]),
                    ),
                    subtitle: Container(
                      height: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: RichText(
                              text: TextSpan(
                                  text: 'Acc.Type:\t',
                                  style: TextStyle(
                                      color: AppTheme.darkText, fontSize: 18),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '\t ${bill.accType}',
                                      style: TextStyle(
                                          color: AppTheme.orange, fontSize: 18),
                                    ),
                                  ]),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: RichText(
                                text: TextSpan(
                                    text: 'Acc.Number:\t',
                                    style: TextStyle(
                                        color: AppTheme.darkText, fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\t ${bill.accNumber}',
                                        style: TextStyle(
                                            color: AppTheme.orange,
                                            fontSize: 18),
                                      ),
                                    ]),
                              ))
                        ],
                      ),
                    ),
                    // trailing:
                    //     Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
                    // onTap: () {},
                  ),
                ),
              ),
            ),
          );
        });
  }
}
