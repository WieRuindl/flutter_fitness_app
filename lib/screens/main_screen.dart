import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/constants/constants.dart';
import 'package:flutter_fitness_app/util/responsive.dart';
import 'package:flutter_fitness_app/widgets/dashboard_widget.dart';
import 'package:flutter_fitness_app/widgets/side_menu_widget.dart';
import 'package:flutter_fitness_app/widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop ? SizedBox(width: 250, child: Container(decoration: const BoxDecoration(color: backgroundColor), child: const SideMenuWidget()),) : null,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isDesktop)
              const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),
            const Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            if (isDesktop)
              const Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
          ],
        ),

      ),
    );
  }
}
