import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(24, 24, 24, 1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 10,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(24, 24, 24, 1)
                ),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 8.0), // Отступ между текстовым полем и кругами
            buildCircle(),
            SizedBox(width: 8.0), // Отступ между текстовым полем и кругами
            buildCircle(),
            SizedBox(width: 8.0), // Отступ между кругами
            buildCircle(),
          ],
        ),
      ),
    );
  }

  // Метод для создания круга
  Widget buildCircle() {
    return Container(
      width: 30.0, // Ширина круга
      height: 30.0, // Высота круга
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue, // Цвет круга
      ),
    );
  }
}
