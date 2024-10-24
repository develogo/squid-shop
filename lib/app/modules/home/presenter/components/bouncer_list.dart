import 'package:flutter/material.dart';

class BouncerList extends StatelessWidget {
  final int itemCount;
  final double height;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget separatorBuilder;
  final EdgeInsetsGeometry padding;

  const BouncerList({
    super.key,
    required this.itemCount,
    required this.height,
    required this.itemBuilder,
    this.separatorBuilder = const SizedBox(width: 10),
    this.padding = const EdgeInsets.only(left: 14),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: padding,
        itemCount: itemCount,
        separatorBuilder: (context, index) => separatorBuilder,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
