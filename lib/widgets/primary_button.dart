import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:qofi_comp/constants/ui_helpers.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.loading = false,
    this.success = false,
    this.titleStyle,
    this.buttonStyle,
  });

  final String title;
  final bool loading;
  final VoidCallback onPressed;
  final bool success;
  final TextStyle? titleStyle;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: (buttonStyle?.backgroundColor?.resolve({})) ??
              (success
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context)
                      .elevatedButtonTheme
                      .style
                      ?.backgroundColor
                      ?.resolve({})),
          minimumSize: Size(100.w, 6.2.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.sp),
          )),
      child: loading
          ? CircularProgressIndicator(
              strokeWidth: 1,
              color: Theme.of(context).cardColor,
            )
          : success
              ? SizedBox(
                  height: 4.8.h,
                  child: Lottie.asset(
                    "assets/lotties/success.json",
                    fit: BoxFit.cover,
                    repeat: false,
                    frameRate: FrameRate.max,
                  ))
              : Text(
                  title.trs(context),
                  style: titleStyle ??
                      TextStyle(
                        color: Theme.of(context)
                            .elevatedButtonTheme
                            .style
                            ?.textStyle
                            ?.resolve({})?.color,
                        fontSize: 15.ft,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w600,
                      ),
                ),
    );
  }
}
