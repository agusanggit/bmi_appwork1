import 'package:flutter/material.dart';
import 'gender_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Calculator"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(12),
        child: const Card(
          elevation: 12,
          shape: RoundedRectangleBorder(),
          child: Column(
            children: [GenderWidget()],
          ),
        ),
      )),
    );
  }
}
