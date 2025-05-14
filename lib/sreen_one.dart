import 'package:flutter/material.dart';

class ScreeenOne extends StatelessWidget {
  const ScreeenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("My Cat", style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // width: double.infinity,
              // height: 400,
              // color: Colors.pink.shade100,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      suffixIcon: Icon(Icons.search)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://www.hepper.com/wp-content/uploads/2021/08/doll-face-persian-cat-lying-on-the-floor_Mustafa-ferhat-beksen_Shutterstock.jpg" ),
                          radius: 50,
                          // child: Image.network(),
                        ),
                        Text("First App" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 30),)
                      ],
                    ),
                  )
                ],
              ),
            ),


          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.pink.shade100,
                        height: 150,
                        width: 150,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.pink.shade100,
                      )
                    ],

                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Image.network("https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          child: Image.network("https://t4.ftcdn.net/jpg/09/82/88/07/360_F_982880716_dzjmZ9j5oFJzmZdflBEDPM0G7nKL2YTN.jpg"),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          child: Image.network("https://media.istockphoto.com/id/1065043970/photo/young-woman-sitting-on-edge-looks-out-at-view.jpg?s=612x612&w=0&k=20&c=zXlF6EJwCHDAtEJ_kh8zs6PqliCKZA75F93ffAkJURY="),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )

        ],

      ),
    );
  }
}
