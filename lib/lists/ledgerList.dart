class Ledgers {
  Ledgers({this.date, this.time, this.message});
  final String date;
  final String time;
  final String message;

  static List<Ledgers> messages = [
    Ledgers(
      date: '02/11/2020',
      time: '8:04 PM',
      message:
          'Enjoy a 10% bonus on your next Airtime purchase via M-PESA! Dial *334# to conveniently Buy Airtime, Send Money and do much more on M-PESA!',
    ),
    Ledgers(
      date: '07/08/2020',
      time: '5:34 PM',
      message:
          'KPLC Token \n MtrNo:54500320905 \n Token:3683-3915-5230-1084-7777 \n Date:2021-01-04 21:32 \n Units:6.13 \n Amt Ksh:100.00 \n Token Amt:61.38 \n VAT:13.31 \n Fuel Energy Charge:15.7 \n Forex Charge:4.27 \n EPRA Charge:0.18 \n WARMA Charge:0.14 \n REP Charge:3.06 \n Inflation Adjustment:1.96.',
    ),
    Ledgers(
      date: '17/04/2019',
      time: '8:17 AM',
      message:
          'PA61CRD30B Confirmed. Ksh21.00 sent to PesaPal  for account 0729514434 on 6/1/21 at 10:51 AM New M-PESA balance is Ksh0.00. Transaction cost, Ksh1.00. Amount you can transact within the day is 299,979.00.',
    ),
    Ledgers(
      date: '02/01/2019',
      time: '9:40 PM',
      message: '603:R210104.1058.26002e confirmed. You have received Ksh. 21.',
    ),
  ];
}
