import 'package:bille/lists/ledgerList.dart';
import 'package:flutter/material.dart';

class LedgerView extends StatelessWidget {
  LedgerView({this.message});
  final Ledgers message;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white70,
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              emIcon(),
                              SizedBox(
                                height: 10,
                              ),
                              emdate(),
                              Spacer(),
                              emtime(),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          Text(
                            message.message,
                            // textAlign: TextAlign.center,
                            textAlign: TextAlign.left,
                            textWidthBasis: TextWidthBasis.parent,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 50,
                            style: TextStyle(
                              // fontFamily: FitnessAppTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              letterSpacing: 0.0,
                              color: Colors.black45.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget emIcon() {
    return Align(
      alignment: Alignment.topLeft,
      child: Icon(
        Icons.supervised_user_circle,
        color: Colors.amber,
        size: 40,
      ),
    );
  }

  Widget emtime() {
    return Align(
      alignment: Alignment.topRight,
      child: Text(message.time,
          textAlign: TextAlign.left,
          textWidthBasis: TextWidthBasis.parent,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold)),
    );
  }

  Widget emdate() {
    return Align(
      alignment: Alignment.topLeft,
      child: RichText(
        text: TextSpan(
          text: '...',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 4),
          children: <TextSpan>[
            TextSpan(
                text: message.date,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
