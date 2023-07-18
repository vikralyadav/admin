import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'chart_area.dart';


class ChartTotalPortfolio extends StatelessWidget {
  const ChartTotalPortfolio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding) ,
          padding: EdgeInsets.symmetric(
              horizontal: defaultPadding * 2,
              vertical: defaultPadding * 1.5),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Chart",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(
                            color: secondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  btnContainer(
                    text: "1m",
                    colorBg: Colors.white,
                    colorText: secondaryColor,
                  ),
                  btnContainer(
                    text: "3m",
                    colorBg: Colors.white,
                    colorText: secondaryColor,
                  ),
                  btnContainer(
                    text: "6m",
                    colorBg: secondaryColor,
                    colorText: Colors.white,
                  ),
                  btnContainer(
                    text: "12m",
                    colorBg: Colors.white,
                    colorText: secondaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text(
                      "Monthly",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: textColor, fontSize: 10),
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: secondaryColor,

                  )
                ],
              ),
              SizedBox(height: defaultPadding,),
              ChartArea(),
            ],
          ),
        ),
        Positioned.fill(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
            decoration: BoxDecoration(
            border: Border.all(color: secondaryColor,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),

          ),
          child: Icon(Icons.arrow_back_ios_new,color: secondaryColor,),
          ),
           Container(
            padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
            decoration: BoxDecoration(
            border: Border.all(color: secondaryColor,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),

          ),
          child: Icon(Icons.arrow_forward_ios,color: secondaryColor,),
          ),
        ],))
      ],
    );
  }
}

class btnContainer extends StatelessWidget {
  const btnContainer({
    Key key,
    @required this.text,
    @required this.colorBg,
    @required this.colorText,
  }) : super(key: key);
  final String text;
  final Color colorBg;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 4),
      decoration: BoxDecoration(
        color: colorBg,
        border: Border.all(color: secondaryColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6.copyWith(
            color: colorText, fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}