import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String dataText;
  String dataImage;
  CustomButton({required this.dataText, required this.dataImage, super.key});

  @override
  Widget build(BuildContext context) {
    final double mainWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: mainWidth * 0.2,
        width: mainWidth * 0.2,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFFBB0000).withOpacity(0.15),
                  offset: Offset(0, 0),
                  blurRadius: 20,
                  spreadRadius: 3)
            ],
            border: Border.all(
                color: const Color(0xFFBB0000),
                width: 1.0,
                style: BorderStyle.solid),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: mainWidth * 0.1,
                width: mainWidth * 0.1,
                child: Image.asset(dataImage)),
            Text(
              dataText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
