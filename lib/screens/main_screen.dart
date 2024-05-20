import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/widgets/dashboard_widget.dart';
import 'package:flutter_fitness_app/widgets/side_menu_widget.dart';
import 'package:flutter_fitness_app/widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              ),
            ),
            Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            Expanded(
              flex: 3,
              child: SummaryWidget(),
            ),
          ],
        ),

      ),
    );
  }
}
