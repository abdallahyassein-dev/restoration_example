import 'package:flutter/material.dart';

class PageWithRestoration extends StatefulWidget {
  const PageWithRestoration({
    super.key,
  });

  @override
  State<PageWithRestoration> createState() => _PageWithRestorationState();
}

class _PageWithRestorationState extends State<PageWithRestoration>
    with RestorationMixin {
  final RestorableTextEditingController _name =
      RestorableTextEditingController();

  final RestorableTextEditingController _email =
      RestorableTextEditingController();

  final RestorableTextEditingController _phone =
      RestorableTextEditingController();

  final RestorableTextEditingController _password =
      RestorableTextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("With Restoration Page"),
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
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _name.value,
                decoration: const InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _email.value,
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _phone.value,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _password.value,
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

  @override
  String? get restorationId => "restore_text_field";

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_name, 'name');
    registerForRestoration(_email, 'email');
    registerForRestoration(_phone, 'phone');
    registerForRestoration(_password, 'password');
  }
}
