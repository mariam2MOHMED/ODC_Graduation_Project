import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:graduation_orange/core/constants/App_Colors.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
              border:  GradientBoxBorder(

                gradient: LinearGradient(colors:
                [Colors.blue, Colors.red]),
                width: 4,

              ),

          ),
        ),
        // Stack(
        //   children: [
        //     // Outer Container (for the border effect)
        //     Container(
        //       width: 125, // Set width to 100
        //       height: 125, // Set height to 100
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.white,
        //         gradient: LinearGradient(
        //           colors: [Colors.grey.shade100, AppColors.primary],
        //           stops: [0.5, 0.5],
        //           begin: Alignment.centerLeft,
        //           end: Alignment.centerRight,
        //         ),
        //       ),
        //     ),
        //     // Inner Container (to create the border effect)
        //     Positioned(
        //       top: 5, // Adjust for border thickness
        //       left: 5, // Adjust for border thickness
        //       child: Container(
        //         width: 115, // Adjust for border thickness (100 - 2 * 5)
        //         height: 115, // Adjust for border thickness (100 - 2 * 5)
        //
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: Colors.white,
        //         ),
        //         child: Center(
        //           child: CircleAvatar(
        //             radius: 35.r,
        //             backgroundColor: AppColors.primary,
        //             child: Icon(Icons.arrow_forward,
        //               color: Colors.white,size: 25.sp,),
        //           ),
        //         ),// Inner color of the container
        //       ),
        //
        //     ),
        //   ],
        // ),
      ),
      // body: Center(
      //   child: Stack(//alignment: AlignmentDirectional.center,
      // children: [
      // // Outer Container (for the border effect)
      // Container(
      // width: 100, // Set width to 100
      //   height: 100, // Set height to 100
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //    color: Colors.white,
      //     gradient: LinearGradient(
      //       colors: [Colors.red, Colors.black],
      //       stops: [0.5, 0.5],
      //       begin: Alignment.centerLeft,
      //       end: Alignment.centerRight,
      //     ),
      //   ),
      // ),
      // // Inner Container (to create the border effect)
      // Positioned(
      //   top: 5, // Adjust for border thickness
      //   left: 5, // Adjust for border thickness
      //   child: Container(
      //     width: 90.w, // Adjust for border thickness (100 - 2 * 5)
      //     height: 90.w, // Adjust for border thickness (100 - 2 * 5)
      //
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //
      //       color: Colors.white,
      //     ),
      //     child: Center(
      //       child: CircleAvatar(
      //         radius: 30.r,
      //         backgroundColor: AppColors.primary,
      //         child: Icon(Icons.arrow_forward,
      //           color: Colors.white,size: 25.sp,),
      //       ),
      //     ),// Inner color of the container
      //   ),
      // ),
      // ],)
      //
      //
      // ),
    );
  }
}
// class CircleBorderPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     double strokeWidth = 10;
//     Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
//     double startAngle = -90 * (3.14159265359 / 180); // Start from top
//     double sweepAngleRed = 270 * (3.14159265359 / 180); // 75% of the circle
//     double sweepAngleBlue = 90 * (3.14159265359 / 180); // 25% of the circle
//
//     Paint redPaint = Paint()
//       ..color = Colors.red
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;
//
//     Paint bluePaint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke
//       ..strokeCap = StrokeCap.round;
//
//     // Draw the red (75%)
//     canvas.drawArc(rect, startAngle, sweepAngleRed, false, redPaint);
//
//     // Draw the blue (25%)
//     canvas.drawArc(rect, startAngle + sweepAngleRed, sweepAngleBlue, false, bluePaint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
