import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nba_live_score/views/widgets/custom_text.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Matches'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CachedNetworkImage(
                            width: 50,
                            height: 50,
                            imageUrl:
                                'https://static.flashscore.com/res/image/data/jaRhGsXH-0tHj7MWK.png',
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          CustomText(
                            text: 'Team $index',
                            size: 12,
                          ),
                        ],
                      ),
                      const CustomText(
                        text: '06:00',
                        size: 12,
                      ),
                      Column(
                        children: [
                          CachedNetworkImage(
                            width: 50,
                            height: 50,
                            imageUrl:
                                'https://static.flashscore.com/res/image/data/jaRhGsXH-0tHj7MWK.png',
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          CustomText(
                            text: 'Team $index',
                            size: 12,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
