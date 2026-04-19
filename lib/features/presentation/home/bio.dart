import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';
import 'package:instagram_task/core/responsive/responsive_extensions.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text("Jack Chiorlu", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                            Text("Digital creator"),
                            Text("Software Engineer | Workaholic 👨‍💻"),
                             Text("sapiosixual"),
                             Text("team breezy"),
                             SizedBox(height: context.h(10)),
                             Row(
                              children: [
                                ImageIcon(AssetImage('assets/png/Threads.png')),
                                SizedBox(width:context.w(5)),
                                Text("_jwsv en"),
                                SizedBox(width:context.w(10)),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        ImageIcon(
                                          AssetImage('assets/png/Ellipse.png'),
                                          
                                        ),
                                        ImageIcon(
                                          AssetImage('assets/png/Facebook.png'),
                                          
                                        ),
                                      ],
                                    ),
                                SizedBox(width:context.w(5)),
                                Text("Jack chiorlu"),
                              ],
                             ),
                               SizedBox(height: context.h(10)),

                             Container(
                              color: context.appTheme.background,
                              width: context.w(400),
                              height: context.h(60),
                             
                              child: Padding( 
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [ 
                                    Text("professional dashboard",
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold), ),
                                     Text("1.2k view in last 30 days dashboard",
                                    style: TextStyle(fontSize: 12,), ),
                                  ],
                                ),
                              ),
                             )

                    ],
                  ),
                );
  }
}