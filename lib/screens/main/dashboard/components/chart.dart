import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: SfCircularChart(
            series: <CircularSeries>[
              DoughnutSeries<ChartData, String>(
                dataSource: chartData,
                innerRadius: "80%",
                startAngle: 270,
                endAngle: 270,
                pointColorMapper:
                    (ChartData data, _) =>
                        data.color,
                xValueMapper: (ChartData data, _) =>
                    data.x,
                yValueMapper: (ChartData data, _) =>
                    data.y,
              ),
            ],
          ),
        ),
        Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_drop_up,
              color: Colors.blueAccent,
            ),
            Text(
              "\$20 (1%)",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.blueAccent,fontSize: 10),


            )
          ],
        ))
      ],
    );
  }
}

final List<ChartData> chartData = [
  ChartData("Arya", 40, Color.fromARGB(255, 239, 147, 25)),
  ChartData("John", 35, Color.fromARGB(255, 240, 185, 11)),
  ChartData("Sansa", 25, Color.fromARGB(255, 99, 104, 144)),
];

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}