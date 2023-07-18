import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';

class DigitalCurrencyCard extends StatelessWidget {
  const DigitalCurrencyCard({
    Key key,
  @required  this.svgScr,
   @required  this.subNameCurrency,
  @required   this.nameCurrency,
  @required   this.amountInDollars,
   @required  this.percentage,
   @required  this.color,
  @required   this.icon,
  @required this.perColor,
  }) : super(key: key);
  final String svgScr,
      subNameCurrency,
      nameCurrency,
      amountInDollars,
      percentage;
  final Color color, perColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              svgScr,
              color: color,
            ),
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subNameCurrency,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                ),
                Text(
                  nameCurrency,
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Text(
                amountInDollars,
                style: Theme.of(context).textTheme.headline3.copyWith(
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 1),
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    color: perColor,
                  ),
                  Text(
                    percentage,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

