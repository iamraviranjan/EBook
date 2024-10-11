
import 'package:ebook/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool checkSpinner = false;

  String? email;
  String? password;
  bool passwordvisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      resizeToAvoidBottomInset: true,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ModalProgressHUD(
          inAsyncCall: checkSpinner,
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,
              child: Stack(
                children: [
                  Image.asset('images/nature.jpg',
                    fit: BoxFit.cover,
                    height: 500,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 28, top: 30, right: 28, bottom: 30),
                      decoration: BoxDecoration(
                        color: Color(0xFfffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Welcome Back', overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize:30,
                                color: Color(0xFF1e1f50)
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text('Login to your account',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  fontWeight:FontWeight.w600,
                                  fontSize:14,
                                  color:Color(0xff303134)
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top:31 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('email'.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.0,
                                  ),
                                ),

                                SizedBox(height: 12,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "abc@gmail.com",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.00),
                                        borderSide: BorderSide(color: Color(0xFF6c8f92),
                                          width: 1,
                                        ),
                                      ),
                                      hintStyle: GoogleFonts.inter(
                                        color: Color(0xFF338f92),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1.21,
                                      ),
                                    ),

                                    onChanged: (value){
                                      setState(() {
                                        email= value;
                                      });
                                    },
                                  ),
                                ),

                                Padding(
                                  padding:EdgeInsets.only(top: 31),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('password'.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.0,
                                        ),
                                      ),

                                      SizedBox(height: 12,),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          keyboardType: TextInputType.text,
                                          obscureText: !passwordvisible,
                                          decoration: InputDecoration(
                                            hintText: "password@123",
                                            suffixIcon: GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  passwordvisible=!passwordvisible;
                                                });
                                              },

                                              child: Icon(
                                                passwordvisible?Icons.visibility:Icons.visibility_off,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8.00),
                                              borderSide: BorderSide(color: Color(0xFF6c8f92),
                                                width: 1,
                                              ),
                                            ),
                                            hintStyle: GoogleFonts.inter(
                                              color: Color(0xFF338f92),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.21,
                                            ),
                                          ),

                                          onChanged: (value){
                                            setState(() {
                                              password=value;
                                            });
                                          },
                                        ),
                                      ),


                                    ],
                                  ),
                                ),

                                SizedBox(height: 40,),

                                Center(
                                  child: SizedBox(
                                    width: 280,
                                    height: 60,
                                    child: ElevatedButton(
                                      onPressed: (){

                                      },
                                      child: Text('login',
                                        style: GoogleFonts.inter(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          height: 1.21,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39.00)),
                                        backgroundColor: Color(0xFF666aec),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 42,),

                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('No account' ,
                                        style: GoogleFonts.inter(
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),

                                      SizedBox(width: 5,),

                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                                        },
                                        child: Text('sign up',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              ),

            ),
          ),

        ),
      ),
    );
  }
}
