import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:voiceklip_app/views/pop_screen.dart';



class TestT extends StatefulWidget {
const TestT({Key? key}) : super(key: key);

  @override
  State<TestT> createState() => _TestTState();
}

class _TestTState extends State<TestT> with SingleTickerProviderStateMixin {
  

  
  Icon customIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Form(
        child: SafeArea(
          
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
                          padding: const EdgeInsets.fromLTRB(0,40,0,0),
                          child: Row(
                            children: [
                              const SizedBox(width: 40,),
                              Image.asset('asset/images/voiceklip_logo_only.png', height: 50,),
                              const SizedBox(width: 80,),
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
                          
                          const Padding(
                            padding:  EdgeInsets.fromLTRB(20,0,2,2),
                            child: Text('VoiceKLIP',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                          ),
                                  

                      ],
                    ),

                  ],
                ),

              //icon nav
               Column(
                 children: [
                      //1st row icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround, // Adjust as needed
                        children: [
                          
                          
                          IconButton(
                            icon: Icon(Icons.voice_chat, color: Colors.white),
                            onPressed: () {
                              // Add your logic here
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.pages, color: Colors.white),
                            onPressed: () {
                              // Add your logic here
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.social_distance, color: Colors.white),
                            onPressed: () =>context.go('/pop_screen'),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 30,),
                      //2nd row
                      // Add the 3x3 grid of buttons here
                      GridView.count(
                         childAspectRatio: 1.5,
                        crossAxisSpacing: 16.0, // Adjust this value to control horizontal spacing
                        mainAxisSpacing: 16.0, 
                        crossAxisCount: 3, // 3 buttons per row
                        shrinkWrap: true,
                        children: List.generate(12, (index) {
                          // Customize the text for each button
                          String buttonText = 'Button $index';
                          if (index == 0) {
                            buttonText = 'Pop';
                          } else if (index == 1) {
                            buttonText = 'Kids';
                          } else if (index == 2) {
                            buttonText = 'Jazz';
                          } else if (index == 3) {
                            buttonText = 'Bossa';
                          } else if (index == 4) {
                            buttonText = 'Reggae';
                          }else if (index == 5) {
                            buttonText = 'Poetry';
                          }else if (index == 6) {
                            buttonText = 'Rap';
                          }else if (index == 7) {
                            buttonText = 'Rock';
                          }else if (index == 8) {
                            buttonText = 'Spoken';
                          }else if (index == 9) {
                            buttonText = 'Ads Music';
                          }else if (index == 10) {
                            buttonText = 'Instrumental';
                          }else if (index == 11) {
                            buttonText = 'Funk';
                          }

                          
                          return GestureDetector(
                            onTap: () {
                              if (index == 0){

                                context.go('/pop_screen');
                                // Navigator.push(
                                // context,
                                // MaterialPageRoute(
                                //   builder: (context) => PopScreen(),
                                //   ),
                                // );
                              }
                            },
                            child: Container(
                               // Adjust the width to resize the button
                              
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the corner radius as needed
                              color: const Color.fromARGB(255, 60, 167, 255), // Customize the button color
                            ),
                              child: Center(
                                child: Text(style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                )
                              
                                                        ,buttonText),
                              ),
                            ),
                          );
                        }),
                      ),
                        ],
                      ),
                      
                      const SizedBox(height: 15.0,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                     
                      children: [
                        
                      Column(
                        children: [
                          Row(
                                 
                            children: [
                              Image.asset('asset/images/puma_logo.png', height: 60,),
                              const SizedBox(width: 10.0,),
                              Image.asset('asset/images/puma_logo.png', height: 60,),
                            ],
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            
                            children: [
                              Image.asset('asset/images/puma_logo.png', height: 60,),
                              const SizedBox(width: 10.0,),
                              Image.asset('asset/images/puma_logo.png', height: 60,),
                            ],
                          ),
                        ],
                      ),
                      
                      GestureDetector(
                        onTap: () =>context.go('/premium_profile') ,
                        child: _profileImage()),
                      ],
                    ),   

              ],
            ),
          
           
          ),

        ),
      ),
    );
  }
}

Widget _profileImage(){
  return Column(
    children: [
      Image.asset('asset/images/profile_pic.png', height: 88,width: 88,),
      const Text('2.5M Listeners', style: TextStyle(color: Colors.white),),
    ],
  );
 
}