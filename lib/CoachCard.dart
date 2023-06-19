import 'package:flutter/material.dart';
class CoachCard extends StatelessWidget {
  const CoachCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffE2F1F4)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Luke Cutinho",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(
                height:6,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Text("Start your journey towards a new Holistic lifestyle with your own personalised plan",maxLines: 3,style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),),
              ),
              SizedBox(
                height:16,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff51B6CF),
                    borderRadius:BorderRadius.circular(20.0),
                  ),
                  child: Center(child: Text("Enroll Now")),
                ),
              ),
            ],
          ),
          Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(6),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFC4564),
                      Color(0xffFFC890),
                      Color(0xffFE8628),
                      Color(0xff90CDF5),
                      Color(0xff2C97F0),
                    ])
            ),
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
            ),
          )
        ],
      ),
    );
  }
}
