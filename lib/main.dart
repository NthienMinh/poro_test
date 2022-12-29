import 'package:flutter/material.dart';
import 'package:poro_test/widgets/custom_appbar.dart';
import 'package:poro_test/widgets/custom_bottomSheet.dart';
import 'package:poro_test/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Poro Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'N5 Kanji Cơ Bản 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool optionState = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(widget.title), body: _buildContentView());
  }

  Widget _buildContentView() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          color: Color(0xFFEAEAEA),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.start,
                        spacing: 5,
                        children: [
                          for (int i = 0; i < 15; i++)
                            CustomButton(
                              dataText: "Test",
                              dataImage: "assets/test.png",
                            )
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    optionState = !optionState;
                  });
                  customSheet(context, optionState: optionState, onClose: (() {
                    optionState = !optionState;
                    Navigator.pop(context);
                    setState(() {});
                  }));
                },
                child: optionState
                    ? Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)),
                          color: Color(0xFFBB0000),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Flexible(
                                child: Text(
                                  "Luyện Tập ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                ),
                              ),
                            ]),
                      )
                    : const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
