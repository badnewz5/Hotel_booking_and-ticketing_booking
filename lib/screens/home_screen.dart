import 'package:app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      width: 100.0,
                      height: 70.0,
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search icon'),
                    Text('Empty space'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
