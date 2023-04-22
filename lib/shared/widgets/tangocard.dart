import 'package:flutter/material.dart';

import '../../core.dart';

class TangoCard extends StatelessWidget {
  final Tango tango;
  final Function() audioFunction;
  final Function() favourtiesFunction;
  //final bool checkTango;
  const TangoCard({
    Key? key,
    required this.tango,
    required this.audioFunction,
    required this.favourtiesFunction,
    //required this.checkTango,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getScreenHeight(8)),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            tango.japaneseMain.toString(),
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: getScreenHeight(16),
                              fontFamily: fontJP,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: getScreenHeight(10)),
                          Text(
                            tango.japaneseExtra.toString(),
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: getScreenHeight(16),
                              fontFamily: fontJP,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "[${tango.type}]",
                        style: TextStyle(
                          color: textColor,
                          fontSize: getScreenHeight(16),
                          fontFamily: fontJP,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    tango.means.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: textColor,
                      fontSize: getScreenHeight(16),
                      fontFamily: fontVNBold,
                    ),
                  ),
                  Text(
                    tango.exJP1.toString(),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(
                      color: textColor,
                      fontFamily: fontJP,
                      fontSize: getScreenHeight(16),
                    ),
                  ),
                  Text(
                    tango.exMean1.toString(),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(
                      color: textColor,
                      fontSize: getScreenHeight(16),
                    ),
                  ),
                  tango.exJP2.toString() != ""
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tango.exJP2.toString(),
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              style: TextStyle(
                                color: textColor,
                                fontFamily: fontJP,
                                fontSize: getScreenHeight(16),
                              ),
                            ),
                            Text(
                              tango.exMean2.toString(),
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              style: TextStyle(
                                color: textColor,
                                fontSize: getScreenHeight(16),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            SizedBox(width: getScreenWidth(5)),
            Column(
              children: [
                SmallInkwellTangoCard(
                  onTap: audioFunction,
                  icon: const Icon(
                    Icons.volume_down_rounded,
                    color: rememberColor,
                  ),
                  color: rememberColor,
                ),
                SizedBox(height: getScreenHeight(10)),
                SmallInkwellTangoCard(
                    onTap: favourtiesFunction,
                    icon: const Icon(
                      Icons.add,
                      color: rememberColor,
                    ),
                    color: rememberColor),
              ],
            ),
          ],
        ),
        SizedBox(height: getScreenHeight(8)),
        Container(
          color: borderColor,
          height: getScreenHeight(1),
        ),
      ],
    );
  }
}

// class TangoCard2 extends StatelessWidget {
//   final Tango tango;
//   final Function() audioFunction;
//   final Function() favourtiesFunction;
//   const TangoCard2({
//     Key? key,
//     required this.tango,
//     required this.audioFunction,
//     required this.favourtiesFunction,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: getScreenHeight(8)),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Text(
//                   tango.japaneseMain.toString(),
//                   style: TextStyle(
//                     color: primaryColor,
//                     fontSize: getScreenHeight(16),
//                     fontFamily: fontJP,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(width: getScreenHeight(10)),
//                 Text(
//                   tango.japaneseExtra.toString(),
//                   style: TextStyle(
//                     color: primaryColor,
//                     fontSize: getScreenHeight(16),
//                     fontFamily: fontJP,
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               "[${tango.type}]",
//               style: TextStyle(
//                 color: textColor,
//                 fontSize: getScreenHeight(16),
//                 fontFamily: fontJP,
//               ),
//             ),
//           ],
//         ),
//         Text(
//           tango.means.toString(),
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: textColor,
//             fontSize: getScreenHeight(16),
//             fontFamily: fontVNBold,
//           ),
//         ),
//         Text(
//           tango.exJP1.toString(),
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: textColor,
//             fontFamily: fontJP,
//             fontSize: getScreenHeight(16),
//           ),
//         ),
//         Text(
//           tango.exMean1.toString(),
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: textColor,
//             fontSize: getScreenHeight(16),
//           ),
//         ),
//         tango.exJP2.toString() != ""
//             ? Column(
//                 children: [
//                   Text(
//                     tango.exJP2.toString(),
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: textColor,
//                       fontFamily: fontJP,
//                       fontSize: getScreenHeight(16),
//                     ),
//                   ),
//                   Text(
//                     tango.exMean2.toString(),
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: textColor,
//                       fontSize: getScreenHeight(16),
//                     ),
//                   ),
//                 ],
//               )
//             : const SizedBox.shrink(),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             OutlinedBtnwithIcon(
//               icon: Icons.volume_down_rounded,
//               color: primaryColor,
//               title: tangoAmThanh,
//               buttonFunction: audioFunction,
//             ),
//             OutlinedBtnwithIcon(
//               icon: Icons.add_circle,
//               color: rememberColor,
//               title: tangoGhiNho,
//               buttonFunction: favourtiesFunction,
//             ),
//           ],
//         ),
//         Container(
//           color: borderColor,
//           height: getScreenHeight(1),
//         ),
//       ],
//     );
//   }
// }
