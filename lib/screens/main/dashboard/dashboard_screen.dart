import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants.dart';
import '../../../models/chart_area_data.dart';
import 'components/chart.dart';
import 'components/chart_area.dart';
import 'components/chart_total_portfolio.dart';
import 'components/digital_currency_card.dart';
import 'components/digital_currency_details.dart';
import 'components/header.dart';
import 'components/recent_transactions.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2, vertical: defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    SizedBox(
                      height: defaultPadding * 2.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding, horizontal: defaultPadding),
                      child: Text(
                        "Total Portfolio ",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ChartTotalPortfolio(),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    RecentTransactions()
                  ])),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Balance",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: secondaryColor, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("USD Balance",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: textColor, fontSize: 10)),
                    Icon(
                      Icons.expand_more,
                      color: secondaryColor,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1.445.00",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: Text(
                        "USD",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: defaultPadding / 2, bottom: defaultPadding),
                  child: Text(
                    "Wallet ID: POUV666FGHV",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(color: textColor, fontSize: 10),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Deposite",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: secondaryColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Withdraw",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: textColor, fontSize: 10),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: defaultPadding * 3, bottom: defaultPadding),
                  child: Text(
                    "My Portfolio",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding, vertical: defaultPadding),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Chart(),
                      DigitalCurrencyDetails(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

