import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyStore extends StatefulWidget {
  const MyStore({super.key});

  @override
  State<MyStore> createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
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
                            onTap: () => context.go('/login_screen'),
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
              Row(
                children: [
                  Container(
                    height: 650,
                    width: MediaQuery.of(context).size.width * 0.60,
                    // decoration: const BoxDecoration(
                    //   color: Colors.yellow
                    // ),
                    child: Column(
                      children: [
                        _profile(),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () => context.go('/featured_screen'),
                            child: _featuredProduct()),
                        const SizedBox(
                          height: 10,
                        ),
                        _advertisements()
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    // decoration: const BoxDecoration(
                    //   color: Colors.blue
                    // ),
                    child: Column(
                      children: [
                        _name(),
                        GestureDetector(
                          onTap: () => context.go('/premium_profile'),
                          child: const Text(
                            'SEE MAIN PROFILE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color.fromARGB(255, 255, 240, 33)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _country(),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              GridView.count(
                                childAspectRatio: 2.4,
                                crossAxisSpacing:
                                    10.0, // Adjust this value to control horizontal spacing
                                mainAxisSpacing: 10.0,
                                crossAxisCount: 1, // 3 buttons per row
                                shrinkWrap: true,
                                children: List.generate(5, (index) {
                                  // Customize the text for each button

                                  return Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      // Adjust the width to resize the button

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            8.0), // Adjust the corner radius as needed
                                        color: Color.fromARGB(255, 255, 60,
                                            60), // Customize the button color
                                      ),
                                    ),
                                  );
                                }),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration:
                                      const BoxDecoration(color: Colors.yellow),
                                  child: const Center(
                                    child: Text(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        'EDIT STORE'),
                                  ),
                                ),
                              )
                            ],
                          ),
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
    ],
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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  8.0), // Adjust the corner radius as needed
              color: const Color.fromARGB(
                  255, 187, 21, 71), // Customize the button color
            ),
            child: const Center(
              child: Text(
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                  'LISTEN'),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _featuredProduct() {
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
          'Featured Products'),
    ),
  );
}

Widget _advertisements() {
  return SizedBox(
    height: 250,
    width: 200,
    child: Column(
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
    ),
  );
}
