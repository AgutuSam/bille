class Bills {
  Bills(
      {this.title,
      this.amount,
      this.priority,
      this.accType,
      this.accNumber,
      this.currency,
      this.frequency,
      this.payTo,
      this.payAcc,
      this.deadline});
  final String title;
  final String accNumber;
  final String payAcc;
  final String accType;
  final int priority;
  final double amount;
  final String currency;
  final String frequency;
  final String payTo;
  final DateTime deadline;

  static List<Bills> billsList = <Bills>[
    Bills(
        accNumber: '0721345678',
        accType: 'M-Pesa \t Till',
        amount: 560,
        currency: '\$',
        priority: 2,
        title: 'Rent',
        payAcc: '78831',
        payTo: 'Gary Inc.',
        deadline: DateTime.now(),
        frequency: 'monthly'),
    Bills(
        accNumber: '37936428789',
        accType: 'KCB',
        amount: 70860,
        currency: 'Kes',
        priority: 1,
        title: 'Fee',
        payAcc: 'gh65454',
        payTo: 'KCB',
        deadline: DateTime.now(),
        frequency: 'quarterly'),
    Bills(
      accNumber: 'nr85739287',
      accType: 'Co-op',
      amount: 560,
      currency: '£',
      priority: 3,
      title: 'water',
      payAcc: '576fd768',
      payTo: 'Co-op',
      deadline: DateTime.now(),
    ),
    Bills(
      accNumber: '0721345678',
      accType: 'M-Pesa \t PayBill',
      amount: 60,
      currency: '\$',
      priority: 2,
      title: 'Gas',
      payAcc: '78831',
      payTo: 'Deon Inc.',
      deadline: DateTime.now(),
    ),
  ];
}
