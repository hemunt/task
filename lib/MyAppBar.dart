import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Container(
      padding: EdgeInsets.only(top: height + 10,bottom: 20.0,left: 20.0,right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Container(
              height: 36,
              width: 36,
              padding: EdgeInsets.symmetric(horizontal: 9.5),

              decoration:  BoxDecoration(
                color: Color(0x66CDCDCD),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 2.5,
                        backgroundColor: Color(0xff494964),
                      ),
                      CircleAvatar(
                        radius: 2.5,
                        backgroundColor: Color(0xff494964),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 2.5,
                        backgroundColor: Color(0xff494964),
                      ),
                      CircleAvatar(
                        radius:2.5 ,
                        backgroundColor: Color(0xff494964),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 36,
              width: 36,
              decoration:  BoxDecoration(
                color: Color(0xffCDCDCD),
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",),
                  fit: BoxFit.cover
                )
              ),
              // child: Image.network("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
            )
        ],
      ),
    );
  }
}
