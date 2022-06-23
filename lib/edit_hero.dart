import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan/controller/hero_controller.dart';

class EditHero extends StatelessWidget {
  const EditHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HeroCtrl = Get.find<ListHeroController>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 20.0, top: 150.0, right: 20.0, bottom: 20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: HeroCtrl.nama.value,
                labelText: 'Nama Hero',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: HeroCtrl.deskripsi.value,
                labelText: 'Deskripsi Hero',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
