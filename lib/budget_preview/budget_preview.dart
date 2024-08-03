import 'package:flutter/material.dart';
import 'package:group_project/see_my_budget/budget_create.dart';

class budget_preview extends StatefulWidget {
  const budget_preview({super.key});

  @override
  State<budget_preview> createState() => _budget_previewState();
}

class _budget_previewState extends State<budget_preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 238, 238),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 10, top: 40, right: 10),
        child: Column(
          children: [
            icons(context),
            const SizedBox(
              height: 40,
            ),
            budget_preview_text(),
            const SizedBox(
              height: 30,
            ),
            montly_budget_container(),
            const SizedBox(
              height: 20,
            ),
            budget_source_text(),
            const SizedBox(
              height: 10,
            ),
            image_and_text(),
            const SizedBox(
              height: 20,
            ),
            texts_and_icons(),
            const SizedBox(
              height: 50,
            ),
            create_budget_using_gesture_detector(context),
          ],
        ),
      ),
    );
  }

  Widget create_budget_using_gesture_detector(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => budget_create()));
      },
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 36, 12, 216),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            'Create budget',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget texts_and_icons() {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Start date',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 36, 12, 216)),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_month,
              color: Color.fromARGB(255, 36, 12, 216),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Jan 20th 2024',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Text(
                        'Change',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 36, 12, 216)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 155),
                  child: Text(
                    'Monthly budget',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Receive Alert',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Receive alert when it reaches a certain limit',
              style: TextStyle(fontSize: 15, color: Colors.blueGrey),
            ),
          ],
        ),
        Icon(
          Icons.toggle_off,
          color: Color.fromARGB(255, 36, 12, 216),
          size: 80,
        ),
      ],
    );
  }

  Widget image_and_text() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/image/kudaBankLogo.png',
          scale: 11,
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          children: [
            Row(
              children: [
                Text(
                  'Kuda Bank',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    'Change',
                    style: TextStyle(
                        color: Color.fromARGB(255, 36, 12, 216), fontSize: 17),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                'Account balance:Rs.12,000',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget budget_source_text() {
    return const Row(
      children: [
        Text(
          'Budget source',
          style:
              TextStyle(color: Color.fromARGB(255, 36, 12, 216), fontSize: 20),
        ),
      ],
    );
  }

  Widget montly_budget_container() {
    return Container(
      padding: EdgeInsets.all(12),
      width: 330,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 63, 42, 222)),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Monthly Budget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image/celebration.png',
                scale: 6,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Flexing Budget',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Rs.18,000',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.lightBlue,
            thickness: 3,
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image/Kiss-Emoji.png',
                scale: 90,
              ),
              const Text(
                'Ready to get your budget game started!!',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget budget_preview_text() {
    return const Row(
      children: [
        Text(
          'Budget preview',
          style:
              TextStyle(color: Color.fromARGB(255, 36, 12, 216), fontSize: 25),
        ),
      ],
    );
  }

  Widget icons(BuildContext context) {
    return Row(
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
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: const Padding(
              padding: EdgeInsets.only(left: 7),
              child: Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 36, 12, 216),
              ),
            ),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: const Padding(
            padding: EdgeInsets.only(left: 1),
            child: Icon(
              Icons.edit,
              color: Color.fromARGB(255, 36, 12, 216),
            ),
          ),
        ),
      ],
    );
  }
}
