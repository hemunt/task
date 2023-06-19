import 'package:flutter/material.dart';

class Transformation extends StatelessWidget {
  const Transformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index){
            return Container(
              width: 220,
              height: 220,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 20.0,top: 12.0),
              decoration: BoxDecoration(
                color: Color(0xffE2F1F4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      image: DecorationImage(
                                          image: AssetImage("Assets/ic_user1.png"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              ),
                              Text("Before"),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      image: DecorationImage(
                                          image: AssetImage("Assets/ic_user1.png"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              ),
                              Text("After"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("Assets/ic_user.png",width: 30,height: 30,),
                      SizedBox(width: 6.0,),
                      Text("John Smith")
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
