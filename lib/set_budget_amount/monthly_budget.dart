import 'package:flutter/material.dart';

class Monthly_budget extends StatefulWidget {
  const Monthly_budget({super.key});

  @override
  State<Monthly_budget> createState() => _Monthly_budgetState();
}

class _Monthly_budgetState extends State<Monthly_budget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 34, 231),
      body: SafeArea(
        child: Stack(
          children: [
            Icons_and_texts(),
            second_stack_icon_image_text(),
          ],
        ),
      ),
    );
  }

  Widget second_stack_icon_image_text() {
    return Padding(
      padding: const EdgeInsets.only(top: 170),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 240, 238, 238),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "What's left to spend",
                  style: TextStyle(
                    color: Color.fromARGB(255, 36, 12, 216),
                  ),
                ),
                Text(
                  "Rs.17,000",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            text_and_image(),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  'Budget transactions',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 320,
              height: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 250, 250),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 220, 236, 243),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Center(
                          child: Text(
                            'J',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Column(
                        children: [
                          Text(
                            'John Ogaga',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 20),
                          ),
                          Text(
                            'Zenith Bank 12:03 AM',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 10),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          '+Rs.20,000',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 220, 236, 243),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Center(
                          child: Text(
                            'T',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Column(
                        children: [
                          Text(
                            'The Place Resturant',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 12),
                          ),
                          Text(
                            'GT Bank 2:03 AM',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 10),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          '-Rs.635',
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 220, 236, 243),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Center(
                          child: Text(
                            'P',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Transfer to Philip',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 13),
                          ),
                          Text(
                            'Zenith Bank 1:03 PM',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 10),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          '-Rs.223',
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 220, 236, 243),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Center(
                          child: Text(
                            'H',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Habib Yogurt',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 15),
                          ),
                          Text(
                            'GT Bank 3:03 AM',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 10),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          '-Rs.365',
                          style: TextStyle(color: Colors.purple, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget text_and_image() {
    return Container(
      padding: EdgeInsets.all(10),
      width: 320,
      height: 120,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 250, 250),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "You've already spend",
                style: TextStyle(color: Color.fromARGB(255, 149, 143, 143)),
              ),
              Text(
                "Spend limit per Day",
                style: TextStyle(color: Color.fromARGB(255, 149, 143, 143)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rs.1,000",
                style: TextStyle(color: Colors.red),
              ),
              Text(
                "Rs.4,000",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image/Kiss-Emoji.png',
                scale: 90,
              ),
              const Column(
                children: [
                  Text(
                    "Cool! let's keep your expense ",
                    style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),
                  ),
                  Text(
                    " below the budget",
                    style: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Icons_and_texts() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 36, 12, 216),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Text(
                'Budget',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 36, 12, 216),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              Text(
                'Monthly Budget',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'You have spent ',
                  children: [
                    TextSpan(
                        text: 'Rs.535 ', style: TextStyle(color: Colors.red)),
                    TextSpan(text: 'for the past 7 days'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
