import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/widgets/my_pie_chart_widget.dart';
import 'package:flutter_fitness_app/widgets/scheduled_widget.dart';
import 'package:flutter_fitness_app/widgets/summary_details_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          SizedBox(height: 20,),
          MyPieChart(),
          Text(
            "Summary",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16,),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SummaryDetailsWidget(),
          ),


        ],
      ),
    );
  }
}
