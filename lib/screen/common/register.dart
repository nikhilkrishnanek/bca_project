

import 'package:flutter/material.dart';
class UserRegisterPage extends StatefulWidget {
  const UserRegisterPage({Key? key}) : super(key: key);

  @override
  State<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {
  @override
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController conformPassController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  final _formKey=GlobalKey<FormState>();


  bool? clicked=false;
  
  var contBackColor;

  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,



body: SafeArea(
        child: Container(color: contBackColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('lib\screen\doctor\assets\58029.jpg',height: 150,width: 150,),

                          SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20,left: 20),
                            child: TextFormField(

                              style: TextStyle(color: Color.fromARGB(255, 117, 224, 147)),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Enter a the name";
                                }
                              },
                              controller: nameController,
                              decoration: const InputDecoration(

                                  hintText: "Name",
                                  hintStyle: TextStyle(color: Color.fromARGB(255, 105, 226, 109)),
                                  enabledBorder: OutlineInputBorder(


                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 10, 1, 1)
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(

                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 17, 2, 2)
                                      )
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextFormField(

                              style: TextStyle(color: Color.fromARGB(255, 5, 195, 43)),
                              validator: (value){
                                if(value!.isEmpty && value.length!=10){
                                  return "Enter a valid phone number";
                                }
                              },
                              keyboardType: TextInputType.number,
                              controller: phoneController,
                              decoration: const InputDecoration(

                                  hintText: "Phone",
                                  hintStyle: TextStyle(color: Color.fromARGB(255, 34, 178, 70)),
                                  enabledBorder: OutlineInputBorder(


                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 22, 161, 70)
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(

                                      borderSide: BorderSide(
                                          color: Colors.black
                                      )
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                            child: TextFormField(

                              style: TextStyle(color: Color.fromARGB(255, 28, 164, 75)),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Enter a valid email address";
                                }
                              },
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(

                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Color.fromARGB(255, 48, 168, 84)),
                                  enabledBorder: OutlineInputBorder(


                                      borderSide: BorderSide(
                                          color:Color.fromARGB(255, 16, 0, 0)
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(

                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 6, 0, 0)
                                      )
                                  )
                              ),
                            ),
                          ),

                          Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: TextFormField(
                                style: const TextStyle(color: Color.fromARGB(255, 43, 160, 96)),
                                validator:(value){
                                  if(value!.isEmpty && value.length<8){
                                    return "Enter the password";
                                  }

                                },

                                controller: passwordController,
                                obscureText:clicked!,
                                obscuringCharacter: '*',


                                decoration: InputDecoration(
                                    suffixIcon: InkWell(

                                        onTap: (){





                                          if(clicked==false){
                                            setState(() {
                                              clicked=true;
                                            });

                                          }
                                          else
                                          {

                                            setState(() {
                                              clicked=false;
                                            });
                                          }




                                        },


                                        child: clicked==false?Icon(Icons.visibility,color: Color.fromARGB(255, 24, 5, 5),):Icon(Icons.visibility_off,color: Colors.white,)),
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 36, 173, 113)),
                                    enabledBorder:const OutlineInputBorder(

                                        borderSide: BorderSide(
                                            color: Color.fromARGB(255, 6, 0, 0)
                                        )
                                    ),
                                    focusedBorder:const OutlineInputBorder(

                                        borderSide:BorderSide(
                                            color: Color.fromARGB(255, 2, 0, 0)
                                        )
                                    )
                                ),
                              )
                          ),
                          SizedBox(height: 25,),

                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: TextFormField(
                              style: const TextStyle(color: Color.fromARGB(255, 29, 157, 95)),
                              validator:(value){
                                if(value!.isEmpty && value.length<8){
                                  return " conform password";
                                }

                              },

                              controller: conformPassController,
                              obscureText:clicked!,
                              obscuringCharacter: '*',
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(

                                      onTap: (){





                                        if(clicked==false){
                                          setState(() {
                                            clicked=true;
                                          });

                                        }
                                        else
                                        {

                                          setState(() {
                                            clicked=false;
                                          });
                                        }




                                      },


                                      child: clicked==false?Icon(Icons.visibility,color: Color.fromARGB(255, 11, 2, 2),):Icon(Icons.visibility_off,color: Colors.white,)),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Color.fromARGB(255, 41, 146, 48)),
                                  enabledBorder:const OutlineInputBorder(

                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 1, 0, 0)
                                      )
                                  ),
                                  focusedBorder:const OutlineInputBorder(

                                      borderSide:BorderSide(
                                          color: Color.fromARGB(255, 17, 3, 3)
                                      )
                                  )
                              ),

                            ),
                          ),
                          InkWell(

                              onTap:(){

                                if(_formKey.currentState!.validate()){



                                  //go to db check whether this credntials are valid



                                  //if valid go to profile
                                  // no user exists


                                




                                }

                              },




                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: AppButton(btnText: "Register",btnColor:Colors.green,btnTextColor: Colors.white,),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            )


        ),
      ),
    );
  }


  btnlogic(){

    print("czcz");

  }
  
  AppButton({required String btnText, required MaterialColor btnColor, required Color btnTextColor}) {}


}