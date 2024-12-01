import 'package:bhagwat_geeta_app/provider/home_provider.dart';
import 'package:bhagwat_geeta_app/screens/component/title_widhet.dart';
import 'package:bhagwat_geeta_app/utils/all_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/app_bar_method.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBarMethod(context: context,isButton: false,isTitle: true),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: provider.chapterList.length,
            itemBuilder: (context, index) => Card(
              color: Colors.deepOrange.shade400,
              child: ListTile(
                leading: Text(
                  provider.chapterList[index].Chapter.toString(),
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                title: TitleWidhet(index: index),
                trailing: IconButton(
                  onPressed: () {
                    selectedChapterIndex = index;
                    Navigator.of(context).pushNamed('/verses');
                  },
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
