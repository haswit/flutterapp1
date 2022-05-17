import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'contraints.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              margin: EdgeInsets.all(0),
              color: Color.fromARGB(94, 158, 158, 158),
              elevation: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 30, left: 30, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 40, child: LogoImage),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontSize: 18))
                      ],
                    ),
                  ),
                  // Image.network("assets/icons/setting-lines.png")
                ],
              ),
            )
          ],
        ),
        imageSlider(context),
      ]),
      decoration: BoxDecoration(gradient: bg),
    );
  }
}

Swiper imageSlider(context) {
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        "https://lh3.googleusercontent.com/wIcl3tehFmOUpq-Jl3hlVbZVFrLHePRtIDWV5lZwBVDr7kEAgLTChyvXUclMVQDRHDEcDhY=w640-h400-e365-rj-sc0x00ffffff",
        fit: BoxFit.fitHeight,
      );
    },
    itemCount: 10,
    viewportFraction: 0.7,
    scale: 0.8,
  );
}
