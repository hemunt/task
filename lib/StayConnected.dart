import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class StayConnected extends StatelessWidget {
  const StayConnected({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 220,
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                color: Color(0xffEFF7E1),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset("Assets/ic_graph.svg",width: 14,height: 14),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Track",style: TextStyle(
                    fontSize: 16
                ),),
                Text("Progress",style: TextStyle(
                    fontSize: 16
                ),),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Container(
                height: 100,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffBDD7FA),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset("Assets/ic_glass.svg"),
                    ),
                    SizedBox(width: 20.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Water Tracker",style: TextStyle(
                            fontSize: 16
                        ),),
                        Text("Tap to add",style: TextStyle(
                            color: Color(0xff70A7F2)
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset("Assets/ic_headphones.svg",width: 14,height: 14),
                    ),
                    SizedBox(width: 20.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Water Tracker",style: TextStyle(
                            fontSize: 16
                        ),),
                        Text("Tap to add",style: TextStyle(
                            color: Color(0xff70A7F2)
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
