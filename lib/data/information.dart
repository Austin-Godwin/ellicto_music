import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Information',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Card(
          margin: EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)),
          color: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 0.0, top: 0.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0.0),
              title: Text(
                'About Ellicto Music',
                style: TextStyle(
                    fontSize: 17.5, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
