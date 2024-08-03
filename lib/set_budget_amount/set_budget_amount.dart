import 'package:flutter/material.dart';
import 'package:group_project/budget_preview/budget_preview.dart';

class set_budget_amount extends StatefulWidget {
  const set_budget_amount({super.key});

  @override
  State<set_budget_amount> createState() => _set_budget_amountState();
}

class _set_budget_amountState extends State<set_budget_amount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
      body: SafeArea(
        minimum: EdgeInsets.only(left: 10, top: 40, right: 10),
        child: Column(
          children: [
            text_and_icon(),
            const SizedBox(
              height: 40,
            ),
            text(),
            const SizedBox(
              height: 30,
            ),
            select_acc_container(),
            const SizedBox(
              height: 30,
            ),
            text_using_richtext(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'SET AMOUNT',
              style: TextStyle(
                  color: Color.fromARGB(255, 110, 107, 107), fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            icons_and_text(),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              indent: 110,
              endIndent: 110,
            ),
            const SizedBox(
              height: 40,
            ),
            text_in_container(),
            const SizedBox(
              height: 100,
            ),
            next_using_gesture_detector(context),
          ],
        ),
      ),
    );
  }

  Widget next_using_gesture_detector(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => budget_preview()));
      },
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 36, 12, 216),
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
            child: Text(
          'Next',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
    );
  }

  Widget text_in_container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 90,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 227, 235),
              borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Rs.5,000',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 36, 12, 216)),
          )),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 227, 235),
              borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Rs.15,000',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 36, 12, 216)),
          )),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 227, 235),
              borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Rs.25,000',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 36, 12, 216)),
          )),
        ),
      ],
    );
  }

  Widget icons_and_text() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 227, 235),
              borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.remove,
            color: Color.fromARGB(255, 36, 12, 216),
          ),
        ),
        const Text(
          '0',
          style:
              TextStyle(fontSize: 40, color: Color.fromARGB(255, 36, 12, 216)),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 219, 227, 235),
              borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 36, 12, 216),
          ),
        ),
      ],
    );
  }

  Widget text_using_richtext() {
    return RichText(
      text: const TextSpan(
        text: 'Based on your input, you would have ',
        style: TextStyle(color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: 'Rs.12,000 ', style: TextStyle(color: Colors.red)),
          TextSpan(text: 'left out of ', style: TextStyle(color: Colors.black)),
          TextSpan(text: ' Rs.22,000', style: TextStyle(color: Colors.red)),
          TextSpan(
              text: '  in your Kuda Bank account',
              style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }

  Widget select_acc_container() {
    return Container(
      padding: EdgeInsets.all(12),
      width: 330,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Select an account',
                style: TextStyle(
                  color: Colors.black38,
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
                'assets/image/kudaBankLogo.png',
                scale: 11,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Kuda Bank',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Rs.12,000',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget text() {
    return const Row(
      children: [
        Text(
          'Set a budget amount',
          style:
              TextStyle(color: Color.fromARGB(255, 101, 13, 116), fontSize: 25),
        ),
      ],
    );
  }

  Widget text_and_icon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: const Padding(
            padding: EdgeInsets.only(left: 7),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        const Text(
          '2 of 3',
          style: TextStyle(color: Color.fromARGB(255, 102, 99, 99)),
        )
      ],
    );
  }
}
