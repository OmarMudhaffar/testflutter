import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return state();
  }
}

class state extends State<Home> {

  var _formKey = GlobalKey<FormState>();
  var siaplayResult = "";
  TextEditingController numone;
  TextEditingController numtwo;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      key: Key("omar"),
      body: Form(
        key: _formKey,
        child:Padding(padding: EdgeInsets.all(10.0),
        child: ListView(

          children: <Widget>[
            Image(image: AssetImage("images/money.png"),width: 50.0,height: 200.0,),
            TextFormField(
              controller: numone,
              keyboardType: TextInputType.number,
              validator: (String value){
                if(value.isEmpty){
                  return "please full";
                }
              },
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.black,fontSize: 16.0),
                  labelText: "Prince",
                  hintText: "Type the Prince",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            TextFormField(
              controller: numtwo,
              validator: (String value){
                if(value.isEmpty){
                  return "please full";
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Rate",
                  hintText: "Type the Rate",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  onPressed: (){
                   if(_formKey.currentState.validate()){
                     setState(() {
                       siaplayResult = numone.text + numtwo.text;
                     });
                   }
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                      padding: EdgeInsets.all(15.0),
                )),
                Padding(padding: EdgeInsets.all(5.0)),
                Expanded(
                    child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.white)
                  ),
                  color: Colors.blueAccent,
                      padding: EdgeInsets.all(15.0),
                ))
              ],
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Text(siaplayResult)

          ],
        ),
        )
      ),
    );
  }



}
