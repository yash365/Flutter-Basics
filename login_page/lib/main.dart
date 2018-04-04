import 'package:flutter/material.dart';

void main(){
  runApp(new LoginPage());

}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        title:"Login Page",
        home : new HomePage()   // calling stateful widget class
    );
  }

}

// statefulful Widget
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      // body : new Container(
      //      decoration: new BoxDecoration(color: Colors.orange[700]),  // setting bg color
      //   ),
      backgroundColor: Colors.orange[700],        // setting bg color
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,      // align x-axis to center
          mainAxisAlignment: MainAxisAlignment.center,         // align y-axis to center
         children: <Widget>[
            new FlutterLogo(
             size: 120.0
           ),
           new Form(
               child :new Theme(
                 data: new ThemeData(
                   brightness: Brightness.light,
                   primarySwatch: Colors.lightBlue,
                   inputDecorationTheme: new InputDecorationTheme(
                     labelStyle: new TextStyle(
                       color: Colors.lightBlue[900]
                     )
                   )
                 ),
                  child: new Container(
                    padding: const EdgeInsets.all(30.0),
                                      child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                     children:<Widget>[ 
                        // email input
                      new TextFormField(
                       decoration: new InputDecoration(
                         labelText: "Enter Email",
                       ), 
                       keyboardType: TextInputType.emailAddress,
                     ),
                     // password input
                     new TextFormField(
                       decoration: new InputDecoration(
                         labelText: "Enter Password",
                       ), 
                       keyboardType: TextInputType.text,
                       obscureText: true,
                     ),
                     new Padding(
                       padding: const EdgeInsets.only(top: 40.0),
                     ),
                     new MaterialButton(
                       color: Colors.lightBlue,
                       textColor: Colors.black,
                        child: new Text("Go"),
                        onPressed: () => {},
                     )
                 ],               
                 ),
                  ),
               ), 
             ),
         ]
        )
    );
  }


}