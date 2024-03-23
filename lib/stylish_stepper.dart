library stylish_stepper;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StylishStepper extends StatelessWidget {
  const StylishStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {},
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
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: SSColor.secondary),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '',
                                style: TextStyle(),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.86,
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        ' data[' ']',
                                        maxLines: 3,
                                        style: TextStyle(),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            child: Icon(Icons.abc),
                                          ),
                                          const SizedBox(width: 5),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75,
                                            child: const Text(
                                              '',
                                              maxLines: 3,
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 3.5,
                    ),
                    child: SizedBox(child: SvgPicture.asset('assets/')),
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

class SSColor {
  static const Color secondary = Color(0xFFB8282E);
  static const Color primaryColor = Color(0xFF01B9F1);
}
