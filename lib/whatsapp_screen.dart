import 'package:flutter/material.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> chats = [
      {
        "name": "Ayesha Khan",
        "message": "Are you coming to the event tomorrow?",
        "image": "https://randomuser.me/api/portraits/women/44.jpg",
        "time": "9:15 AM",
      },
      {
        "name": "Ali Raza",
        "message": "Bro, I sent the files. Check your email.",
        "image": "https://randomuser.me/api/portraits/men/32.jpg",
        "time": "10:30 AM",
      },
      {
        "name": "Sana Malik",
        "message": "LOL 😄 that was hilarious!",
        "image": "https://randomuser.me/api/portraits/women/68.jpg",
        "time": "11:05 AM",
      },
      {
        "name": "Hamza Sheikh",
        "message": "Let's meet at the café by 6?",
        "image": "https://randomuser.me/api/portraits/men/90.jpg",
        "time": "1:20 PM",
      },
      {
        "name": "Iqra Ahmed",
        "message": "Don’t forget the meeting at 10 AM.",
        "image": "https://randomuser.me/api/portraits/women/12.jpg",
        "time": "2:10 PM",
      },
      {
        "name": "Faisal Mirza",
        "message": "That video you sent was amazing!",
        "image": "https://randomuser.me/api/portraits/men/24.jpg",
        "time": "3:45 PM",
      },
      {
        "name": "Nida Arif",
        "message": "Thanks! Got it now 😊",
        "image": "https://randomuser.me/api/portraits/women/19.jpg",
        "time": "4:00 PM",
      },
      {
        "name": "Zain Haider",
        "message": "Call me when you’re free.",
        "image": "https://randomuser.me/api/portraits/men/11.jpg",
        "time": "5:25 PM",
      },
      {
        "name": "Mehwish Tariq",
        "message": "I’ll send you the details in a bit.",
        "image": "https://randomuser.me/api/portraits/women/51.jpg",
        "time": "6:15 PM",
      },
      {
        "name": "Bilal Khan",
        "message": "All set for the weekend trip?",
        "image": "https://randomuser.me/api/portraits/men/7.jpg",
        "time": "7:00 PM",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        actions: [Icon(Icons.camera_alt_outlined),
          Icon(Icons.more_vert) ],

        leading:  Padding(
          padding: const EdgeInsets.all(10),
          child: Text("WhatsApp" , style: TextStyle(fontSize: 15) ,),
        )),


      body: ListView.builder(itemBuilder: (context,index){
        return Container (
          height: 80,
          width: 90,
          decoration: BoxDecoration(
            // color: Colors.red,
             border: Border.all(color: Colors.black , width: 1)
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white70,
              )
            ],
          ),

        );


      }

        // bottom: Row(
        //   children: [
        //     Icon(Icons.search),
        //     Expanded(child: TextField(
        //       decoration: InputDecoration(hintText: "Ask Meta AI or Search"),
        //     )
        //     ),
        //   ],
        // ),


      // bottomNavigationBar: BottomNavigationBar(items: Row(
      //   children: [
      //     Container(
      //       child: Text("All"),
      //
      //     )
      //   ],
      // )),

    ),
    );
  }
}