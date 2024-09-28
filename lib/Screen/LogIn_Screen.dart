import 'package:flutter/material.dart';
import 'package:shop/Screen/HomeScreen.dart';
import 'package:shop/Screen/RegisterScreen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  bool visible = false;

  // final auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/Log_In.png"),
                )),
              ),
              // Padding(
              //   padding: EdgeInsets.all(8),
              //   child: Image.asset(
              //     "assets/images/Log_In.png",
              //   ),
              // ),

              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Please login to your account",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Email",
                        // fillColor: Colors.amber,
                        // filled: true,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        // focusedBorder: UnderlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black),
                        // ),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _isSecurePassword,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Password",
                        // fillColor: Colors.amber,
                        // filled: true,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 18,
                        ),
                        suffixIcon: buttonPassword(),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        // focusedBorder: UnderlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black),
                        // ),
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        fillColor: Colors.pink[100],
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                        },
                        child: Text("Login", style: TextStyle(fontSize: 15)),
                      ),
                      // decoration: BoxDecoration(
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.circular(100)),
                      // child: const Center(
                      //   child: Text("Log In",
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 20,
                      //       )),
                      // ),
                    ),

                    SizedBox(height: 100),

                    Text("Don't have account?"),
                    MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ));
                        },
                        child: const Text("Signup",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w900
                        ),))

                    // MaterialButton(
                    //   shape: const RoundedRectangleBorder(
                    //       borderRadius:
                    //           BorderRadius.all(Radius.circular(20.0))),
                    //   elevation: 5.0,
                    //   height: 40,
                    //   onPressed: () {
                    //     setState(() {
                    //       visible = true;
                    //     });
                    //     // signIn(emailController.text, passwordController.text);
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(100)),
                    //     child: const Center(
                    //       child: Text("Log In",
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //           )),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget buttonPassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.black,
    );
  }

  // void route() {
  //   User? user = FirebaseAuth.instance.currentUser;
  //   var a = FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(user!.uid)
  //       .get()
  //       .then((DocumentSnapshot documentSnapshot) {
  //     if (documentSnapshot.exists) {
  //       if (documentSnapshot.get('jabatan') == "Guru") {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) =>  DashboardPelayan(),
  //           ),
  //         );
  //       } else {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => DashboardAdmin(),
  //           ),
  //         );
  //       }
  //     } else {
  //       print('Document does not exist on the database');
  //     }
  //   });
  // }

  // void signIn(String email, String password) async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //           await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //       route();
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'user-not-found') {
  //         print('No user found for that email.');
  //       } else if (e.code == 'wrong-password') {
  //         print('Wrong password provided for that user.');
  //       }
  //     }
  //   }
  // }
}
