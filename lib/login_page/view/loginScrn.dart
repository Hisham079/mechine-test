// import 'package:evily1/login_page/bloc/authentication_bloc.dart';
// import 'package:evily1/screens/homeScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginScrn extends StatefulWidget {
//   LoginScrn({super.key});

//   @override
//   State<LoginScrn> createState() => _LoginScrnState();
// }

// class _LoginScrnState extends State<LoginScrn> {
//   TextEditingController _loginEmail = TextEditingController(),
//       _loginPassword = TextEditingController();
//   final auth_bloc = AuthenticationBloc();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => auth_bloc,
//       child: BlocListener<AuthenticationBloc, AuthenticationState>(
//         listener: (context, state) {
//           if (state is LoginSucces) {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HomeScreen(),
//                 ));
//           } else {
//             ScaffoldMessenger.of(context)
//                 .showSnackBar(SnackBar(content: Text('Login Failed')));
//           }
//         },
//         child: Scaffold(
//           // appBar: AppBar(
//           //   title: Text('Login'),
//           // ),
//           body: SingleChildScrollView(
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 137.7),
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(39),
//                           color: Colors.white),
//                       height: 480,
//                       width: 452,
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.only(left: 40, top: 30),
//                                 height: 140,
//                                 width: 150,
//                                 child: Text(
//                                   'Sign  in',
//                                   style: TextStyle(
//                                       fontSize: 29,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Expanded(
//                             child: Container(
//                               height: MediaQuery.of(context).size.height - 80,
//                               width: MediaQuery.of(context).size.width - 80,
//                               child: ListView(
//                                 scrollDirection: Axis.vertical,
//                                 children: [
//                                   Text('Email'),
//                                   TextField(
//                                     controller: _loginEmail,
//                                     decoration: InputDecoration(
//                                         icon: Icon(Icons.mail_outline),
//                                         hintText: 'abcd@gmail.com'),
//                                   ),
//                                   const SizedBox(
//                                     height: 10,
//                                   ),
//                                   const Text('Password'),
//                                   TextField(
//                                     controller: _loginPassword,
//                                     decoration: InputDecoration(
//                                       icon: Icon(Icons.key),
//                                       hintText: '*****',
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                   ),
//                                   Container(
//                                     //color: Colors.white,
//                                     child: ElevatedButton(
//                                         style: ElevatedButton.styleFrom(
//                                           backgroundColor:
//                                               Color.fromARGB(255, 234, 141, 59),
//                                           minimumSize: Size(270, 50),
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(50),
//                                           ),
//                                         ),
//                                         onPressed: () {},
//                                         child: GestureDetector(
//                                           onTap: () {
//                                             auth_bloc.add(
//                                               UserLoginEvent(
//                                                   email: _loginEmail.text,
//                                                   password:
//                                                       _loginPassword.text),
//                                             );
//                                           },
//                                           child: const Text(
//                                             'Sign in',
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 17),
//                                           ),
//                                         )),
//                                   ),
                                 
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       // color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
