import 'package:flutter/material.dart';

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
                          title: Text("User $index"),
                          maintainState: true,
                          backgroundColor: Colors.white,
                          collapsedBackgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          collapsedShape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          children: [
                            Text("Name : User $index"),
                            Text("Phone No: $index"),
                            const Text("isAdmin: No")
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
