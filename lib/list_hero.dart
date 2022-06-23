import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan/controller/hero_controller.dart';
import 'package:latihan/detail_hero.dart';

import 'model/hero_model.dart';

class ListHero extends StatelessWidget {
  const ListHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroCtrl = Get.put(ListHeroController());
    return Scaffold(
      body: ListView.builder(
          itemCount: heroInformationList.length,
          itemBuilder: (context, index) {
            final Heroes hero = heroInformationList[index];
            return InkWell(
              onTap: () {
                Get.to(() => DetailHero(hero: hero));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(hero.imageUrls),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            heroCtrl.nama.value = hero.nama,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            heroCtrl.deskripsi.value = hero.deskripsi,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
