import 'package:afya_admin/utils/assets.dart';
import 'package:afya_admin/utils/colors.dart';
import 'package:afya_admin/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../utils/strings.dart';
import '../auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> get _waitBuilder async {
    return await defaultSplashWaitTime.milliseconds.delay.then((value) =>
        const LoginScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide));
  }

  late Future<void> waitBuilder;

  @override
  void initState() {
    // TODO: implement initState
    waitBuilder = _waitBuilder;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: waitBuilder,
      builder: (context, snap) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Column(
                  children: [
                    Text(
                      appTitleText,
                      style: boldTextStyle(color: textColorOnPrimary, size: 44),
                    ),
                    SvgPicture.asset(pulseSvg)
                        .withSize(height: 200, width: context.width())
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 40),
                  child: SpinKitThreeBounce(
                    color: colorOnPrimary,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
