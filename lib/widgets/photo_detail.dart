import 'package:find_house/models/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PhotoDetail extends StatelessWidget {
  final Space space;

  PhotoDetail(this.space);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network('${space.photos}'),
      ],
    );
  }
}
