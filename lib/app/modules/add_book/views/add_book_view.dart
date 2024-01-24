import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                  controller: controller.judulController,
                  decoration: InputDecoration(hintText: "masukan judul"),
                  validator: (value){
                    if (value!.isEmpty) {
                      return "judul tidak boleh kosong";
                    }
                    return null;
                  }
              ),

              TextFormField(
                  controller: controller.penulisController,
                  decoration: InputDecoration(hintText: "masukan penulis"),
                  validator: (value){
                    if (value!.isEmpty) {
                      return "penulis tidak boleh kosong";
                    }
                    return null;
                  }

              ),
              TextFormField(
                  controller: controller.penerbitController,
                  decoration: InputDecoration(hintText: "masukan penerbit"),
                  validator: (value){
                    if (value!.isEmpty) {
                      return "penerbit tidak boleh kosong";
                    }
                    return null;
                  }

              ),
              TextFormField(
                  controller: controller.tahunTerbitController,
                  decoration: InputDecoration(hintText: "masukan Tahun Terbit"),
                  validator: (value){
                    if (value!.length <2) {
                      return "Tahun Terbit tidak boleh kosong";
                    }
                    return null;
                  }

              ),
              Obx(() => controller.loading.value?
              CircularProgressIndicator():
              ElevatedButton(onPressed: (){
                controller.post();
              }, child: Text("Login"))
              )
            ],
          ),
        ),
      )
    );
  }
}
