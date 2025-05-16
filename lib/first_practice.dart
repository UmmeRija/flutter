import 'package:flutter/material.dart';
import 'package:my_app/date_and_time.dart';

class FirstPractice extends StatefulWidget {
  const FirstPractice({super.key});

  @override
  State<FirstPractice> createState() => _FirstPracticeState();
}

class _FirstPracticeState extends State<FirstPractice> {
  String? date;
  String? gender = "Male";

  getdate() async {
    DateTime? pickeddate = await showDatePicker(
      context: context,
      firstDate: DateTime(1995),
      lastDate: DateTime.now(),
    );
    if (pickeddate != null) {
      String temp = "${pickeddate.day}/${pickeddate.month}/${pickeddate.year}";
      setState(() {
        date = temp;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addmission Form"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 550,
            width: double.infinity,

            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              children: [
                Text(
                  "Enter Your Information:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: Text("First Name"),
                      labelStyle: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: Text("Last Name"),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: Text("Email"),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      label: Text("Pasword"),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Gender" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                          ],
                        ),
                        Row(
                          children: [

                            Radio(
                              value: "Male",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                            ),
                            Text("Male"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: "Female",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                            ),
                            Text("Female"),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: "Other",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                            ),
                            Text("Other"),
                          ],
                        ),
                      ],

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Stack(

                      children:[ TextField(
                        // enabled: false,
                        decoration: InputDecoration(
                          hintText:
                          date == null ? "14/05/2025" : date.toString(),

                          hintStyle: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                        Positioned(
                          right: 0,
                          child: IconButton(
                            onPressed: () {
                              print("object");
                              getdate();
                            },
                            icon: Icon(Icons.calendar_month),
                            color: Colors.grey.shade800,
                          ),),
                      ]
                  ),
                ),

                Center(child: ElevatedButton(onPressed: (){}, child:Text("Submmit")))
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
