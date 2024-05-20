import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/constants/constants.dart';
import 'package:flutter_fitness_app/util/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          if (!Responsive.isDesktop(context))
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.menu, color: Colors.grey, size: 25,),
                ),
              ),
            ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: cardBackgroundColor,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5,),
                hintText: "Search",
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 21,
                ),
              ),
            ),
          ),
        ],
      );
  }
}
