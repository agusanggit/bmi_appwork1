import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _gender = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChoiceChip3D(
              border: Border.all(color: Colors.grey),
              style: ChoiceChip3DStyle(
                topColor: Colors.white,
                backColor: Colors.grey[300]!,
                borderRadius: BorderRadius.circular(20),
              ),
              onSelected: () {
                setState(() {
                  _gender = 1;
                });
              },
              onUnSelected: () {},
              selected: _gender == 1,
              child: Column(
                children: [
                  Image.asset("assets/images/male.png", width: 50),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Male")
                ],
              )),
          const SizedBox(
            width: 20,
          ),
          ChoiceChip3D(
              border: Border.all(color: Colors.grey),
              style: ChoiceChip3DStyle(
                topColor: Colors.white,
                backColor: Colors.grey[300]!,
                borderRadius: BorderRadius.circular(20),
              ),
              onSelected: () {
                setState(() {
                  _gender = 2;
                });
              },
              onUnSelected: () {},
              selected: _gender == 2,
              child: Column(
                children: [
                  Image.asset("assets/images/female.png", width: 50),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Female")
                ],
              ))
        ],
      ),
    );
  }
}
