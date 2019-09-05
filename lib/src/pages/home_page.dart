import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _searchPageDesign(context)
          ],
        ),
      ),
    );
  }

  Widget _searchPageDesign(BuildContext context){
    return Stack(
      children: <Widget>[
        _backgroundSearchPage(context),
        _button(context)
      ],
    );
  }

  Widget _button(BuildContext context){
    return Container(
      padding: EdgeInsets.only(bottom: 35),
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      child: Icon(
        Icons.search,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  Widget _backgroundSearchPage(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.0),
      height: double.infinity,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.orangeAccent
          ]
        )
      ),
      child: _searchBox()
    );
  }

  Widget _searchBox(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[          
          SizedBox(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'DNI',
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  )
                ),
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                border: OutlineInputBorder(),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            child: DropdownButton(
              onChanged: (data){},
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Masculino',
                    style: TextStyle(
                      //color: Colors.black
                    ),
                  ),
                ),
                DropdownMenuItem(
                  child: Text(
                    'Femenino',
                    style: TextStyle(
                      //color: Colors.black
                    ),
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