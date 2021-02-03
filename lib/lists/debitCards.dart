import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:flutter/material.dart';

class DebitCard {
  DebitCard({
    this.cardNumber = '',
    this.cardExpiry = '',
    this.cardHolderName = '',
    this.cvv = '',
    this.bankName = '',
    this.cardType,
    this.showBackSide = false,
    this.frontBackground,
    this.backBackground,
    this.showShadow = false,
  });

  String cardNumber;
  // final DateTime cardExpiry;
  String cardExpiry;
  String cardHolderName;
  // final int cvv;
  String cvv;
  String bankName;
  CardType cardType;
  bool showBackSide;
  Widget frontBackground;
  Widget backBackground;
  bool showShadow;

  static List<DebitCard> debits = <DebitCard>[
    DebitCard(
      cardNumber: "5391 8374 2733 3316",
      cardExpiry: "10/25",
      cardHolderName: "Erika Costell",
      cvv: "456",
      bankName: "KCB Bank",
      cardType: CardType.masterCard,
      showBackSide: false,
      frontBackground: CardBackgrounds.black,
      backBackground: CardBackgrounds.white,
      showShadow: true,
    ),
    DebitCard(
      cardNumber: "+254 71 2345 678",
      cardExpiry: "----",
      cardHolderName: "Erika Costell",
      cvv: "----",
      bankName: "M-pesa",
      cardType: CardType.maestro,
      showBackSide: false,
      frontBackground: CardBackgrounds.greenDark,
      backBackground: CardBackgrounds.white,
      showShadow: true,
    ),
    DebitCard(
      cardNumber: "4857 4279 7089 1090",
      cardExpiry: "10/25",
      cardHolderName: "Erika Costell",
      cvv: "478",
      bankName: "Axess Bank",
      cardType: CardType.visa,
      showBackSide: false,
      frontBackground: CardBackgrounds.visaBlue,
      backBackground: CardBackgrounds.white,
      showShadow: true,
    ),
    DebitCard(
      cardNumber: "3579 3237 9569 2673",
      cardExpiry: "10/25",
      cardHolderName: "Erika Costell",
      cvv: "793",
      bankName: "Co-op Bank",
      cardType: CardType.jcb,
      showBackSide: false,
      frontBackground: CardBackgrounds.red,
      backBackground: CardBackgrounds.white,
      showShadow: true,
    ),
    DebitCard(
      cardNumber: "3708 6076 0804 434",
      cardExpiry: "10/25",
      cardHolderName: "Erika Costell",
      cvv: "092",
      bankName: "ITC Bank",
      cardType: CardType.americanExpress,
      showBackSide: false,
      frontBackground: CardBackgrounds.black,
      backBackground: CardBackgrounds.white,
      showShadow: true,
    ),
    DebitCard(
      cardNumber: "6011 9122 4162 4212",
      cardExpiry: "10/25",
      cardHolderName: "Erika Costell",
      cvv: "092",
      bankName: "ITC Bank",
      cardType: CardType.discover,
      showBackSide: false,
      frontBackground: CardBackgrounds.greenDark,
      backBackground: CardBackgrounds.white,
      showShadow: true,
    ),
  ];
}
