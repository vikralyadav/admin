import 'package:flutter/material.dart';

import '../../constants.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding * 3),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
                padding: EdgeInsets.only(left: defaultPadding * 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/logop.png"),
                        Text(
                          'Proxibit',
                          style:
                              Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                    Text(
                      'Main Menu ',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(
                              color: Colors.white70, fontSize: 10),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Stack(
            children: [
              Positioned.fill(
                  child: Expanded(
                      child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(10))),
              ))),
              Container(
                margin: EdgeInsets.only(left: 225,top: 10),
                height: 30,
                width: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.all(Radius.circular(5))),
              ),
              DashboardListTile(
                title: "Dashboard",
                icon: Icon(Icons.grid_view_outlined),
                press: () {},
              ),
            ],
          ),
          DashboardListTile(
            title: "Transactions",
            icon: Icon(Icons.poll_outlined),
            press: () {},
          ),
          DashboardListTile(
            title: "Transfer",
            icon: Icon(Icons.send),
            press: () {},
          ),
          DashboardListTile(
            title: "Deposit",
            icon: Icon(Icons.add_box_outlined),
            press: () {},
          ),
          DashboardListTile(
            title: "Withdraw",
            icon: Icon(Icons.upload),
            press: () {},
          ),
          DashboardListTile(
            title: "Payment",
            icon: Icon(Icons.account_balance_wallet_outlined),
            press: () {},
          ),
          DashboardListTile(
            title: "Message",
            icon: Icon(Icons.description_outlined),
            press: () {},
          ),
          Spacer(),
          DashboardListTile(
            title: "Account",
            icon: Icon(Icons.person),
            press: () {},
          ),
          DashboardListTile(
            title: "Settings",
            icon: Icon(Icons.settings),
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DashboardListTile extends StatelessWidget {
  const DashboardListTile({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final String title;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        visualDensity: VisualDensity(vertical: -4),
        dense: true,
        onTap: () {},
        leading: Icon(icon.icon),
        title: Text(title),
      ),
    );
  }
}
