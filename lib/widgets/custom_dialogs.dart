import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:morales_mobprog/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_font.dart';
import 'package:cached_network_image/cached_network_image.dart';

customDialog(BuildContext context, {required title, required content}) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: <Widget>[
      ElevatedButton(
        child: const Text('Okay'),
        style: ElevatedButton.styleFrom(
          backgroundColor: FB_DARK_PRIMARY,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}

customOptionDialog(
  BuildContext context, {
  required title,
  required content,
  required Function onYes,
}) {
  AlertDialog alertDialog = AlertDialog(
    title: CustomFont(text: title, fontSize: 30.sp, color: FB_DARK_PRIMARY),
    content: CustomFont(text: content, fontSize: 20.sp, color: FB_DARK_PRIMARY),
    actions: <Widget>[
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: CustomFont(text: 'No', color: FB_DARK_PRIMARY, fontSize: 18.sp),
      ),
      ElevatedButton(
        child: CustomFont(
          text: 'Yes',
          color: FB_TEXT_COLOR_WHITE,
          fontSize: 18.sp,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: FB_SECONDARY,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
          onYes();
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}

customShowImageDialog(BuildContext context, {required imageUrl}) {
  AlertDialog alertDialog = AlertDialog(
    content: Container(
      height: 300.h,
      child: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(
                color: FB_DARK_PRIMARY,
                value: downloadProgress.progress,
              ),
          errorWidget: (context, url, error) => Icon(Icons.error, size: 100.sp),
        ),
      ),
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}
