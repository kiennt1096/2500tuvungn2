import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';

class FlashCardScreenView extends GetView<FlashCardScreenController> {
  const FlashCardScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as List<Tango>;
    arguments.shuffle();
    return Scaffold(
      appBar: myAppbar(flashCard),
      body: Container(
        color: backgroundColor,
        //padding: EdgeInsets.all(getScreenHeight(0)),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: ((context, index) => FlashCard(
                      tango: arguments[index],
                    )),
                itemCount: arguments.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
