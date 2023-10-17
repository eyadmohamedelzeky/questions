import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContentPlaceholder(
              lineType: ContentLineType.threeLines,
            ),
          ],
        ),
      ),
    );
  }
}

enum ContentLineType {
  twoLines,
  threeLines,
}

class ContentPlaceholder extends StatelessWidget {
  final ContentLineType lineType;

  const ContentPlaceholder({
    super.key,
    required this.lineType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: double.infinity,
                  height: 43.h,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  width: double.infinity,
                  height: 43.h,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  width: double.infinity,
                  height: 43.h,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  width: double.infinity,
                  height: 43.h,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  width: double.infinity,
                  height: 43.h,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
                if (lineType == ContentLineType.threeLines)
                  Container(
                    width: double.infinity,
                    height: 43.h,
                    color: Colors.white,
                    margin: const EdgeInsets.only(bottom: 8.0),
                  ),
                Container(
                  height: 43.h,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
