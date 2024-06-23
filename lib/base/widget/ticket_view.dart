import 'package:app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179.0,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Dar ES Salaam',
                  style: AppStyles.headLineStyle3.copyWith(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  'Arusha',
                  style: AppStyles.headLineStyle3.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
      ),
    );
  }
}
