import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Container(
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(40)),
            //   height: 120,
            //   child: Image.asset(
            //     "assets/images/S2Qq2.png",
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            const Text(
              "S2Q2 \nConsulting",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Text(
                "Simple. Satisfactory. Quick. Quality",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "We belive in quickly providing quality solution that are simple, and ensure costomer satisfacation.",
                style: TextStyle(fontSize: 26.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Our Packages",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
        child: Image.asset(
          "assets/images/lp_image.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1060) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
