import 'package:flutter/material.dart';
import 'package:nba_live_score/utils/app_theme.dart';
import 'package:nba_live_score/views/widgets/custom_text.dart';

class RowEventWidget extends StatelessWidget {
  const RowEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.sports_basketball,
                color: AppTheme.orange,
                size: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.sports_basketball,
                    color: AppTheme.orange,
                    size: 15,
                  ),
                  Icon(
                    Icons.sports_basketball,
                    color: AppTheme.orange,
                    size: 15,
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              CustomText(
                text: "3'",
                size: 14,
              ),
              CustomText(
                text: "3 - 2",
                size: 14,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.sports_basketball,
                color: AppTheme.orange,
                size: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.sports_basketball,
                    color: AppTheme.orange,
                    size: 15,
                  ),
                  Icon(
                    Icons.sports_basketball,
                    color: AppTheme.orange,
                    size: 15,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
