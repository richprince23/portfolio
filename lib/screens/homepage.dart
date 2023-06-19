import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            //column
            Flexible(
              flex: 1,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hello, I\'m',
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Richard Kweku Aikins',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(64, 31, 165, 1)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Experienced Software Engineer with expertise in web, mobile and desktop development. Skilled in Dart, PHP, Java, NodeJS and Python. Passionate about delivering high-performance and scalable applications for diverse clients.',
                      style: TextStyle(
                        fontSize: 16,
                        color: lightBlackCol,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            backgroundColor: secCol,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          child: const Text('Hire Me'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: whiteCol,
                            foregroundColor: darkMainCol,
                            side: const BorderSide(
                                color: secCol,
                                width: 1,
                                style: BorderStyle.solid),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          child: const Text('Download CV'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Flexible(
                          flex: 1,
                          child: Text(
                              "Software Engineer specialized in Mobile and Full Stack Web development"),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            width: 100,
                            child:
                                Image.asset("assets/images/stars-rafiki.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                // height: size.height * 0.8,
                child: Stack(
                  // fit: StackFit.expand,
                  children: [
                    Image.asset(
                      "assets/images/aikins.jpg",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10,
                      left: 20,
                      child: Image.asset(
                        "assets/images/space-cuate.png",
                        width: 50,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 70,
                      child: Image.asset(
                        "assets/images/space-cuate.png",
                        width: 50,
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 40,
                      child: Image.asset(
                        "assets/images/space-cuate.png",
                        width: 50,
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 20,
                      child: Image.asset(
                        "assets/images/space-cuate.png",
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 900,
          color: Colors.green,
        ),
        // Column(
        //   children: [
        //     // first row
        //   ],
        // ),
      ],
    );
  }
}
