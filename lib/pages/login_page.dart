import 'package:flutter/material.dart';


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
                      width: 665,
                      height: 698,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 540,
                            top: 55,
                            child: Container(
                              width: 698,
                              height: 665,
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
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              // color: Colors.amber,
              height: 30,
              width: 336,
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Let's go please",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              width: 336,
              height: 22,
              child:
              const Text("Email",
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
          ],
        ),
        );
      }



      
    }
  



