import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: whiteCol,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            child: Row(
              children: [
                Text(
                  'Aikins',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: darkMainCol,
                  ),
                ),
                Text(
                  '!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: secCol,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    child: Text(
                  'Home',
                  style: TextStyle(color: blackCol),
                )),
                InkWell(
                    child: Text(
                  'Skills',
                  style: TextStyle(color: blackCol),
                )),
                InkWell(
                    child: Text(
                  'Projects',
                  style: TextStyle(color: blackCol),
                )),
                InkWell(
                    child: Text(
                  'Download CV',
                  style: TextStyle(color: blackCol),
                )),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: blackCol,
              side: const BorderSide(
                  color: secCol, width: 1, style: BorderStyle.solid),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            child: const Text('Contact Me'),
          )
        ],
      ),
    );
  }
}
