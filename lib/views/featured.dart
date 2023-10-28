
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class FeaturedPerformance extends StatefulWidget {
  const FeaturedPerformance({super.key});

  @override
  State<FeaturedPerformance> createState() => _FeaturedPerformanceState();
  
}

class _FeaturedPerformanceState extends State<FeaturedPerformance> {
  late PageController _pageController;
  List<String> images = [
    // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg" ,
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8,initialPage: 1);
  }

  int activePage = 1;
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
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                GestureDetector(
                                  onTap: () => context.go('/premium_profile'),
                                  child: _profileImage()),
                                const SizedBox(width: 70,),
                                Column(
                                  children: [
                                    const Text('VOICEKLIP', style: TextStyle(
                                      fontSize: 29,
                                      color: Colors.white),),
                                Container(
                                height: 35,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0), // Adjust the corner radius as needed
                                  color: const Color.fromARGB(255, 255, 240, 23), // Customize the button color
                                ),
                                  child: const Center(
                                    child: Text(style:  TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,),
                                      'Listen'),
                                  ),
                              ),
                                  ],
                                ),
                                
                               
                             
                          ],
                        ),
                      ),
                        
                        
                        // Align(
                        //   alignment: Alignment.topRight,
                        //   child: Padding(
                        //     padding: const EdgeInsets.fromLTRB(0,0,20,0),
                        //     child: GestureDetector(
                        //       onTap: () => context.go('/'),
                        //       child: Container(
                        //         height: 35,
                        //         width: 90,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(8.0), // Adjust the corner radius as needed
                        //           color: const Color.fromARGB(255, 255, 240, 23), // Customize the button color
                        //         ),
                        //           child: const Center(
                        //             child: Text(style:  TextStyle(
                        //               fontWeight: FontWeight.bold,
                        //               fontSize: 15,),
                        //               'Home'),
                        //           ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                                

                    ],
                  ),

                ],
              ),

              Column(
                children: [
                  //1st row icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround, // Adjust as needed
                        children: [
                          
                          
                          IconButton(
                            icon: const Icon(Icons.home, color: Colors.white),
                            onPressed: () {
                              context.go('/login_screen');
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.notification_add, color: Colors.white),
                            onPressed: () {
                              // Add your logic here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.pages, color: Colors.white),
                            onPressed: () {
                              // Add your logic here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.shopping_bag, color: Colors.white),
                            onPressed: () {
                              // Add your logic here
                            },
                          ),
                          
                          IconButton(
                            icon: const Icon(Icons.mail, color: Colors.white),
                            onPressed: () {
                              // Add your logic here
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                  Column(
                    children: [
                      
                      SizedBox(
                        height: 180,
                        
                        
                        child: PageView.builder(
                        itemCount: images.length,
                        pageSnapping: true,
                        controller: _pageController,
                        onPageChanged: (page) {
                          setState(() {
                            activePage = page;
                          });
                        },
                        itemBuilder: (context, pagePosition) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            child: Image.network(images[pagePosition]),
                          );
                        }),
                        
                      ),
                      Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: indicators(images.length,activePage))
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Container(
           
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      _description(),
                                     
                                    ],
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        
                                        _advertisements(),
                                        
                                      ],
                                    ),
                                    
                                ],
                              ),
                              Container(
                                
                                child: Column(
                                children: [
                                    const SizedBox(height: 10.0,),
                                    Image.asset('asset/images/puma_logo.png', height: 50,),
                                    const SizedBox(height: 10.0,),
                                    Image.asset('asset/images/puma_logo.png', height: 50,),
                                    const SizedBox(height: 10.0,),
                                    Image.asset('asset/images/puma_logo.png', height: 50,),
                                   
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

List<Widget> indicators(imagesLength,currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? const Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(66, 214, 214, 214),
          shape: BoxShape.circle),
    );
  });
}
Widget _profileImage(){
  return Column(
    children: [
      Image.asset('asset/images/profile_pic.png', height: 88,width: 88,),
      const Text('PROFILE', style: TextStyle(color: Colors.white),),
    ],
  );
 
}





Widget _description() {
  return Container(
          height: 200,
          width: 280,
            // Adjust the width to resize the button
          
        //   decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10.0), // Adjust the corner radius as needed
        //   color: const Color.fromARGB(255, 60, 167, 255),// Customize the button color
        // ),
          child: const SingleChildScrollView(
            child:  Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 25, 0, 0),
                child: Column(
                  children: [
                    Text(style:  TextStyle(
                     
                      color: Color.fromARGB(255, 252, 255, 47),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),'Description '),
                     Text(
                      textAlign: TextAlign.justify,
                      style:  TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                  ],
                ),
              ),
            ),
          ),
        );
}
Widget _advertisements(){
  return Column(
    children: [
      Row(
              
        children: [
          Image.asset('asset/images/puma_logo.png', height: 50,),
          const SizedBox(width: 10.0,),
          Image.asset('asset/images/puma_logo.png', height: 50,),
          const SizedBox(width: 10.0,),
          Image.asset('asset/images/puma_logo.png', height: 50,),
        ],
      ),
     
    ],
  );
}