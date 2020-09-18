import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_taxi_app_onboarding/model/page_model.dart';

class OnBoardingScreen extends StatelessWidget {
  final List<PageModel> _pageData = [
    PageModel(
      "assets/img1.png",
      "Request Ride",
      "Request a ride get picked up by a nearby community driver",
    ),
    PageModel(
      "assets/img2.png",
      "Confirm Your Driver",
      "Huge Drivers network helps. find comfortable, safe and cheap ride",
    ),
    PageModel(
      "assets/img3.png",
      "Track Your Ride",
      "Know your driver in advance and be able to view current location in real time",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _pageData.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(_pageData[index].image),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  _pageData[index].title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  _pageData[index].descripion,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        index != 2
                            ? Text(
                          "SKIP",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        )
                            : Container(
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.50,
                            ),
                          ),
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _pageData.map((e) {
                            return Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(2),
                              height: 3,
                              width:  index == _pageData.indexOf(e)?20:8,
                              decoration: BoxDecoration(
                                color: index == _pageData.indexOf(e) ? Colors
                                    .black : Colors.black.withOpacity(.3),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
