import 'package:find_house/theme.dart';
import 'package:flutter/material.dart';

class ButtonNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  ButtonNavbarItem({required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                height: 10,
                width: 20,
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Color(0xff5843BE),
                    width: 4.0,
                  ),
                )),
              )
            : Container(),
      ],
    );
  }
}
