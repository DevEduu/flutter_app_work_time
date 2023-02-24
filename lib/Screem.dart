import 'package:flutter/material.dart';
import 'package:flutter_app_work_time/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class ScreemInit extends StatefulWidget {
  const ScreemInit({super.key});

  @override
  State<ScreemInit> createState() => _ScreemInitState();
}

class _ScreemInitState extends State<ScreemInit> {
  int minuto1 = 0;
  int minuto2 = 0;
  int segundo1 = 0;
  int segundo2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: const Icon(Icons.adjust_rounded),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Icon(
            Icons.timelapse_outlined,
            color: kcolorGreen,
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.history,
            color: kcolorwhiter,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: Container(
                child: Text(
                  '....',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: 656,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TimeWidget(num: '$minuto1'),
                          TimeWidget(num: '$minuto2'),
                          const TimeWidget(
                            num: ':',
                            corText: kcolorGreen,
                            corBgContainer: Colors.transparent,
                          ),
                          TimeWidget(num: '$segundo1'),
                          TimeWidget(num: '$segundo2'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onPress: () {
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPress});
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 4,
      color: kcolorGreen,
      onPressed: onPress,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      minWidth: 100,
      child: Container(
        height: 50,
        width: 656,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.play_arrow_outlined,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              'Começar',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.num,
    this.corText = Colors.white,
    this.corBgContainer = kcolorGrey,
  });
  final String num;
  final Color corText;
  final Color corBgContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
      ),
      decoration: BoxDecoration(
          color: corBgContainer, borderRadius: BorderRadius.circular(8)),
      child: Text(
        num,
        style: GoogleFonts.robotoMono(
          fontSize: 160,
          fontWeight: FontWeight.bold,
          color: corText,
        ),
      ),
    );
  }
}
