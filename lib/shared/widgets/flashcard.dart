import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../core.dart';

// class FlashCard extends StatelessWidget {
//   final Tango tango;
//   const FlashCard({
//     Key? key,
//     required this.tango,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(getScreenHeight(32)),
//       child: Container(
//         padding: EdgeInsets.all(getScreenHeight(8)),
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.all(Radius.circular(getScreenHeight(20))),
//           border: Border.all(
//             color: borderColor,
//             width: getScreenHeight(1),
//           ),
//         ),
//         child: Column(
//           children: [
//             Text(
//               tango.japaneseMain.toString(),
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: getScreenHeight(22),
//                 color: primaryColor,
//                 fontFamily: fontJP,
//               ),
//             ),
//             SizedBox(height: getScreenHeight(8)),
//             Text(
//               tango.japaneseExtra.toString(),
//               style: TextStyle(
//                 fontSize: getScreenHeight(22),
//                 color: primaryColor,
//                 fontFamily: fontJP,
//               ),
//             ),
//             SizedBox(height: getScreenHeight(8)),
//             Text(
//               tango.means.toString(),
//               style: TextStyle(
//                 fontFamily: fontVNBold,
//                 fontSize: getScreenHeight(18),
//                 color: textColor,
//               ),
//             ),
//             SizedBox(height: getScreenHeight(32)),
//             Text(
//               tango.exJP1.toString(),
//               style: TextStyle(
//                 fontSize: getScreenHeight(18),
//                 color: textColor,
//                 fontFamily: fontJP,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: getScreenHeight(8)),
//             Text(
//               tango.exMean1.toString(),
//               style: TextStyle(
//                 fontSize: getScreenHeight(18),
//                 color: textColor,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: getScreenHeight(8)),
//             Text(
//               tango.exJP2.toString(),
//               style: TextStyle(
//                 fontSize: getScreenHeight(18),
//                 color: textColor,
//                 fontFamily: fontJP,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: getScreenHeight(8)),
//             Text(
//               tango.exMean2.toString(),
//               style: TextStyle(
//                 fontSize: getScreenHeight(18),
//                 color: textColor,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class FlashCard extends StatelessWidget {
  final Tango tango;
  const FlashCard({
    Key? key,
    required this.tango,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getScreenHeight(32)),
      child: FlipCard(
        front: Container(
          padding: EdgeInsets.all(getScreenHeight(8)),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius:
                BorderRadius.all(Radius.circular(getScreenHeight(20))),
            border: Border.all(
              color: borderColor,
              width: getScreenHeight(1),
            ),
          ),
          child: Center(
            child: Text(
              tango.japaneseMain.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getScreenHeight(22),
                color: primaryColor,
                fontFamily: fontJP,
              ),
            ),
          ),
        ),
        back: Container(
          padding: EdgeInsets.all(getScreenHeight(8)),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius:
                BorderRadius.all(Radius.circular(getScreenHeight(20))),
            border: Border.all(
              color: borderColor,
              width: getScreenHeight(1),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tango.japaneseMain.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getScreenHeight(22),
                    color: primaryColor,
                    fontFamily: fontJP,
                  ),
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  tango.japaneseExtra.toString(),
                  style: TextStyle(
                    fontSize: getScreenHeight(22),
                    color: primaryColor,
                    fontFamily: fontJP,
                  ),
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  tango.means.toString(),
                  style: TextStyle(
                    fontFamily: fontVNBold,
                    fontSize: getScreenHeight(18),
                    color: textColor,
                  ),
                ),
                SizedBox(height: getScreenHeight(32)),
                Text(
                  tango.exJP1.toString(),
                  style: TextStyle(
                    fontSize: getScreenHeight(18),
                    color: textColor,
                    fontFamily: fontJP,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  tango.exMean1.toString(),
                  style: TextStyle(
                    fontSize: getScreenHeight(18),
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  tango.exJP2.toString(),
                  style: TextStyle(
                    fontSize: getScreenHeight(18),
                    color: textColor,
                    fontFamily: fontJP,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(8)),
                Text(
                  tango.exMean2.toString(),
                  style: TextStyle(
                    fontSize: getScreenHeight(18),
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
