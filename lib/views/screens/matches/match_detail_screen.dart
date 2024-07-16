import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nba_live_score/views/widgets/custom_text.dart';
import 'package:nba_live_score/views/widgets/events_widget.dart';
import 'package:nba_live_score/views/widgets/match_widget.dart';
import 'package:nba_live_score/views/widgets/roster_widget.dart';
import 'package:nba_live_score/views/widgets/status_widget.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({super.key});

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Match Detail'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CachedNetworkImage(
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                        imageUrl:
                            'https://static.flashscore.com/res/image/data/jaRhGsXH-0tHj7MWK.png',
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const CustomText(text: 'Team 1'),
                    ],
                  ),
                  Column(
                    children: [
                      CachedNetworkImage(
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                        imageUrl:
                            'https://static.flashscore.com/res/image/data/jaRhGsXH-0tHj7MWK.png',
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const CustomText(text: 'Team 1'),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.grey,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: 'Match',
                  ),
                  Tab(
                    text: 'Status',
                  ),
                  Tab(
                    text: 'Events',
                  ),
                  Tab(
                    text: 'Roster',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  MatchWidget(),
                  StatusWidget(),
                  EventsWidget(),
                  RosterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
