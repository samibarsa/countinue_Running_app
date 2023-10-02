import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test_app/core/utils/anyscrean.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const AnyScrean()),
    );
  }

  Widget buildImage(String assetName, [double width = 350]) {
    return SvgPicture.asset('asset/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
        fontSize: 12.0, color: Color(0xffCDCDCD), fontWeight: FontWeight.w400);

    final pageDecoration = PageDecoration(
        titleTextStyle: const TextStyle(
            fontSize: 21.0, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: bodyStyle,
        bodyPadding:
            const EdgeInsets.only(top: 12, left: 32.5, right: 32.5, bottom: 0),
        pageColor: const Color(0xff2f3c50),
        imagePadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.06, bottom: 0));

    return ClipRRect(
      borderRadius: BorderRadius.circular(64),
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: const Color(0xff2f3c50),
        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        globalHeader: const Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 16, right: 16),
            ),
          ),
        ),
        globalFooter: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.064),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.069,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: MaterialButton(
                  color: const Color(0xff7B61FF),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next → ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                )),
          ),
        ),
        pages: [
          PageViewModel(
            title: "Learn as you go",
            body:
                "Download the Stockpile app and master the market with our mini-lesson.",
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Run",
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Kids and teens",
            body:
                "Kids and teens can track their stocks 24/7 and place trades that you approve.",
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: false,
        showDoneButton: false,
        showNextButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.only(bottom: 16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.symmetric(horizontal: 3),
          size: Size(4.7, 4.0),
          color: Color(0xff785470),
          activeSize: Size(16.97, 4.0),
          activeColor: Color(0xffde437a),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Color(0xff2f3c50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
