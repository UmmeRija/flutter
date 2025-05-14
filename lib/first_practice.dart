import 'package:flutter/material.dart';
import 'package:my_app/date_and_time.dart';

class FirstPractice extends StatefulWidget {
  const FirstPractice({super.key});

  @override
  State<FirstPractice> createState() => _FirstPracticeState();
}

class _FirstPracticeState extends State<FirstPractice> {
  String? date;
  getdate() async{
    DateTime? pickeddate = await showDatePicker(context: context, firstDate: DateTime(1995), lastDate: DateTime.now());
  }
  if (pickeddate != null){

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title:Text("Addmission Form"),
        centerTitle:true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 500,
            width: double.infinity,

            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
            child: Column(
              children: [
                Text("Enter Your Information:" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: "First Name",
                        hintStyle:TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle:TextStyle(fontWeight: FontWeight.bold , fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: date == null ? "14/05/2025" : date().toString(),
                      suffixIcon: Icon(Icons.calendar_month, color: Colors.grey.shade800,),
                      hintStyle:TextStyle(color: Colors.grey.shade800, fontWeight: FontWeight.bold , fontSize: 15),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                      )

                    ),
                  ),
                )

              ],
            ),

          ),
        ],
      ),
    );
  }
}
