import 'package:flutter/material.dart';

class ItemMovieWidget extends StatelessWidget {
  final String title;
  final String src;
  const ItemMovieWidget({
    Key? key,
    required this.title,
    required this.src,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      
      color: Color.fromARGB(255, 39, 48, 65),
      child: Column(children: [
      
        
        ClipRRect(
          borderRadius:  BorderRadius.circular(20),
          child: Image.network(
            
            fit: BoxFit.cover,
            src,
            height: 250,
            width: 150,
          ),
        ),
        Text(
          
          title,
          style: const TextStyle(
            color: Colors.white, fontSize: 14
          ),
        )
      ]),
    );
  }
}
