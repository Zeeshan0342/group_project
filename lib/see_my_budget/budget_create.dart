import 'package:flutter/material.dart';
import 'package:group_project/set_budget_amount/monthly_budget.dart';

class budget_create extends StatefulWidget {
  const budget_create({super.key});

  @override
  State<budget_create> createState() => _budget_createState();
}

class _budget_createState extends State<budget_create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 33, 241),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/piggy.png',
              scale: 6,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text('Mmm... we love your "New budget" smell'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Awesome! Your  new Monthly Budget is up and running',
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 126, 165, 185)),
            ),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Monthly_budget()));
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    'See MyBudget',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 71, 17, 206)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
