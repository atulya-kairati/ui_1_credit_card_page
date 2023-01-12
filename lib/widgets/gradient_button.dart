import 'package:flutter/material.dart';


class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[200]!,
              Colors.purpleAccent[100]!,
            ],
          ),
          borderRadius:
              const BorderRadius.all(Radius.circular(20)),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Submit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
