import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietRadioButtonContainer extends StatefulWidget {
  const DietRadioButtonContainer({super.key});

  @override
  State<DietRadioButtonContainer> createState() => _DietRadioButtonContainerState();
}

class _DietRadioButtonContainerState extends State<DietRadioButtonContainer> {
  List<bool> check = [
    true,
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: check.length,
          itemBuilder: (context,i){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    check[i] = !check[i];
                  });
                },
                child: Row(
                  children: [
                      SizedBox(
                        width: 60,
                        child: Center(
                          child: check[i] ? SvgPicture.asset("Assets/ic_check.svg") : SvgPicture.asset("Assets/ic_radio.svg"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                        margin: EdgeInsets.only(bottom: 12),
                          padding: EdgeInsets.all(14),
                          height: 85,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 6,
                                offset: Offset(1,2),

                              )
                            ],
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18),topLeft: Radius.circular(18)),

                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: NetworkImage("https://images.squarespace-cdn.com/content/v1/580a73c320099eeb9bb90e68/1626120864584-WFTQL4822T0894LBMDLK/Ropa-Vieja-with-Australian-Grassfed-Flank-Steak.jpg?format=1000w",),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Recipe number 5",style: TextStyle(
                                      fontSize: 14,
                                    ),),
                                    Text("Breakfast",style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey
                                    )),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("1 Bowl",style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff79CFB9)
                                      )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              );
      }),
    );
  }
}
