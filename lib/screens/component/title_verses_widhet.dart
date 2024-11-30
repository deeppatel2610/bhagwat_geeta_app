import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';

class TitleVersesWidhet extends StatelessWidget {
  const TitleVersesWidhet({super.key, required this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[1]) {
      return Text(
        Provider.of<HomeProvider>(context, listen: true)
            .chapterList[selectedChapterIndex]
            .verses![index]
            .text!
            .Hindi
            .toString(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[2]) {
      return Text(
        Provider.of<HomeProvider>(context, listen: true)
            .chapterList[selectedChapterIndex]
            .verses![index]
            .text!
            .Gujarati
            .toString(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[3]) {
      return Text(
        Provider.of<HomeProvider>(context, listen: true)
            .chapterList[selectedChapterIndex]
            .verses![index]
            .text!
            .English
            .toString(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    return Text(
      Provider.of<HomeProvider>(context, listen: true)
          .chapterList[selectedChapterIndex]
          .verses![index]
          .text!
          .Sanskrit
          .toString(),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
