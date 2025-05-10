import 'package:flutter/material.dart';

class Newone extends StatefulWidget {
  const Newone({super.key});

  @override
  State<Newone> createState() => _NewoneState();
}

class _NewoneState extends State<Newone> {
    List<Widget> screens = [Home(), Container(), Container(), Container()];
  int currentIndex =0;

    @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
          leadingWidth: 150,
          leading: Center(
            child: Text(
              "WhatsApp",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(tabs:

          [

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade400,


              ),

                onPressed: (){}, child: Text("All" , style: TextStyle(color:Colors.grey.shade900 ),)),
            ElevatedButton(onPressed: (){}, child: Text("Unread" , style: TextStyle(color:Colors.grey.shade900 ),)),
            ElevatedButton(onPressed: (){}, child: Text("Favorites" , style: TextStyle(color:Colors.grey.shade900))),
            ElevatedButton(onPressed: (){}, child: Text("Groups" , style: TextStyle(color:Colors.grey.shade900))),
            IconButton(onPressed: (){}, icon:Icon(Icons.add , color:Colors.grey.shade900)),
          ],
              dividerColor: Colors.transparent,

          ),

        ),


        body: screens[currentIndex],
        floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.green,child: Center(child: Icon(Icons.message,color: Colors.white,)),),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value){
            setState(() {
              currentIndex= value;
            });
          },
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.update_outlined),label: "Updates"),
            BottomNavigationBarItem(icon: Icon(Icons.person_3),label: "Communities"),
            BottomNavigationBarItem(icon: Icon(Icons.phone),label: "Calls"),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chats = [
      {
        "name": "Ayesha Khan",
        "message": "Are you coming to the event tomorrow?",
        "image": "https://randomuser.me/api/portraits/women/44.jpg",
        "time": "9:15 AM",
      },{
        "name": "Ayesha Khan",
        "message": "Are you coming to the event tomorrow?",
        "image": "https://randomuser.me/api/portraits/women/44.jpg",
        "time": "9:15 AM",
      },{
        "name": "Ayesha Khan",
        "message": "Are you coming to the event tomorrow?",
        "image": "https://randomuser.me/api/portraits/women/44.jpg",
        "time": "9:15 AM",
      },{
        "name": "Ayesha Khan",
        "message": "Are you coming to the event tomorrow?",
        "image": "https://randomuser.me/api/portraits/women/44.jpg",
        "time": "9:15 AM",
      },{
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

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        String name = chats[index]['name'];
        String image = chats[index]['image'];
        String message = chats[index]['message'];
        String time = chats[index]['time'];
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(image)),
          title: Text(name),
          subtitle: Text(message),
          trailing: Text(time),
        );
      },
    );
  }
}

// Container(
// height: 50,
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(color: Colors.black)
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
// CircleAvatar(
// backgroundImage: Text(chats[index]['image']),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(chats[index]['name'] , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),),
// Text(chats[index]['message'] , style: TextStyle(color: Colors.black),),
// ],
// ),
//
// Text(chats[index]['time'] , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),)
// ],
// ),
// ),
// );
