import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
        
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close,size: 20,color: Colors.white,),
                      SizedBox(height: 25,),
                      Text("Login to\nYour account",style: TextStyle(
                        color: Colors.white,
                        fontSize:26,
                      ),)
                    ],
                  ),
                ),
                Expanded(child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.deepPurple,
                    backgroundImage: AssetImage("assets/images/login4.png",
                      //child: Image.asset("assets/images/login4.png",
                      //  fit: BoxFit.fill,
                    )
                ),
                ),
        
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                //width: double.infinity,
        
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(35),topRight: Radius.circular(35)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
        
                          Text("Email",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),),
                          SizedBox(
                            height: 55,
                            child: TextFormField(
                              controller: emailController,
        
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.white),
        
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                filled: true,
                                fillColor: Colors.grey[300],
        
        
                              ),
                              validator: (value){
                                if(value!.isEmpty)
                                  return "Email must not be empty";
                                return null;
                              },
        
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("Password",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),),
                          SizedBox(
                            height: 55,
                            child: TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                filled: true,
                                fillColor: Colors.grey[300],
        
                              ),
                              obscureText: true,
                              obscuringCharacter: '*',
                              onTapOutside: (event) {
        
                              },
                              validator: (value){
                                if(value!.isEmpty)
                                  return "Password must not be empty";
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: TextButton(onPressed: (){},
                              child:Text("Forget Password?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepPurple
                                ),
                                onPressed: (){
                                  if(formKey.currentState!.validate()) {
                                    print(emailController.text);
                                    print(passwordController.text);
                                  }
                                },
                                child: Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),)),
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Text("Or",style: TextStyle(
                                color: Colors.black,
                                fontSize: 14
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),),
                              TextButton(onPressed: (){},
                                child:Text("Sign Up",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
        
                            ],
                          ),
                        ],
                      ),
                    ),
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
