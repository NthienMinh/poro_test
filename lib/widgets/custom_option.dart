import 'package:flutter/material.dart';

class CustomOption extends StatelessWidget {
  String dataText;
  IconData dataIcon;
  CustomOption({required this.dataText, required this.dataIcon, super.key});

  @override
  Widget build(BuildContext context) {
    final double mainHeight = MediaQuery.of(context).size.height;
    final double mainWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: mainHeight * 0.2,
        width: mainWidth * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                child: Icon(
              dataIcon,
              color: Colors.white,
              size: 50,
            )),
            Text(
              dataText,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
