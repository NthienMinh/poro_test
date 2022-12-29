import 'package:flutter/material.dart';
import 'package:poro_test/widgets/custom_option.dart';

void customSheet(BuildContext context,
    {required bool optionState, required VoidCallback onClose}) {
  final double mainWidth = MediaQuery.of(context).size.width;
  final double mainHeight = MediaQuery.of(context).size.height;
  showModalBottomSheet<void>(
    isDismissible: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    barrierColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: Container(
          height: mainHeight * 0.4,
          width: mainWidth * 0.9,
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color(0xFFBB0000),
                width: 1.0,
                style: BorderStyle.solid),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: const Color(0xFFBB0000),
          ),
          child: Stack(alignment: Alignment.topRight, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.start,
                    spacing: 5,
                    children: [
                      for (int i = 0; i < 6; i++)
                        CustomOption(
                          dataText: "Chi tiết",
                          dataIcon: Icons.document_scanner_rounded,
                        )
                    ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                onClose();
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(40.0)),
                  color: Colors.white,
                ),
                width: 45,
                height: 40,
                child: const Center(
                    child: Text(
                  "X",
                  style: TextStyle(fontSize: 17, color: Color(0xFFBB0000)),
                )),
              ),
            ),
          ]),
        ),
      );
    },
  );
}
