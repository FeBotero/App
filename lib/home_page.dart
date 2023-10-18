import 'package:flutter/material.dart';
import 'package:mkt/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  testes() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CustomSwitcher()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Descubra o seu jeito de fazer négocio",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const Row(
            children: [
              Expanded(
                  child: Text(
                "Explore tudo que existe no mundo do marketing para crescer! ",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ))
            ],
          ),
          Column(
            children: [
              const SizedBox(
                width: 20,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Text("Registrar"),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
