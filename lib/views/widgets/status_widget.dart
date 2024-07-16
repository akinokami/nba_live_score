import 'package:flutter/material.dart';
import 'package:nba_live_score/views/widgets/row_data_widget.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RowDataWidget(title: 'Free throws'),
        RowDataWidget(
          title: '2 pointers',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: '3 pointers'),
        RowDataWidget(
          title: 'Field goals',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Rebounds'),
        RowDataWidget(
          title: 'Defensive rebounds',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Offensive rebounds'),
        RowDataWidget(
          title: 'Assists',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Turnovers'),
        RowDataWidget(
          title: 'Steals',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Blocks'),
        RowDataWidget(
          title: 'Fouls',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Timeouts'),
        RowDataWidget(
          title: 'Max points in a row',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Time spent in lead'),
        RowDataWidget(
          title: 'Lead changes',
          color: Colors.grey[200],
        ),
        RowDataWidget(title: 'Biggest lead'),
      ],
    );
  }
}
