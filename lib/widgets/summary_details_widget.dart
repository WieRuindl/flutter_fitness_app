import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/widgets/custom_card.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDetails('Cal', '305'),
          _buildDetails('Steps', '10983'),
          _buildDetails('Distance', '7km'),
          _buildDetails('Sleep', '7hr'),
        ],
      ),
    );
  }

  Widget _buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(color: Colors.grey, fontSize: 11,),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 14,),
        ),
      ],
    );
  }
}
