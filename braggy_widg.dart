import 'package:flutter/material.dart';

class Braggy extends StatelessWidget {
  final String name;

  const Braggy({Key? key, required this.name}) : super(key: key);

  Widget _buildAvatar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.account_circle,
          size: 25.0,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          _buildAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name (${name.replaceAll(" ", "").length} Letters)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
