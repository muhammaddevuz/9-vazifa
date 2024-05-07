import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaziifa/utils/extensions.dart';

AppBar mobileAppBar() {
  return AppBar(
      leading: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              "team.flow",
              style: GoogleFonts.josefinSans(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      leadingWidth: 200.sp,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))]);
}

AppBar desktopAppBar() {
  return AppBar(
    leading: TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            "team.flow",
            style: GoogleFonts.josefinSans(
                fontSize: 24.h,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ],
      ),
    ),
    leadingWidth: 150.w,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Text(
              "How it Works",
              style: TextStyle(color: Colors.black, fontSize: 16.h),
            ),
            5.width(),
            const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Colors.grey,
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Product",
              style: TextStyle(color: Colors.black, fontSize: 16.h),
            ),
            5.width(),
            const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Colors.grey,
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Pricing",
              style: TextStyle(color: Colors.black, fontSize: 16.h),
            ),
            5.width(),
            const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Colors.grey,
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Resources",
              style: TextStyle(color: Colors.black, fontSize: 16.h),
            ),
            5.width(),
            const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: Colors.grey,
            )
          ],
        ),
      ],
    ),
    actions: [
      Row(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Log in",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade200,
            ),
            child: const Text(
              "Get started free",
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      )
    ],
  );
}

nameCompany(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? Row(
          children: [
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        "name@yourcompany.com",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            10.height(),
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Try It Free",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        )
      : Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              width: 318.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "name@yourcompany.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            10.height(),
            Container(
              width: 318.w,
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Try It Free",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        );
}

List<Widget> invitations(double width) {
  return [
    SizedBox(
        width: width > 800 ? 0.4.sw : 200.w,
        child: Image.asset("assets/timeline.png")),
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: width > 800
                ? const Border(
                    left: BorderSide(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  )
                : const Border(
                    bottom: BorderSide(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                  ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Survey Your Team".boldStyle(),
              const Text(
                "Powerful question that get to the heart of how team members really feel",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Resolve Issues Quickly".boldStyle(),
              const Text(
                "Anonymus messages that connects managers and employees",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Plan Your 1-on-1s".boldStyle(),
              const Text(
                "Plan meetings together and give a stake employees and teams",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: const Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          width: width > 800 ? 0.4.sw : 350.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            children: [
              "Track Your Progress".boldStyle(),
              const Text(
                "Easy-to-read reports and sharable results help managers and teams",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ],
    ),
  ];
}

Widget plans(Image icon, String text1, String text2, double width) {
  return SizedBox(
    height: 306.h,
    width: width > 800 ? width * 0.25 : width * 0.70,
    child: Column(
      children: [
        SizedBox(height: 100.h, width: 100.w, child: icon),
        text1.toString().boldStyle(),
        Text(
          text2,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ],
    ),
  );
}

Widget chartDesktop(double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "We work how youwork everyday",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            15.height(),
            const Text(
              "Since the easiest things to use actually get used, we adapts to the way your team works - not the other way around.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            15.height(),
            Container(
              width: width * 0.16,
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started Free",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: width * 0.55,
        child: Image.asset("assets/chart.png"),
      )
    ],
  );
}

Widget chartPhone(double width) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: width * 0.95,
        child: Image.asset("assets/chart.png"),
      ),
      SizedBox(
        width: width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "We work how youwork everyday",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            15.height(),
            const Text(
              "Since the easiest things to use actually get used, we adapts to the way your team works - not the other way around.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            15.height(),
            Container(
              // width: width * 0.1,
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started Free",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget characters(double width) {
  return SizedBox(
    width: width > 800 ? width * 0.2 : width * 0.5,
    child: Row(
      children: [
        SizedBox(
            width: width > 800 ? width * 0.05 : width * 0.1,
            child: Image.asset("assets/man.png")),
        10.width(),
        const Column(
          children: [
            Text(
              "Jorge Robertson",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "CS at Google",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            )
          ],
        )
      ],
    ),
  );
}

Widget containerPhone(double width) {
  return Container(
    width: width,
    decoration: BoxDecoration(
        color: Color(0xff796EFF), borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        15.height(),
        Text(
          "84% of employees who usetrust their direct manager",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        15.height(),
        SizedBox(
          width: width * 0.5,
          child: Image(image: AssetImage("assets/play.png")),
        ),
        15.height(),
        SizedBox(
          width: width * 0.5,
          child: Image.asset("assets/app.png"),
        ),
        15.height(),
      ],
    ),
  );
}

Widget containerDesk(double width) {
  return Container(
    width: width * 0.9,
    decoration: BoxDecoration(
        color: Color(0xff796EFF), borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "84% of employees who usetrust\n their direct manager",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.13,
                child: Image(image: AssetImage("assets/play.png")),
              ),
              15.width(),
              SizedBox(
                width: width * 0.13,
                child: Image.asset("assets/app.png"),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
