import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_slide_animation_controller.dart';

class LtsmSlideAnimationView extends StatefulWidget {
  const LtsmSlideAnimationView({Key? key}) : super(key: key);

  Widget build(context, LtsmSlideAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmSlideAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(
                  left: controller.animate ? 200 : 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.animation),
                label: Text("Animate : ${controller.animate}"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.animate = !controller.animate ? true : false;
                  controller.setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmSlideAnimationView> createState() => LtsmSlideAnimationController();
}
