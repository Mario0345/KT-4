import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonProvider with ChangeNotifier {
  bool _isPressed = false;

  bool get isChecked => _isPressed;

  set isChecked(bool value) {
    _isPressed = value;
    notifyListeners();
  }
}

class CheckboxProvider with ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
          body: Row(
          
            children: [
              // Expanded(
                 Expanded(
                   child: Container(
                    // width: 1000,
                    // height: 800,            //  alignment: Alignment.bottomLeft,
                   
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      // width: 665,
                      // height: 698,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 480,
                            top: 0,
                            child: Container(
                              // alignment: Alignment.topCenter,
                              width: 276,
                              height: 66,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('lib/images/mdex 2.jpg'))
                              ),
                            ),
                            ),
                          Positioned(
                            right: 600,
                            top: 80,
                            child: Container(
                              width: 665,
                              height: 698,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('lib/images/background-mdex.png'))
                              ),
                            ),
                            ),
                            Positioned(
                              left: 450,
                              top: 100,
                              child: LoginBox_(context),
                              ),
                        ],
                      ),
                    ),
                                 ),
                               ),
                 ),
              
              // ),
           
            ],
          ),
          
        );
  }


  
    @override
    Widget LoginBox_(BuildContext context) {
      return Container(
        // alignment: Alignment.center,
        width: 400,
        height: 500,
        
        decoration:const BoxDecoration(
          color: Color.fromARGB(255, 33, 35, 40),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(4),
          //   topRight: Radius.circular(4),
          //   bottomLeft: Radius.circular(4),
          //   bottomRight: Radius.circular(4),
          // ),
          border: Border(
            top: BorderSide(width: 4, color: Color.fromARGB(255, 255, 103, 64),
  
            ),
          ),  
        ),
        child: Column_insideLBox_(context),
      );
    }


    
    
      @override
      Widget Column_insideLBox_(BuildContext context){
        return Container(
          width: 620,
          height: 550,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              // color: Colors.amber,
              height: 30,
              width: 336,
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sign in to your account",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),),
            ),
            SizedBox(
              height: 75,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              width: 336,
              height: 22,
              child:
              const Text("Username or email",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              ),
            ),
           const SizedBox(
              width: 336,
              height: 30,
              child: TextField(
                
                decoration: InputDecoration(
                  
                  hintStyle: TextStyle(color: Color.fromARGB(255, 61, 65, 74),),
                  filled: true,
                  fillColor: Color.fromARGB(255, 61, 65, 74),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
             Container(
              alignment: Alignment.bottomLeft,
              width: 336,
              height: 22,
              child:
              const Text("Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              ),
            ),
            const SizedBox(
              width: 336,
              height: 30,
              child: TextField(
                
                decoration: InputDecoration(
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color:Color.fromARGB(255, 33, 35, 40)),
                  // ),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 61, 65, 74),),
                  filled: true,
                  fillColor: Color.fromARGB(255, 61, 65, 74),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 336,
              child: Row(
                children: [
                  SizedBox(
                height: 37,
              ),
              Container(
                color: Colors.white,
                width: 12,
                height: 12,
                child: ChangeNotifierProvider(
                  create: (_) => CheckboxProvider(),
                  child: Consumer<CheckboxProvider>(
                    builder: (context, checkboxProvider, _) => Checkbox(
                      checkColor: Colors.black,
                      activeColor: Color.fromARGB(255, 255, 103, 64),
                      value: checkboxProvider._isChecked,
                      onChanged: (value) {
                        checkboxProvider.isChecked = value ?? true;
                      }
                    ),
                  ),
                  ),
              ),
              SizedBox(width: 10),
              SizedBox(
                child:Text("Remember me",
                style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 110),
              ),
              SizedBox(
                child: Text("Forgot Password?",
                style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                ),
              ),
            ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 336,
              child:  ChangeNotifierProvider(
                create: (_) => ButtonProvider(),
                child: Consumer<ButtonProvider>(
                  builder: (context, checkboxProvider, _) => 
                  OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(336, 37),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 103, 64),
                ),
                child: Text("Sign In",
                style: TextStyle(color: Colors.white,),
                ),
                onPressed: () => {
                  ButtonProvider(),
                }
              ),
                ),
              ),
              
            ),
            Container(
              width: 336,
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child:Text("Try another way",
                style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                ),
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 665,
                    height: 58,
                    // alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("New user?",
                        style: TextStyle(color: Colors.white,),
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        Text("Register",
                        style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                        ),

                      ],
                    ),
                    // child: RichText(text: TextSpan(
                    //   children: [
                    //     TextSpan(
                    //       text: "New user?",
                    //       style: TextStyle(color: Colors.white,),
                    //     ),
                    //     TextSpan(),
                    //     TextSpan(
                    //       text: "Register",
                    //       style: TextStyle(color: Color.fromARGB(255, 255, 103, 64),),
                    //     ),
                    //   ], 
                    // ),
                    // ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 46, 47, 55),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
        );
      }



      
    }
  



