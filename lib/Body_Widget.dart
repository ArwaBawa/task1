import 'package:flutter/material.dart';

Widget change_The_Page(String option) {
//Widget body;
  switch(option){
    case'A':
    return Container(
      color: Colors.red,
        child: Center(
          
            child: Text(
              'Hello, it is me',
            ),
         
        ),
      );
      
    
    case'B':
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Click me',
            ),
          ),
        ),
      );
      

      case'C':
      return GridView.count(
        crossAxisCount: 2, // Number of columns
        mainAxisSpacing: 10, // Vertical space between items
        crossAxisSpacing: 10, // Horizontal space between items
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]
      );

       default:
      return Container(
        child: Center(child: Text('Unknown Content')),
      );
  
  }
  }

