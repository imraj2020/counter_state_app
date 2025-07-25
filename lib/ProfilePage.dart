import 'package:counter_state_app/CounterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (controller) {
            return Text(
              '${controller.counter}',
              style: TextStyle(fontSize: 20, color: Colors.black54),
            );
          },
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.find<CounterController>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () {
              Get.find<CounterController>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
