// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:provider/provider.dart';
// import 'package:travelappui/Model/model.dart';
// import 'package:travelappui/Model/provider_model.dart';
// import 'package:travelappui/myhome_page.dart';
//
// class MoreDetail extends StatefulWidget {
//   const MoreDetail({super.key, required this.location});
//   final LocationDetail location;
//
//   @override
//   State<MoreDetail> createState() => _MoreDetailState();
// }
//
// class _MoreDetailState extends State<MoreDetail> {
//   @override
//   Widget build(BuildContext context) {
//    // final provider = Provider.of<TranslationProvider>(context);
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Stack(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height / 2.25,
//                   width: MediaQuery.of(context).size.width,
//                   color: Colors.white,
//                 ),
//                 Hero(
//                   tag: widget.location.image,
//                   child: Container(
//                     height: MediaQuery.of(context).size.height / 2.25,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage(widget.location.image), fit: BoxFit.fill),
//                         borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(70))),
//                     child: Stack(
//                       children: [
//                         // for name address and location icon,
//                         Positioned(
//                           top: 300,
//                           left: 150,
//                           child: Column(
//                             children: [
//                               Text(
//                                 widget.location.name,
//                                 style: const TextStyle(
//                                     fontSize: 25,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Row(
//                                 children: [
//                                   const Icon(
//                                     Icons.location_on,
//                                     size: 30,
//                                     color: Colors.white,
//                                   ),
//                                   Text(
//                                     widget.location.address,
//                                     style: const TextStyle(
//                                         fontSize: 20,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         // For back button
//                         Positioned(
//                           top: 50,
//                           left: 5,
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Icon(
//                               Icons.arrow_back,
//                               size: 30,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         // for bookmark icon
//                         Positioned(
//                           top: 50,
//                           right: 15,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                                 color: Colors.white38,
//                                 borderRadius: BorderRadius.circular(200)),
//                             child: GestureDetector(
//                               child: const Icon(
//                                 Icons.bookmark,
//                                 size: 30,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: SizedBox(
//                 height: MediaQuery.of(context).size.height / 1.8,
//                 width: MediaQuery.of(context).size.width,
//                 child: RotatedBox(
//                     quarterTurns: 2,
//                     child: Image.asset(
//                       widget.location.image,
//                       fit: BoxFit.fill,
//                     )),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 height: MediaQuery.of(context).size.height / 1.8,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(70),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // For rating , temprature adn date
//                       ratingandMore(),
//                       const SizedBox(
//                         height: 85,
//                       ),
//                       const Text(
//                         "Description",
//                         style: TextStyle(
//                             fontSize: 25, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         widget.location.description,
//                         style: const TextStyle(
//                           fontSize: 17,
//                           color: Color.fromARGB(255, 231, 178, 200),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 42,
//                       ),
// // For last ,bottom parts
//                       Row(
//                         children: [
//                           Text(
//                             "\$ ${widget.location.price}",
//                             style: const TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                           const Spacer(),
//                           Container(
//                             height: 65,
//                             width: 170,
//                             decoration: BoxDecoration(
//                                 color: const Color(0xFFD38CAB),
//                                 borderRadius: BorderRadius.circular(50)),
//                             child: const Padding(
//                               padding: EdgeInsets.only(left: 33, top: 19),
//                               child: Text("Book Now",  style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold,),),
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const Positioned(
//               top: 500,
//               left: 30,
//               child: CircleAvatar(
//                 radius: 20,
//                 backgroundImage: AssetImage("Images/as.jpeg"),
//               ),
//             ),
//             const Positioned(
//               top: 500,
//               left: 55,
//               child: CircleAvatar(
//                 radius: 20,
//                 backgroundImage: AssetImage("Images/aa.png"),
//               ),
//             ),
//             const Positioned(
//               top: 500,
//               left: 80,
//               child: CircleAvatar(
//                 radius: 20,
//                 backgroundImage: AssetImage("Images/ab.jpeg"),
//               ),
//             ),
//             const Positioned(
//               top: 500,
//               left: 110,
//               child: CircleAvatar(
//                 radius: 20,
//                 backgroundColor: Color(0xFFD38CAB),
//                 child: Text(
//                   "28+",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//             ),
//             const Positioned(
//               left: 165,
//               top: 505,
//               child: Text(
//                 "Recommended",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Padding ratingandMore() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 25),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.star,
//             color: Colors.amber[900],
//             size: 30,
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           Text(
//             widget.location.rating.toString(),
//             style: const TextStyle(fontSize: 20, color: Color(0xFFB07C97)),
//           ),
//           const SizedBox(
//             width: 30,
//           ),
//           const Icon(
//             Icons.cloud,
//             color: Colors.blue,
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           Text(
//             "${widget.location.temperature}°C",
//             style: const TextStyle(fontSize: 20, color: Colors.blue),
//           ),
//           const SizedBox(
//             width: 30,
//           ),
//           const Icon(Icons.watch_later_rounded, color: Color(0xFFB07C97)),
//           const SizedBox(
//             width: 7,
//           ),
//           Text(
//             "${widget.location.time} Day",
//             style: const TextStyle(fontSize: 20, color: Color(0xFFB07C97)),
//           )
//         ],
//       ),
//     );
//   }
// }