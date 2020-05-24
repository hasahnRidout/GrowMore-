import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSlides extends StatefulWidget {
  final ValueChanged<bool> onChanged;

  IntroSlides({Key key, @required this.onChanged}) : super(key: key);

  @override
  _IntroSlideState createState() => _IntroSlideState();
}

class _IntroSlideState extends State<IntroSlides> {
  var slides = <Slide>[];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        // title: "Grow More",
        description:
            "Grow More is a great way to learn about sustainable farming and organic gardening",
        pathImage: "assets/images/loginScreenImages/growMorenew.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        //title: "PENCIL",
        description: "You can learn fow to grow plants",
        pathImage: "assets/images/loginScreenImages/growMorenew.png",
        backgroundColor: Color(0xFF24661A),
      ),
    );
    slides.add(
      new Slide(
        // title: "Grow More",
        description: 'Grow more and get more rewards',
        pathImage: "assets/images/loginScreenImages/growMorenew.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      onDonePress: () => widget.onChanged(true),
      onSkipPress: () => widget.onChanged(true),
    );
  }
}
