import 'package:flutter/material.dart';
import 'package:nba_live_score/views/widgets/custom_text.dart';

class MatchWidget extends StatelessWidget {
  const MatchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.schedule_outlined),
            SizedBox(width: 10),
            CustomText(
              text: 'Ended',
              size: 14,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.calendar_month_outlined),
            SizedBox(width: 10),
            CustomText(
              text: 'Today\n10:00',
              maxLines: 2,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.sports_basketball_outlined),
            SizedBox(width: 10),
            CustomText(
              text: 'Round 1',
              size: 14,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.emoji_events_outlined),
            SizedBox(width: 10),
            CustomText(
              text: 'NBA Summer League',
              size: 14,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.tv_outlined),
            SizedBox(width: 10),
            CustomText(
              text: 'NBA League Pass',
              size: 14,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.grid_3x3_outlined),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Q1',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Q2',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Q3',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Q4',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Total',
                        size: 14,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Q1',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Q2',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Q3',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Q4',
                        size: 14,
                      ),
                      CustomText(
                        text: 'Total',
                        size: 14,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'Q1'),
                      CustomText(text: 'Q2'),
                      CustomText(text: 'Q3'),
                      CustomText(text: 'Q4'),
                      CustomText(text: 'Total'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
