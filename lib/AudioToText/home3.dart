import 'package:flutter/material.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Page'),
      ),
      body: const Center(
        child: Text('This is the Audio Page'),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:speech_to_text_google_dialog/speech_to_text_google_dialog.dart';
//
// class AudioPage extends StatefulWidget {
//   const AudioPage({super.key});
//
//   @override
//   _AudioPageState createState() => _AudioPageState();
// }
//
// class _AudioPageState extends State<AudioPage> {
//   String _text = "Press the button and start speaking";
//
//   void _startListening() async {
//     try {
//       String result = await SpeechToTextGoogleDialog.startListening(
//         language: "en-US",
//         hintText: "Listening...",
//       );
//       setState(() {
//         _text = result;
//       });
//     } catch (e) {
//       setState(() {
//         _text = "Error: ${e.toString()}";
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Audio Page'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 _text,
//                 style: const TextStyle(fontSize: 24.0),
//               ),
//             ),
//           ),
//           FloatingActionButton(
//             onPressed: _startListening,
//             child: const Icon(Icons.mic),
//           ),
//         ],
//       ),
//     );
//   }
// }
