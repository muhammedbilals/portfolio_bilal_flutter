import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

// ignore: must_be_immutable
class ExpertiesListWidget extends StatelessWidget {
  ExpertiesListWidget(
      {super.key, required this.crossAxisCount, required this.height});

  final int crossAxisCount;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        height: height,
        child: MasonryGridView.count(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: list[index],
            );
          },
        ),
      ),
    );
  }

  List<TextContainer> list = [
    const TextContainer(
        text: 'Flutter Developers', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developer', image: 'assets/images/flutter.png'),
    const TextContainer(text: 'Flutter ', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developer', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developer', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developers', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developer', image: 'assets/images/flutter.png'),
    const TextContainer(text: 'Flutter ', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developer', image: 'assets/images/flutter.png'),
    const TextContainer(
        text: 'Flutter Developer', image: 'assets/images/flutter.png')
  ];
}
