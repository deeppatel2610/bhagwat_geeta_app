import 'package:bhagwat_geeta_app/screens/component/app_bar_method.dart';
import 'package:bhagwat_geeta_app/screens/component/title_verses_widhet.dart';
import 'package:bhagwat_geeta_app/utils/all_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

class VersesPage extends StatelessWidget {
  const VersesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBarMethod(context: context, isButton: true, isTitle: false),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: provider.chapterList[selectedChapterIndex].verses!.length,
            itemBuilder: (context, index) => Card(
              color: Colors.deepOrange,
              child: ListTile(
                leading: Text(
                  provider.chapterList[selectedChapterIndex].verses![index].VerseNumber
                      .toString(),
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                title: TitleVersesWidhet(index: index),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
