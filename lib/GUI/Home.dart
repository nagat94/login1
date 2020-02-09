import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}
class HomeState extends State<Home>{
  final TextEditingController _emailController=new TextEditingController();
  final TextEditingController _passwordController=new TextEditingController();
  String userinfo='';
  void _onLogin(){
    setState(() {
      if (_emailController.text.isEmpty && _passwordController.text.isEmpty) {
        userinfo = 'pleas enter your email and password';
      }else{
        userinfo='welecome';
      }
    });
    print('Logged in !');
  }
  void _onClear(){
    setState(() {
      _emailController.clear();
      _passwordController.clear();
    });
    print('Clearing');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        backgroundColor: Colors.blue,
        title: new Text('login to facebook'),
      ),
      body:new Container(
        padding: EdgeInsets.all(22.4),
        alignment: Alignment.center,
        child: new ListView(
          children: <Widget>[
            new Image.asset('img/11450.jpg',
              height: 90.0,
              width:90.0 ,
            ),
            new Container(
              child:new Column(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(33.0),),
                  new TextField(
                    style: TextStyle(fontSize: 17.0,color: Colors.black),
                    controller: _emailController,
                    decoration: InputDecoration(
                      icon: new Icon(Icons.email,color: Colors.blue,
                      size: 32.0,),
                      hintText: 'enter your email',
                    ),
                  ),
                  new TextField(
                    style: TextStyle(fontSize: 17.0,color:Colors.black),
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon:new Icon(Icons.lock,color: Colors.blue,
                        size: 32.0,),
                      hintText: 'your password',
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(13.0),),
                  new Center(
                   child: new Row(
                     children: <Widget>[
                       new FlatButton(
                         color: Colors.indigoAccent,
                           textColor: Colors.white,
                           onPressed: _onLogin,
                           child: new Text('Login'),),
                       new Container(
                         margin: EdgeInsets.only(left: 73.0),
                           child: FlatButton(
                               color: Colors.blueAccent,
                               textColor: Colors.white,
                               onPressed: _onClear,
                               child: new Text('Clear')),
                       ),
                     ],
                   ),
                  ),
                  new Padding(padding: EdgeInsets.all(23.0),),
                  new Container(
                    child: new Text('$userinfo',
                    style:TextStyle(color: Colors.blue,fontSize: 18.0),
                  ),
                  ), ],
    ),
    ),
    ],
    ),
      ),
    );

  }

}