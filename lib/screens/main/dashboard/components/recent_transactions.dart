import 'package:flutter/material.dart';

import '../../../../constants.dart';


class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transactions ",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: secondaryColor,
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
                ),
                onPressed: () {},
                child: Text("View All ",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: Colors.white, fontSize: 10)),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(columns: [
              DataColumn(label: Text(
                "Date" ,style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: textColor, fontSize: 10)
                            ),
                ) , 
                DataColumn(label: Text(
                "Amount" ,style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: textColor, fontSize: 10)
                            ),
                ) , 
                DataColumn(label: Text(
                "Status" ,style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: textColor, fontSize: 10)
                            ),
                ) , 
            ], rows: [
              DataRow(cells: [ 
                 DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Withdraw",
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                      ),
                      
                    
                    ),
                    Text("Hash : 1234565432",
                    style: Theme.of(context)
            .textTheme
            .subtitle2
            .copyWith(color: textColor, fontSize: 10)),
                    


              ],)
              ),
              DataCell(Text(
                " Feb 17 , 2023" ,style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: secondaryColor, fontSize: 10)
                            ),),
                            DataCell(Text(
                " \$50,00.00" ,style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: secondaryColor, fontSize: 10)
                            ),),
                             DataCell(Text(
                " Completed" ,style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(
                            color: Colors.greenAccent, fontSize: 10)
                            ),),
                            
             

              ])
         
            ]
          ),
        )  ],
      ),
    );
  }
}