import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //  value: "123456",
            //     label: "Password",
            //     hint: "Your password",
            //     obscure: true,
            //     onChanged: (value) {},

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
              const SizedBox(
                height: 20,
              ),
              QTextField(
                value: "confirm password",
                label: "confirm password",
                hint: "Your confirm password",
                obscure: true,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.signpost,
                ),
                label: const Text(
                  "Sign Up",
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.doSignUp();
                },
              ),
              //! 1. Buatlah textfield email
              //! 2. Buatlah textfield password
              //! 3. Buatlah textfield confirm password
              //! 4. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
