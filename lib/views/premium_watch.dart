import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';
import 'package:voiceklip_app/components/mybutton.dart';
import 'package:voiceklip_app/views/billing_payment.dart';


class PremiumWatchVideo extends StatefulWidget {
  const PremiumWatchVideo({super.key});

  @override
  State<PremiumWatchVideo> createState() => _PremiumWatchVideoState();
}

class _PremiumWatchVideoState extends State<PremiumWatchVideo> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );

    _initializeVideoPlayerFuture = _controller.initialize();
  }
  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      body: Form(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: [
                  const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(45.0,0,8.0,0),
                    child: Row(
                      children: [
                         const Column(
                           children: [
                              Text('VoiceKLIP',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                            ),
                            Text('SING.EXPRESS.SHOW',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                           ],
                         ),
                         const SizedBox(width: 20,),
                    
                        Image.asset('asset/images/voiceklip_logo_only.png', height: 150,),
                      ],
                    ),
                  ),
                  

                 Row(
                   children: [
                     
                     Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 2.0),
                   child: MyButton(
                        onTap: () => context.go('/signup'),
                        text: 'GO BACK',
                        txtstyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        color: Colors.transparent,),
                 ),
                 
                   ],
                 ),

                 const SizedBox(height: 5,),
              //    Column(
              //      children: [
              //        RichText(
              //         text: TextSpan(
              //         text: '• ',
              //         style: const TextStyle(color: Colors.lightBlue, fontSize: 18),
              //         children: <TextSpan>[
              //           TextSpan(text: 'Software Developer',style: 
              //         GoogleFonts.ptSansNarrow(textStyle: const TextStyle(fontSize: 15))),
              //         ],
              //   ),
              // ),
              //      ],
              //    ),
               
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                     child: GestureDetector(
                      onTap:(){
                        // Wrap the play or pause in a call to `setState`. This ensures the
                        // correct icon is shown.
                        setState(() {
                          // If the video is playing, pause it.
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            // If the video is paused, play it.
                            _controller.play();
                          }
                        });
                      } ,
                       child: FutureBuilder(
                             future: _initializeVideoPlayerFuture,
                             builder: (context, snapshot) {
                               if (snapshot.connectionState == ConnectionState.done) {
                                 // If the VideoPlayerController has finished initialization, use
                                 // the data it provides to limit the aspect ratio of the video.
                                 return AspectRatio(
                                   aspectRatio: _controller.value.aspectRatio,
                                   // Use the VideoPlayer widget to display the video.
                                   child: VideoPlayer(_controller),
                                 );
                               } else {
                                 // If the VideoPlayerController is still initializing, show a
                                 // loading spinner.
                                 return const Center(
                                   child: CircularProgressIndicator(),
                                 );
                               }
                             },
                           ),
                     ),
                         
                   ),
                  
                 const SizedBox(height: 20,),
                 
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30.0),
                   child: Text(
                   'This is a paragraph of text in Flutter. You can use the Text widget to display text with various styles, such as font size, color, and alignment. It\'s a versatile widget for rendering text content in your Flutter app.',
                   style: TextStyle(
                     fontSize: 16,  // Adjust the font size as needed
                     color: Colors.blue,  // Set the text color
                   ),
                   textAlign: TextAlign.justify,  // Adjust the text alignment (e.g., TextAlign.center, TextAlign.left)
                 ),
                 ),
                  const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: MyButton(
                     onTap: () => context.go('/premium_payment'),
                      text: 'CREATE PREMIUM ACCOUNT',
                      txtstyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      color: const Color.fromARGB(255, 187, 21, 71),
                    ),
                  ),
                       const SizedBox(height: 30,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image.asset('asset/images/smart_logo.png', height: 60,),
                      const SizedBox(width: 20.0,),
                      Image.asset('asset/images/camella_logo.png', height: 60,),
                      const SizedBox(width: 20.0,),
                      Image.asset('asset/images/puma_logo.png', height: 60,),
                      ],
                    ),      
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

