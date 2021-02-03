import 'package:bille/app_theme.dart';
import 'package:bille/lists/billsList.dart';
import 'package:flutter/material.dart';

class BillDialog extends StatelessWidget {
  BillDialog({this.bill});
  final Bills bill;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width > 1280
            ? 414
            : MediaQuery.of(context).size.width,
        child: SizedBox(
          height: 370,
          child: Dialog(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    bill.title,
                    style: TextStyle(color: Colors.green),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "DATE",
                        style: AppTheme.label,
                      ),
                      Text("TIME", style: AppTheme.label)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          '${bill.deadline.day},${bill.deadline.month}, ${bill.deadline.year}'),
                      Text('${bill.deadline.hour}:${bill.deadline.minute}')
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "PAY TO",
                            style: AppTheme.label,
                          ),
                          Text(bill.payTo),
                          Text(
                            bill.payAcc,
                            style: AppTheme.subtitle,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "PRIORITY",
                            style: AppTheme.label,
                          ),
                          Center(child: Text(bill.priority.toString()))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "AMOUNT",
                            style: AppTheme.label,
                          ),
                          Text('${bill.currency} ${bill.amount}'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "FREQUENCY",
                            style: AppTheme.label,
                          ),
                          Text(
                            bill.frequency == null
                                ? 'one shot'
                                : bill.frequency,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.account_balance_wallet),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              bill.accType,
                              style: AppTheme.label,
                            ),
                            Text(
                              bill.accNumber,
                              style: AppTheme.subtitle,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
