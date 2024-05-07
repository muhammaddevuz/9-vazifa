import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaziifa/utils/extensions.dart';
import 'package:vaziifa/widgets/widgets.dart';

class FirstPage extends StatelessWidget {
  List easier = [
    {
      "icon": Image.asset("assets/icon1.png"),
      "tex1": "Team Surveys & Reports",
      "text2":
          "Short, anonymous surveys track your team's needs weekly so you can focus."
    },
    {
      "icon": Image.asset("assets/icon2.png"),
      "tex1": "Collaborative 1:1",
      "text2": "Build relationships by planning 1-on-1s and start meetings."
    },
    {
      "icon": Image.asset("assets/icon3.png"),
      "tex1": "Learning Center",
      "text2":
          "Quickly get solutions tailored to your personal challenges from the manager."
    },
    {
      "icon": Image.asset("assets/icon4.png"),
      "tex1": "Anonymous Messaging",
      "text2": "Develop trust in a safe channel for important conversations."
    },
    {
      "icon": Image.asset("assets/icon5.png"),
      "tex1": "Conversation Engine",
      "text2": "Communicate confidently with recommended talking points."
    },
    {
      "icon": Image.asset("assets/icon6.png"),
      "tex1": "Exclusives Manager",
      "text2":
          "Access manager tips, activities and best practices from our team of experts."
    },
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenWidth > 800 ? desktopAppBar() : mobileAppBar(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade100,
                      ),
                      child: Text(
                        "Get account of 59\$>",
                        style: TextStyle(fontSize: 13.h),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 370.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Manage the team everyone wants to be on ",
                        style: GoogleFonts.inter(
                            fontSize: 30.h, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      10.height(),
                      const Text(
                          "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
                          textAlign: TextAlign.center),
                      // Row(
                      //   children: [Container()],
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [nameCompany(context)],
                      )
                    ],
                  ),
                ),
                Image.asset("assets/chart.png"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("TRUSTED BY OVER "),
                        "10,000+".boldStyle(),
                        const Text(" WORLD'S BEST TEAMS "),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 350.w,
                            padding: const EdgeInsets.all(20),
                            child: screenWidth > 800
                                ? Image.asset("assets/logo_d.png")
                                : Image.asset("assets/logo_p.png"))
                      ],
                    ),
                  ],
                ),
                screenWidth > 800
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: invitations(screenWidth),
                      )
                    : Column(
                        children: invitations(screenWidth),
                      ),
                30.height(),
                screenWidth > 800
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Make your work easier",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    : const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Make your work easier",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                screenWidth > 800
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              plans(easier[0]['icon'], easier[0]["tex1"],
                                  easier[0]["text2"], screenWidth),
                              plans(easier[1]['icon'], easier[1]["tex1"],
                                  easier[1]["text2"], screenWidth),
                              plans(easier[2]['icon'], easier[2]["tex1"],
                                  easier[2]["text2"], screenWidth)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              plans(easier[3]['icon'], easier[3]["tex1"],
                                  easier[3]["text2"], screenWidth),
                              plans(easier[4]['icon'], easier[4]["tex1"],
                                  easier[4]["text2"], screenWidth),
                              plans(easier[5]['icon'], easier[5]["tex1"],
                                  easier[5]["text2"], screenWidth)
                            ],
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          plans(easier[0]['icon'], easier[0]["tex1"],
                              easier[0]["text2"], screenWidth),
                          plans(easier[1]['icon'], easier[1]["tex1"],
                              easier[1]["text2"], screenWidth),
                          plans(easier[2]['icon'], easier[2]["tex1"],
                              easier[2]["text2"], screenWidth),
                          Container(
                            width: screenWidth * 0.7,
                            padding: EdgeInsets.all(15.w),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 189, 184, 206),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Try It Free",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                15.height(),
                screenWidth > 800
                    ? chartDesktop(screenWidth)
                    : chartPhone(screenWidth),
                screenWidth > 800 ? 20.height() : 40.height(),
                SizedBox(
                  width:
                      screenWidth > 800 ? screenWidth * 0.3 : screenWidth * 0.7,
                  child: Column(
                    children: [
                      const Text(
                        "Why customers love working with us",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      15.height(),
                      const Text(
                        textAlign: TextAlign.center,
                        "“It's amazing what has helped me learn about my team.I don't worry about blind spots anymore, and 1-on-1s have never been more productive. The team loves it.”",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                30.height(),
                screenWidth > 800
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          characters(screenWidth),
                          characters(screenWidth),
                          characters(screenWidth),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          characters(screenWidth),
                        ],
                      ),
                30.height(),
                screenWidth > 800
                    ? containerDesk(screenWidth)
                    : containerPhone(screenWidth)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
