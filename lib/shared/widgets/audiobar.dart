import 'package:flutter/material.dart';

import '../../core.dart';

class AudioBar extends StatelessWidget {
  final TangoListScreenController? controller;
  final IconData? icon;
  final Function()? playButtonFunction;
  final String? audioDuration;
  final int? audioDurationNumber;
  final int? audioPostionNumber;
  const AudioBar({
    Key? key,
    this.controller,
    this.icon,
    this.playButtonFunction,
    this.audioDuration,
    this.audioDurationNumber,
    this.audioPostionNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(50),
      padding: EdgeInsets.all(getScreenHeight(5)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(getScreenWidth(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: playButtonFunction,
            child: Container(
              height: getScreenHeight(40),
              width: getScreenHeight(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getScreenWidth(30)),
                color: primaryColor,
              ),
              child: Center(
                  child: Icon(
                icon,
                color: backgroundColor,
              )),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: audioDuration == "00:00"
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.arrow_left),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nhấn để tải file nghe!",
                              style: TextStyle(
                                fontSize: getScreenHeight(12),
                                color: Colors.black,
                                fontFamily: fontVN,
                              ),
                            ),
                            Text(
                              "Yêu cầu kết nối Internet",
                              style: TextStyle(
                                fontSize: getScreenHeight(12),
                                color: Colors.black,
                                fontFamily: fontVN,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Slider(
                      value: audioPostionNumber!.toDouble(),
                      max: audioDurationNumber!.toDouble(),
                      onChanged: (value) {
                        controller!.seekToSec(value.toInt());
                      }),
            ),
          ),
          Text(
            audioDuration.toString(),
            style: TextStyle(
              fontSize: getScreenHeight(14),
              fontFamily: fontVNBold,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
