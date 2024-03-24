library stylish_stepper;

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StylishStepper extends StatelessWidget {
  const StylishStepper(
      {super.key,
      required this.content,
      required this.header,
      this.showLastIcon,
      this.dotIconColor,
      this.contentContainerColor,
      this.dotSize,
      this.gap,
      this.contentWidth,
      this.svgIconColor,
      this.assetIconColor,
      this.assetIcon,
      this.verticalLineIconHeight,
      this.verticalLineTopPadding,
      this.verticalLineLeftPadding,
      this.svgIcon});

  final String? svgIcon;
  final String? assetIcon;
  final Widget content;
  final Widget header;
  final Color? svgIconColor;
  final Color? assetIconColor;
  final bool? showLastIcon;
  final Color? dotIconColor;
  final double? dotSize;
  final double? gap;
  final double? contentWidth;
  final double? verticalLineIconHeight;
  final double? verticalLineLeftPadding;
  final double? verticalLineTopPadding;
  final Color? contentContainerColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('tapped ');
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: dotSize ?? 15,
                    width: dotSize ?? 15,
                    decoration: BoxDecoration(
                        color: dotIconColor ?? SSColor.secondary,
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header,
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: contentContainerColor ?? SSColor.secondary,
                        ),
                        child: SizedBox(
                          width: contentWidth ??
                              MediaQuery.of(context).size.width * 0.84,
                          child: content,
                        ),
                      ),
                      SizedBox(height: gap ?? 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: verticalLineTopPadding ?? 15,
            left: 0,
            child: Padding(
              padding: EdgeInsets.only(left: verticalLineLeftPadding ?? 5.5),
              child: svgIcon != null
                  ? SizedBox(
                      child: SvgPicture.asset(
                      svgIcon!,
                      height: verticalLineIconHeight ?? 200,
                      color: svgIconColor,
                    ))
                  : Image.asset(
                      assetIcon != null ? assetIcon! : SStepperImages.dot,
                      color: assetIconColor,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class SSColor {
  static const Color secondary = Color(0xFFB8282E);
  static const Color primaryColor = Color(0xFF01B9F1);
}

class SStepperIcons {
  static const dot = 'assets/dotted_vertical.svg';
  static const line = 'assets/strike.svg';
}

class SStepperImages {
  static const dot = 'assets/images/dot.png';
  static const line = 'assets/images/new.jpg';
}
