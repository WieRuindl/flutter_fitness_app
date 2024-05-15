import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/widgets/activity_details_card.dart';
import 'package:flutter_fitness_app/widgets/header_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 18,),
        HeaderWidget(),
        SizedBox(height: 18,),
        ActivityDetailsCard(),
        SizedBox(height: 18,),
      ],
    );
  }
}
