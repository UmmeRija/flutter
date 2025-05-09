// import 'package:flutter/material.dart';
//
// class CardDynamic extends StatelessWidget {
//   const CardDynamic({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String,dynamic>> animals= [
//       {
//         "name": "Golden Retriever",
//         "description": "Friendly and intelligent dog, great for families.",
//         "price": 800,
//         "suitablePlaceToLive": "House with yard",
//         "category": "Pet"
//       },
//       {
//         "name": "Persian Cat",
//         "description": "Quiet, affectionate breed with long hair.",
//         "price": 600,
//         "suitablePlaceToLive": "Indoor apartment",
//         "category": "Pet"
//       },
//       {
//         "name": "African Grey Parrot",
//         "description": "Highly intelligent bird with ability to mimic speech.",
//         "price": 1200,
//         "suitablePlaceToLive": "Indoor cage with space",
//         "category": "Exotic Pet"
//       },
//       {
//         "name": "Koi Fish",
//         "description": "Colorful ornamental fish, symbol of luck in Asia.",
//         "price": 50,
//         "suitablePlaceToLive": "Outdoor pond",
//         "category": "Exotic Pet"
//       },
//       {
//         "name": "Dairy Cow",
//         "description": "High milk-producing breed, gentle temperament.",
//         "price": 1500,
//         "suitablePlaceToLive": "Farm or pasture",
//         "category": "Farm Animal"
//       },
//       {
//         "name": "Angora Rabbit",
//         "description": "Soft wool-producing rabbit, very docile.",
//         "price": 100,
//         "suitablePlaceToLive": "Indoor hutch or backyard",
//         "category": "Pet/Farm Animal"
//       },
//       {
//         "name": "Bearded Dragon",
//         "description": "Hardy reptile, great for beginner owners.",
//         "price": 70,
//         "suitablePlaceToLive": "Heated terrarium",
//         "category": "Exotic Pet"
//       }
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("Cards"),
//       ),
//       body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       mainAxisSpacing: 10,
//       crossAxisSpacing: 10,
//       ),
//         itemBuilder: animals.length,
//         gridDel
//       ),
//     );
//   }
// }
