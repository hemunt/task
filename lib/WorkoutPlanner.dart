import 'package:flutter/material.dart';

class WorkoutPlanner extends StatelessWidget {

  final bool isWeb;

  const WorkoutPlanner({super.key, this.isWeb = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      height: isWeb ?  220 :  170,
      decoration: BoxDecoration(
        color: Color(0xfff3f7ff),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text("Today's Workout", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
            ),),
            Text("Approx. 30 mins", style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Color(0xffEFC99A),
                  borderRadius:BorderRadius.circular(20.0),
                ),
                child: Center(child: Text("START NOW")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("CROSS FIT ZUMBA",style: TextStyle(
                  color: Color(0xff137E9C),
                  fontWeight: FontWeight.w600
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
