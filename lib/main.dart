import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_booking_app/utilities/images.dart';
import 'package:ticket_booking_app/widgets/reusableElevatedButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.only(right: 0,left: 0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                'Your tickets',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
              ),
            ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               GestureDetector(
                 onTap: (){
                   setState(() {
                     _isActive = true; // Toggle image state on tap
                   });
                 },
                 child: Image(
                     image: _isActive ? upcomingButtonActive : upcomingButtonInActive
                 ),
               ),
               SizedBox(width: 5,),
               GestureDetector(
                 onTap: (){
                   setState(() {
                     _isActive = false;
                   });
                 },
                 child: Image(
                     image: !_isActive ? historyButtonActive : historyButtonInactive
                 ),
               ),
             ],
           ),
            SizedBox(
              height: 20,
            ),
            _isActive ? Image(
                image: upcomingSwictherInitialImage,
            ) : HistoryPageView(),
            SizedBox(
              height: 20,
            ),
            _isActive ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: downloadButton,
                ),
                Image(
                  image: shareButton,
                ),
              ],
            ) : SizedBox(),
            SizedBox(
              height: 20,
            ),
            // Expanded(
            //   child: Container(
            //     height: 80,
            //     child: Padding(
            //       padding: EdgeInsets.only(bottom: 30, top: 0),
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(10.0),
            //         child: BottomNavigationBar(
            //           items: [
            //             BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            //             BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            //             BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            //           ],
            //           backgroundColor: Color.fromRGBO(31,31,31,1),
            //           fixedColor: Colors.white,
            //           onTap: (index) {
            //             // Handle navigation based on the tapped index
            //             if (index == 0) {
            //               // Navigate to the home screen
            //             } else if (index == 1) {
            //               // Navigate to the settings screen
            //             }
            //           },
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      // bottomNavigationBar:
      // Container(
      //   child: Padding(
      //     padding:  EdgeInsets.only(left: 16,right: 16),
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(20.0),
      //       child: BottomNavigationBar(
      //         items: [
      //           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //           BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
      //           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //         ],
      //         backgroundColor: Color.fromRGBO(31,31,31,1),
      //         fixedColor: Colors.white,
      //         onTap: (index) {
      //           // Handle navigation based on the tapped index
      //           if (index == 0) {
      //             // Navigate to the home screen
      //           } else if (index == 1) {
      //             // Navigate to the settings screen
      //           }
      //         },
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

class HistoryPageView extends StatelessWidget {
  const HistoryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 420,
              child: Image(
                  image: ticket1)
          ),
          Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 287,
              child: Image(
                  image: ticket2)
          ),
          Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 155,
              child: Image(
                  image: ticket3)
          ),

          Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 50), // Adjust the value as needed
                  Image(image: ticket4),
                ],
              ),),
          Positioned(
            left: 0.0,
            top: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 50), // Adjust the value as needed
                Image(image: ticket5),
              ],
            ),),
        ],
      ),
    );
  }
}
