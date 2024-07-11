import 'package:flutter/material.dart';

class PageWithoutRestoration extends StatefulWidget {
  const PageWithoutRestoration({super.key});

  @override
  State<PageWithoutRestoration> createState() => _PageWithoutRestorationState();
}

class _PageWithoutRestorationState extends State<PageWithoutRestoration> {
  final TextEditingController _name = TextEditingController();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _phone = TextEditingController();

  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("With Out Restoration Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Register Screen',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _name,
                decoration: const InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _email,
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _phone,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _password,
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
