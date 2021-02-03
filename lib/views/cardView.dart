import 'package:awesome_card/awesome_card.dart';
import 'package:bille/lists/debitCards.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key key,
    this.card,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final DebitCard card;
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
                100 * (1.0 - animation.value), 0.0, 0.0),
            child: CreditCard(
                cardNumber: card.cardNumber,
                cardExpiry: card.cardExpiry,
                cardHolderName: card.cardHolderName,
                cvv: card.cvv,
                bankName: card.bankName,
                showBackSide: card.showBackSide,
                frontBackground: card.frontBackground,
                backBackground: card.backBackground,
                showShadow: card.showShadow),
          ),
        );
      },
    );
  }
}
