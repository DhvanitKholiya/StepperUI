import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int indexVal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stepper Page",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.withOpacity(0.2),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stepper(
          currentStep: indexVal,
          controlsBuilder: (context, _) {
            return Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        backgroundColor: Colors.orange.withOpacity(0.2)),
                    onPressed: () {
                      setState(() {
                        if (indexVal < 2) {
                          indexVal++;
                        }
                      });
                    },
                    child: (indexVal == 2)
                        ? InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Home Page"))
                        : const Text("Continue")),
                const SizedBox(
                  width: 10,
                ),
                (indexVal != 0)
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            if (indexVal > 0) {
                              indexVal--;
                            }
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  width: 2, color: Colors.orange.withOpacity(0.2))),
                          child: const Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            );
          },
          steps: <Step>[
            Step(
                isActive: false,
                title: const Text(
                  "Sing up",
                  style: TextStyle(color: Colors.black),
                ),
                content: Column(
                  children: const [
                     TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon:  Icon(
                          Icons.person,
                          color: Colors.black87,
                        ),
                        hintText: "Full Name",
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.email, color: Colors.black87),
                        hintText: "Email ID",
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.lock, color: Colors.black87),
                        hintText: "PassWord",
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border:  OutlineInputBorder(),
                        icon: Icon(Icons.lock, color: Colors.black87),
                        hintText: "Conform PassWord",
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                )),
            Step(
                isActive: false,
                title: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
                content: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(
                          Icons.person,
                          color: Colors.black87,
                        ),
                        hintText: "User Name",
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.lock, color: Colors.black87),
                        hintText: "PassWord",
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                )),
            Step(
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.black87),
                ),
                content: Container()),
          ],
        ),
      ),
    );
  }
}
