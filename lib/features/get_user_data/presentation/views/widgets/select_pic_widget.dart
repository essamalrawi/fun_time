import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_images.dart';
import 'icon_container.dart';

class SelectPicWidget extends StatefulWidget {
  const SelectPicWidget({super.key});

  @override
  State<SelectPicWidget> createState() => _SelectPicWidgetState();
}

class _SelectPicWidgetState extends State<SelectPicWidget> {
  var images = [
    Assets.imagesAvatars1,
    Assets.imagesAvatars2,
    Assets.imagesAvatars3,
    Assets.imagesAvatars4,
    Assets.imagesAvatars5,
    Assets.imagesAvatars6,
    Assets.imagesAvatars7,
    Assets.imagesAvatars8,
    Assets.imagesAvatars9,
    Assets.imagesAvatars10,
    Assets.imagesAvatars11,
    Assets.imagesAvatars12,
    Assets.imagesAvatars13,
    Assets.imagesAvatars14,
    Assets.imagesAvatars15,
    Assets.imagesAvatars16,
    Assets.imagesAvatars17,
    Assets.imagesAvatars18,
    Assets.imagesAvatars19,
    Assets.imagesAvatars20,
    Assets.imagesAvatars21,
    Assets.imagesAvatars22,
    Assets.imagesAvatars23,
    Assets.imagesAvatars24,
    Assets.imagesAvatars25,
    Assets.imagesAvatars26,
    Assets.imagesAvatars27,
    Assets.imagesAvatars28,
    Assets.imagesAvatars29,
    Assets.imagesAvatars30,
  ];

  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          onPressed: () {
            if (!(counter == 0)) {
              counter--;
              setState(() {});
            }
          },
          icon: IconContainer(
            icon: FontAwesomeIcons.angleLeft,
          )),
      SizedBox(
        width: 10,
      ),
      Flexible(
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color(0xfff6e58d),
            borderRadius: BorderRadius.circular(100),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(images[counter])),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      IconButton(
          onPressed: () {
            if (!(counter == images.length - 1)) {
              counter++;
              setState(() {});
            }
          },
          icon: IconContainer(icon: FontAwesomeIcons.angleRight)),
    ]);
  }
}
