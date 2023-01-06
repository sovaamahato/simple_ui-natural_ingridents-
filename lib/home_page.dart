import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text("W",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 350,
                child: Center(
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Natural \nIngredients",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ))),
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 350,
                    child: Image.network(
                      "https://smartgardenguide.com/wp-content/uploads/2019/02/why-is-my-snake-plant-dying-1-1.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 305.5,
                color: Colors.black,
                child: Center(
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "----   0 1",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ))),
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(9),
                    height: 305.5,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Plants are classified into several \n types based on the basis of their growth habit. "),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) {
                              return DetailPage();
                            })));
                          },
                          child: Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Center(
                                child: Text(
                              "Read more",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ],
                    )),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
