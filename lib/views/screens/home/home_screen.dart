import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nba_live_score/views/screens/matches/match_detail_screen.dart';
import 'package:nba_live_score/views/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NBA Live Score'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Card(
                        child: ExpansionTile(
                          title: CustomText(text: 'Match $index'),
                          maintainState: false,
                          backgroundColor: Colors.white,
                          collapsedBackgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          collapsedShape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () =>
                                          Get.to(() => MatchDetailScreen()),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                CachedNetworkImage(
                                                  width: 50,
                                                  height: 50,
                                                  imageUrl:
                                                      'https://static.flashscore.com/res/image/data/jaRhGsXH-0tHj7MWK.png',
                                                  placeholder: (context, url) =>
                                                      const Center(
                                                          child:
                                                              CircularProgressIndicator()),
                                                  errorWidget: (context, url,
                                                          error) =>
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
                                                  placeholder: (context, url) =>
                                                      const Center(
                                                          child:
                                                              CircularProgressIndicator()),
                                                  errorWidget: (context, url,
                                                          error) =>
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
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
