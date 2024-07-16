import 'package:flutter/material.dart';
import 'package:nba_live_score/views/widgets/row_event_widget.dart';

class EventsWidget extends StatelessWidget {
  final String? score;
  final String? team1Points;
  final String? team2Points;
  const EventsWidget(
      {super.key, this.score, this.team1Points, this.team2Points});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: 15,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return RowEventWidget();
            }),
      ],
    );
  }
}
