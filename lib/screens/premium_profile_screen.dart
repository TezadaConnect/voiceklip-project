import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PremiumProfileSreen extends StatefulWidget {
  const PremiumProfileSreen({super.key});
  @override
  State<PremiumProfileSreen> createState() => _PremiumProfileState();
}

class _PremiumProfileState extends State<PremiumProfileSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("asset/images/header_bg.png"),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 180,
                              height: 35,
                              child: SearchAnchor(builder:
                                  (BuildContext context,
                                      SearchController controller) {
                                return SearchBar(
                                  controller: controller,
                                  padding: const MaterialStatePropertyAll<
                                          EdgeInsets>(
                                      EdgeInsets.symmetric(horizontal: 16.0)),
                                  onTap: () {
                                    controller.openView();
                                  },
                                  onChanged: (_) {
                                    controller.openView();
                                  },
                                  leading: const Icon(Icons.search),
                                );
                              }, suggestionsBuilder: (BuildContext context,
                                  SearchController controller) {
                                return List<ListTile>.generate(5, (int index) {
                                  final String item = 'item $index';
                                  return ListTile(
                                    title: Text(item),
                                    onTap: () {
                                      setState(() {
                                        controller.closeView(item);
                                      });
                                    },
                                  );
                                });
                              }),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            Image.asset(
                              'asset/images/voiceklip_logo_only.png',
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: GestureDetector(
                            onTap: () => context.go('/'),
                            child: Container(
                              height: 35,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Adjust the corner radius as needed
                                color: const Color.fromARGB(255, 255, 240,
                                    23), // Customize the button color
                              ),
                              child: const Center(
                                child: Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    'Home'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                _profile(),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [_followerCount()],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            _name(),
                            const SizedBox(
                              height: 10,
                            ),
                            _country(),
                            const SizedBox(
                              height: 10,
                            ),
                            _genre(),
                            const SizedBox(
                              height: 10,
                            ),
                            _whatToDo()
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                _featuredPerformance(),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                _advertisements(),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: 150,
                              decoration:
                                  const BoxDecoration(color: Colors.red),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              width: 150,
                              decoration:
                                  const BoxDecoration(color: Colors.blue),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              width: 150,
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 35,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Adjust the corner radius as needed
                                color: const Color.fromARGB(255, 255, 240,
                                    23), // Customize the button color
                              ),
                              child: const Center(
                                child: Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    'My Store'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _country() {
  return Column(
    children: [
      Container(
        height: 50,
        width: 130,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: const Center(
            child: Text(
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                'PHILIPPINES')),
      ),
    ],
  );
}

Widget _whatToDo() {
  return const Column(
    children: [
      Text(
        'PERFORMANCE LIBRARY',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color.fromARGB(255, 255, 33, 33)),
      ),
      Text(
        'CARE TO COLLAB',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color.fromARGB(255, 255, 33, 33)),
      ),
      Text(
        'SPONSOR MY VIDEO',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color.fromARGB(255, 255, 33, 33)),
      ),
    ],
  );
}

Widget _genre() {
  return const Column(
    children: [
      Text(
        'Ballad, Rock, Jazz, Reggae,',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            color: Color.fromARGB(255, 255, 240, 33)),
      ),
      Text(
        'Country Music, Kundiman, Metal',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            color: Color.fromARGB(255, 255, 240, 33)),
      ),
    ],
  );
}

Widget _name() {
  return const Column(
    children: [
      Text(
        'FIRST NAME',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      ),
      Text(
        'LAST NAME',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      ),
      Text(
        'Singer',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color.fromARGB(255, 255, 240, 33)),
      ),
    ],
  );
}

Widget _followerCount() {
  return const Text(
    '2.5M Listeners',
    style: TextStyle(fontSize: 19, color: Colors.white),
  );
}

Widget _profile() {
  return Container(
    height: 250,
    width: 200,
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(10.0), // Adjust the corner radius as needed
      color:
          const Color.fromARGB(255, 60, 167, 255), // Customize the button color
    ),
  );
}

Widget _featuredPerformance() {
  return Container(
    height: 60,
    width: 160,
    // Adjust the width to resize the button

    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(10.0), // Adjust the corner radius as needed
      color:
          const Color.fromARGB(255, 60, 167, 255), // Customize the button color
    ),
    child: const Center(
      child: Text(
          style: TextStyle(
            color: Color.fromARGB(255, 252, 255, 47),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          'Featured Performance'),
    ),
  );
}

Widget _advertisements() {
  return Column(
    children: [
      Row(
        children: [
          Image.asset(
            'asset/images/puma_logo.png',
            height: 60,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Image.asset(
            'asset/images/puma_logo.png',
            height: 60,
          ),
        ],
      ),
      const SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Image.asset(
            'asset/images/puma_logo.png',
            height: 60,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Image.asset(
            'asset/images/puma_logo.png',
            height: 60,
          ),
        ],
      ),
      const SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          Image.asset(
            'asset/images/puma_logo.png',
            height: 60,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Image.asset(
            'asset/images/puma_logo.png',
            height: 60,
          ),
        ],
      ),
    ],
  );
}
