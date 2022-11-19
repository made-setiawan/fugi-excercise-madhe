import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmEditProfileView extends StatefulWidget {
  const LtfmEditProfileView({Key? key}) : super(key: key);

  Widget build(context, LtfmEditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmEditProfile"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                controller.save();
              },
              child: const Text("Save"),
            ),
          ),
          //! 4. Tambahkan tombol Save
          //! 5. Beri padding/margin pada tombol Save sebanyak 10
          //! 6. Panggil controller.save() ketika tombol di klik
        ],
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  QTextField(
                    value: "made@gmail.com",
                    label: "email",
                    hint: "Your email",
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  QTextField(
                    value: "password",
                    label: "Password",
                    hint: "Your password",
                    obscure: true,
                    onChanged: (value) {},
                  ),
                  //! 1. Buat sebuah Card, tambahkan Column di dalamnya
                  //! 2. Tambahkan padding.all 20.0
                  //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
                  //? textfield email
                  //? textfield password
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmEditProfileView> createState() => LtfmEditProfileController();
}
