import 'package:admin/constants.dart';
import 'package:admin/screens/main/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      
      body: Container(
        
        padding: EdgeInsets.all(defaultPadding * 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SideMenu(height: height),
            ),
            Expanded(
              flex: 6,
              child: DashboardScreen(),
            )
          ],
        ),
      ),

    );
  }
}

