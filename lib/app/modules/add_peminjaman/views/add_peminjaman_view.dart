import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinjam Buku ${Get.parameters['judul'].toString()}'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  '${Get.parameters['judul'].toString().toUpperCase()}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Padding(padding:
                const EdgeInsets.symmetric(horizontal: 20)),
              TextFormField(
                  controller: controller.tanggalPinjamController,
                  decoration:
                      InputDecoration(hintText: "masukan tanggal pinjam"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "tangal pinjam tidak boleh kosong";
                    }
                    return null;
                  }),
              TextFormField(
                  controller: controller.tanggalKembaliController,
                  decoration:
                      InputDecoration(hintText: "masukan tanggal kembali"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "tanggal kembali tidak boleh kosong";
                    }
                    return null;
                  }),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        controller.postRegister();
                      },
                      child: Text("pinjam"))),
            ],
          ),
        ),
      ),
    );
  }
}
