import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan/controller/hero_controller.dart';
import 'package:latihan/edit_hero.dart';
import 'package:latihan/model/hero_model.dart';

class DetailHero extends StatelessWidget {
  final Heroes hero;

  const DetailHero({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroCtrl = Get.find<ListHeroController>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                heroCtrl.nama.value = hero.nama,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(heroCtrl.deskripsi.value = hero.deskripsi),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: (){
                Get.to(() => const EditHero());
              },
              child: const Text(
                'Ubah',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
