import 'package:flutter/material.dart';
import 'package:notes/core/constants/app_assets.dart';

class VideoShape extends StatelessWidget {
  const VideoShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Positioned(
      top: size.height * .75,
      left: size.width * .3,
      child: Image.asset(
        AppAssets.videoShape,
        width: 150,
      ),
    );
  }
}
