import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/halaman_controller.dart';

class HalamanView extends GetView<HalamanController> {
  const HalamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HalamanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HalamanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
