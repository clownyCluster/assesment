import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  Btn({required this.onPress, required this.text, required this.color});
  final void Function() onPress;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Btn extends StatelessWidget {
//   final Function onPress;
//   final String text;
//   final Color color;

//   Btn({this.onPress, this.text, this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),
//       child: Material(
//         elevation: 5.0,
//         color: color,
//         borderRadius: BorderRadius.circular(30.0),
//         child: MaterialButton(
//           onPressed: onPress,
//           minWidth: 200.0,
//           height: 42.0,
//           child: Text(
//             text,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
