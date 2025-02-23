import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_orange/core/constants/styles.dart';
import 'package:graduation_orange/features/auth/presentation/view/screens/login_screen.dart';
import 'package:graduation_orange/features/on_boarding/presentation/view/widgets/on_boarding_widget.dart';

import '../../../models/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var pageController=PageController();
  int currindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, child: Text("Skip",style: Styles.style14w500))
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Expanded(
              child: PageView.builder(
                onPageChanged: (index){
                  if(currindex==OnBoardingModel.boards.length){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  }
                },
                controller: pageController,
                itemBuilder: (context,index){
                  return     OnBoardingWidget(
                    index: currindex,
                    onBoardingModel:
                  OnBoardingModel.boards[index],
                    controller: pageController,);
                },itemCount:OnBoardingModel.boards.length,),
            ),
            SizedBox(height: 20.h,),

          ],
        ),
      ),
    );
  }
}
