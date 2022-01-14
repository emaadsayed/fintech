import 'package:flutter/material.dart';
import 'package:flutter_one/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey.withOpacity(0.05),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.01),
                    spreadRadius: 10,
                    blurRadius: 3,
                    // changes position of shadow
                  ),
                ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40, right: 20, left: 20, bottom: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Daily Transaction",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                          // Icon(Ionicons.md_stats)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(20)),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "20,600",
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Current Balance",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffffac30)),
                        child: const Icon(
                          Icons.add,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Send Money",
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFFFFFF),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                      avatarWidget("avatar1", "Mike"),
                      avatarWidget("avatar2", "Joseph"),
                      avatarWidget("avatar3", "Ashley"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFFFFFFF),
                              ),
                              child: Center(
                                child: Container(
                                  margin: const EdgeInsets.all(50),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/sendMoney.png'))),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column serviceWidget(String img, String name) {
    return Column(
      children: [
        Container(
          child: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Color(0xFFFFFFFF),
              ),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/$img.png'))),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Container avatarWidget(String img, String name) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 150,
      width: 120,
      decoration: const BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(15)),
          color: Color(0xFFFFFFFF)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                    fit: BoxFit.contain),
                border: Border.all(color: Colors.black, width: 2)),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
