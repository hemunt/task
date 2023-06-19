import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/CoachCard.dart';
import 'package:task/MyAppBar.dart';
import 'package:task/StayConnected.dart';
import 'package:task/Transformations.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'DietRadioButtonContainer.dart';
import 'WorkoutPlanner.dart';
class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: const [
                Text("Hello, ",style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffCDCDCD)
                ),),
                Text("Daniel",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,

                )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Diet Planner",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),),
                Text("See More",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xddCDCDCD),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          DietRadioButtonContainer(),
          SizedBox(
            height: 10,
          ),
          kIsWeb ? MediaQuery.of(context).size.width > 800? Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Workout Planner ",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),),
                          Text("See More",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xddCDCDCD),
                          )),
                        ],
                      ),
                    ),
                    WorkoutPlanner(),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Stay connected",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),),
                          Text("",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xddCDCDCD),
                          )),
                        ],
                      ),
                    ),
                    StayConnected(),
                  ],
                ),
              )
            ],
          ) : Column(
            children: [
              WorkoutPlanner(isWeb: false),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Stay connected",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                    Text("",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xddCDCDCD),
                    )),
                  ],
                ),
              ),
              StayConnected(),
            ],
          ) : Column(
            children: [
              WorkoutPlanner(isWeb: false),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Stay connected",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                    Text("",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xddCDCDCD),
                    )),
                  ],
                ),
              ),
              StayConnected(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Know your Coach",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),),
                Text("",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xddCDCDCD),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CoachCard(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Transformation",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),),
                Text("See More",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xddCDCDCD),
                )),
              ],
            ),
          ),
          Transformation(),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
