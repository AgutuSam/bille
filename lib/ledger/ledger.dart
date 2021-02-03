import 'package:bille/lists/ledgerList.dart';
import 'package:bille/views/LedgerView.dart';
import 'package:flutter/material.dart';

class Ledger extends StatefulWidget {
  @override
  _LedgerState createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  List<Ledgers> messages = Ledgers.messages;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width > 1280
            ? 414
            : MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ledger'),
          ),
          body: ListView(
            children: List.generate(
                messages.length,
                (index) => LedgerView(
                      message: messages[index],
                    )),
          ),
        ),
      ),
    );
  }
}
