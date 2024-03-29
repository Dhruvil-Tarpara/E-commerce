import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/utils/udf/udf.dart';
import 'package:ecommerce/src/views/login/sign_up.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();

  final ValueNotifier<int> initPage = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      body: PageView.builder(
        onPageChanged: (value) {
          initPage.value = value;
        },
        controller: _controller,
        itemCount: Global.page.length,
        itemBuilder: (context, index) => SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Intro(
              index: index,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder(
              valueListenable: initPage,
              builder: (context, value, _) => Row(
                children: List.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 6,
                          width: (value == (index)) ? 18 : 12,
                          decoration: BoxDecoration(
                            shape: (value == (index))
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            color: (value == (index))
                                ? ConstColor.black
                                : ConstColor.grey,
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (initPage.value < Global.page.length - 1) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  Navigator.of(context).pushReplacement(
                    UDF.pageTransition(page: const SignUpPage()),
                  );
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(ConstColor.black),
                  shape: const MaterialStatePropertyAll(CircleBorder())),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: ConstColor.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Intro extends StatelessWidget {
  final int index;
  const Intro({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            height: height(context: context) * 0.48,
            width: width(context: context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(Global.page[index][ConstString.introimage]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height(context: context) * 0.04,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FxText(
              text: Global.page[index][ConstString.introTitle],
              size: 24,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            FxText(
              text: Global.page[index][ConstString.introSubTitle],
              size: 14,
              color: ConstColor.black,
            ),
          ],
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    var roundnessFactor = 30.0;
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.quadraticBezierTo(size.width, size.height * 0.74 + roundnessFactor * 2,
        size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
