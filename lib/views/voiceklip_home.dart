import 'package:flutter/material.dart';

class VoiceKlipHome extends StatefulWidget {
  @override
  State<VoiceKlipHome> createState() => _VoiceKlipHomeState();
}

class _VoiceKlipHomeState extends State<VoiceKlipHome> {

  List<String> imagePaths = [
  'asset/images/voiceklip_logo_only.png',
  'asset/images/voiceklip_logo_only.png',
  'asset/images/voiceklip_logo_only.png',
  // Add more image paths here
];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 150, // Adjust the height as needed
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150, // Adjust the height as needed
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('asset/images/header_bg.png'), // Change to your image path
                            ),
                          ),
                          child:  Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(25,10,0,0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10), // Adjust the spacing
                                     Image.asset('asset/images/voiceklip_logo_only.png', height: 50,),
                                     const Text('VoiceKLIP', style: TextStyle(fontSize: 24, color: Colors.white)),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 40,),
                                          SizedBox(
                                          width: 200,
                                          height: 40,
                                          child: SearchAnchor(
                                              builder: (BuildContext context, SearchController controller) {
                                            return SearchBar(
                                              controller: controller,
                                              padding: const MaterialStatePropertyAll<EdgeInsets>(
                                                  EdgeInsets.symmetric(horizontal: 16.0)),
                                              onTap: () {
                                                controller.openView();
                                              },
                                              onChanged: (_) {
                                                controller.openView();
                                              },
                                              leading: const Icon(Icons.search),
                                              
                                            );
                                          }, suggestionsBuilder:
                                                  (BuildContext context, SearchController controller) {
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
                  ),
                ),
                                                  
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _CustomHeaderDelegate(),
                ),
                SliverFillRemaining(
                  
                  child: TabBarView(
                    
                    children: [
                      
                      // Content for Tab 1 (GridView with images)
                      GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5, // Number of columns
                        ),
                        itemCount: imagePaths.length, // Number of images
                        itemBuilder: (context, index) {
                          return Image.asset('asset/images/voiceklip_logo_only.png'); 
                          // Replace with your image paths
                        },
                       
                      ),
                      
                      // Content for Tab 2
                      ListView(
                        children: const [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 2
                        ],
                      ),
                      ListView(
                        children:const [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 1
                        ],
                      ),
                      ListView(
                        children: const [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 1
                        ],
                      ),
                      ListView(
                        children: const [
                          ListTile(title: Text('Item 1')),
                          // Add more content for Tab 1
                        ],
                      ),
                      
                    ],
                  ),
                  
                ),
                // Sliver to hold the custom footer
                                      SliverToBoxAdapter(
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.fitWidth,
                                              image: AssetImage('asset/images/header_bg.png'), // Replace with your image path
                                            ),
                                          ),
                                          child: const Column(
                                            children: [
                                              // Add content for the custom footer here
                                              Text(
                                                'Custom Footer Content',
                                                style: TextStyle(fontSize: 24, color: Colors.white),
                                              ),
                                              SizedBox(height: 20), // Adjust the spacing
                                              // Add any other widgets or content for your footer
                                            ],
                                          ),
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

class _CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const TabBar(
      dividerColor: Colors.transparent,
      tabs: [
        Tab(icon: Icon(Icons.home, color: Colors.white),),
        Tab(icon: Icon(Icons.notification_add, color: Colors.white),),
        Tab(icon: Icon(Icons.mail, color: Colors.white),),
        Tab(icon: Icon(Icons.mic, color: Colors.white),),
        Tab(icon: Icon(Icons.social_distance, color: Colors.white),),
      ],
    );
  }

  @override
  double get maxExtent => 48; // Adjust the height as needed

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

void main() {
  runApp(MaterialApp(
    home: VoiceKlipHome(),
  ));
}
