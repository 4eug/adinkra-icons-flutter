library adinkra_icons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;

import 'src/icons.dart';

export 'src/icons.dart';
class AdinkraIcon extends StatelessWidget {
  const AdinkraIcon(
    this.icon, {
    this.color,
    this.size,
    this.solid = false,
  });

  final AdinkraIcons icon;
  final Color? color;
  final double? size;
  final bool solid;

  @override
  Widget build(BuildContext context) {
    final path = p.join(
      'packages/adinkra_icons/assets/',
      icon.name,
    );
    return SvgPicture.asset(
      '$path.svg',
      color: color ?? IconTheme.of(context).color,
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}
