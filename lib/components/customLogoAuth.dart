import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  // final String logo;

  const CustomLogoAuth({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "images/logoWajenhyttt.png",
        fit: BoxFit
            .contain, // Adjust the fit property to control how the image scales

        // height: 600,
        // width: 600,
      ),
    );
  } //end widget
} //end class




// Center(
//       child: Container(
//         alignment: Alignment.center,
//         width: 80,
//         height: 80,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             color: Colors.grey[200], borderRadius: BorderRadius.circular(70)),
//         child: Image.asset(
//           "images/logoWajenhyttt.png",
//           fit: BoxFit
//               .contain, // Adjust the fit property to control how the image scales

//           // height: 200,
//           // width: 300,
//         ),
//       ),
//     );