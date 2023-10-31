import 'package:flutter/material.dart';

class VoiceKlipHome extends StatefulWidget {
  @override
  State<VoiceKlipHome> createState() => _VoiceKlipHomeState();
}

class _VoiceKlipHomeState extends State<VoiceKlipHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                // Add a background image for the header
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150, // Adjust the height as needed
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                              'asset/images/header_bg.png'), // Change to your image path
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                            child: Column(
                              children: [
                                const SizedBox(
                                    height: 10), // Adjust the spacing
                                Image.asset(
                                  'asset/images/voiceklip_logo_only.png',
                                  height: 50,
                                ),
                                const Text('VoiceKLIP',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                            width: 200,
                            height: 40,
                            child: SearchAnchor(builder: (BuildContext context,
                                SearchController controller) {
                              return SearchBar(
                                controller: controller,
                                padding:
                                    const MaterialStatePropertyAll<EdgeInsets>(
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
                        ],
                      ),
                    ),
                  ],
                ),
                // TabBar is below the header
                const TabBar(
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.social_distance,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // Content for each tab is scrollable
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      300, // Adjust the height based on your needs
                  child: TabBarView(
                    children: [
                      // Content for Tab 1
                      ListView(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling
                        children: const [
                          // Add more content for Tab 1
                        ],
                      ),
                      // Content for Tab 2
                      ListView(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling
                        children: [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 2
                        ],
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling
                        children: [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 1
                        ],
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling
                        children: [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 1
                        ],
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling
                        children: [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 1
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VoiceKlipHome(),
  ));
}
