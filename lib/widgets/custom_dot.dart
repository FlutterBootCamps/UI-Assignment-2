import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.only(left: 0),
              indicator: DotTabIndicator(), // Use custom DotTabIndicator here
              // indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(color: Color(0xffFF9A71)),
              unselectedLabelColor: Color(0xffF5F5F5),
              tabs: const [
                Tab(text: "Personal Info"),
                Tab(text: "Experience"),
                Tab(text: "Top skills"),
                Tab(text: "Reviews"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DotTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter();
  }
}

class _DotPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final size = configuration.size!;
    final Paint paint = Paint();
    paint.color = const Color(0xffFF9A71); // Customize the color of the dot here
    const double radius = 3; // Customize the radius of the dot here
    final double centerX = offset.dx + size.width / 32 - radius - 8; // Adjusted to position before the text
    final double centerY = size.height / 2; // Adjusted to be centered vertically
    canvas.drawCircle(Offset(centerX, centerY), radius, paint);
  }
}