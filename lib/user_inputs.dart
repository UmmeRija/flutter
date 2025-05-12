import 'package:flutter/material.dart';

class UserInputs extends StatefulWidget {
  const UserInputs({super.key});

  @override
  State<UserInputs> createState() => _UserInputsState();
}

class _UserInputsState extends State<UserInputs> {
  bool istrue = false;
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(child: Text("User Inputs")),
      ),
      // body: ListTile(
      //   leading: CircleAvatar(child: Text("UR"),),
      //   title: Text("Rija"),
      //   subtitle: Text("what are you doing??"),
      //   trailing: Text("03212102140"),
      //
      // ),

      //   checkbox costum
      body: Center(
        child: Column(
          children: [
            Checkbox(
              value: istrue,
              onChanged: (value) {
                setState(() {
                  istrue = !istrue;
                });
                print(istrue);
              },
            ),
            Text("Agree to Term's And Conditions."),

            // checkbox
            // body: CheckboxListTile(value: istrue, onChanged: (value){
            //   setState(() {
            //     istrue = false;
            //   });
            //   print(istrue);
            // }),

            // radio button
            Row(
              children: [
                Radio<String>(
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
    );
  }
}
