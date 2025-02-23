import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_orange/core/constants/App_Colors.dart';
import 'package:graduation_orange/core/constants/styles.dart';
import 'package:graduation_orange/features/home/logic/home_cubit/home_cubit.dart';
import 'package:graduation_orange/features/home/presentation/screens/notifications_screen.dart';
import 'package:graduation_orange/features/home/presentation/widgets/custom_product.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => HomeCubit()..getProducts(),
  child: BlocConsumer<HomeCubit, HomeState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return
      SafeArea(
        child:
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 300.h,
                    decoration:  BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffFBCCDC),
                          // blurRadius: 4.0,spreadRadius: 12,
                          offset: Offset(4, 0),
                        )
                      ],
                      gradient: LinearGradient(
                          colors: [Color(0xffFDA56C),Color(0xffFDA56C).withOpacity(0.6),Color(0xFFFD6C8A),Color(0xFFFD6C8A),
                            Color(0xFFFFBCCDC)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 30.h,horizontal: 20.w),
                    child: Column(
                      children: [
            
                        Row(
                          children: [
                            CircleAvatar(radius: 24.r,
                              backgroundColor:AppColors.
                              lightwhite,
                              child: Icon(Icons.
                              location_on,color: Colors.white,),
                            ),
                            SizedBox(width: 12.w,),
                            Column(crossAxisAlignment:CrossAxisAlignment.start ,
                              children: [
                                Text("Location",style: Styles.style12White,),
                                SizedBox(height: 10.h,),
                                Text("Condong Catur",style: Styles.style14white,),
                              ],
                            ),
                            Spacer(),
                            CircleAvatar(radius: 24.r,
                              backgroundColor: Colors.white.withOpacity(0.20000000298023224),
                              child: Transform.rotate(
                                  angle: 25,
                                  child: GestureDetector(
                                      onTap: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));
                                      },
                                      child: Icon(Icons.notifications,color: Colors.white,))),
                            ),
                            SizedBox(width: 7.w,),
                            CircleAvatar(radius: 24.r,
                              backgroundImage: AssetImage("assets/images/Profile.png"),
            
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h,),
                        Text("Find best device for\n your setup!",style: Styles
                            .style32.copyWith(color: Colors.white),)
                        ,SizedBox(height: 20.h,),
            
            
                        Stack(clipBehavior: Clip.none,
                          children: [
                            Container(     width: 335.w,
                              height: 190.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.r),
                                  image: DecorationImage(image:
                                  AssetImage("assets/images/Background.png"),fit: BoxFit.fill)
                              ),),
                            Positioned(top: -35.h,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  children: [
                                    Column(crossAxisAlignment:CrossAxisAlignment.start ,
                                      children: [
                                        SizedBox(height: 50.h,),
                                        Text("New Bing\n Wireless\n Earphone",style: Styles.style28.copyWith(color: Colors.white),),
                                        SizedBox(height: 10.h,),
                                        Row(
                                          children: [
                                            Text("See Offer ",style: Styles.style16.copyWith(color: Colors.white),),
                                            ImageIcon(AssetImage("assets/images/halfarrow.png"),color: Colors.white,)
                                          ],
                                        ),
            
            
                                      ],
                                    ),
                                    SizedBox(width: 25.w,),
                                    // ImageIcon(AssetImage
                                    //   ("assets/images/hear.png"),
                                    //   color: Colors.white,)
                                    Image.asset(// i want to make this image outside container
                                      "assets/images/hear.png",
                                      fit: BoxFit.fill,height: 200.h,)
                                    //    Positioned(
                                    //        top: 50.0,
                                    //        child: Image.asset(
                                    // "assets/images/hear.png"))
            
                                  ],
                                ),
                              ),
                            ),
            
                          ],
                        )
                      ],
                    ),
                  ),
                ],
                ),
                //
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Hot deals🔥",style: Styles.style18,),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.darkwhite,
                                borderRadius: BorderRadius.circular(4.r)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("02",style: Styles.style12.
                              copyWith(color: AppColors.black,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(width: 1.5,),
                          ImageIcon(AssetImage("assets/images/dot.png"),color: AppColors.black,)
                          ,SizedBox(width: 1.5,),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.darkwhite,
                                borderRadius: BorderRadius.circular(4.r)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("12",style: Styles.style12.
                              copyWith(color: AppColors.black,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(width: 1.5,),
                          ImageIcon(AssetImage("assets/images/dot.png"),color: AppColors.black,)
                          ,SizedBox(width: 1.5,),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.darkwhite,
                                borderRadius: BorderRadius.circular(4.r)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("00",style: Styles.style12.
                              copyWith(color: AppColors.black,fontWeight: FontWeight.bold),),
                            ),
                          ),
            
            
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      SizedBox(  height: 190.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return ConditionalBuilder(condition: state is !HomeProductLoading,
                                  builder: (context)=>CustomProduct(
                                    productModel: context.read<HomeCubit>().
                                    products[index],
                                  ),
                                  fallback: (context)=>Center(
                                    child: Center(
                                      child: LoadingAnimationWidget.inkDrop
                                        (color: AppColors.pink, size: 30.sp),
                                    ),
                                  ));
                                ;
                            },
                            separatorBuilder: (context,index){
                              return SizedBox(width: 20.w,);
                            },
                            itemCount: context.read<HomeCubit>().products.length),
                      ),
                      SizedBox(height: 10.h,),
                      Text("Categories",style: Styles.style18,),
                      SizedBox(height: 10.h,),
                      GridView.builder(
                        shrinkWrap: true,physics:   NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,mainAxisSpacing: 20,
                            crossAxisSpacing: 20),
                          itemBuilder: (context,index){
                            return ConditionalBuilder(condition: state is !HomeProductLoading,
                                builder: (context)=>CustomProduct(
                                  productModel: context.read<HomeCubit>().
                                  products[index],
                                ),
                                fallback: (context)=>Center(
                                  child: Center(
                                    child: LoadingAnimationWidget.inkDrop
                                      (color: AppColors.pink, size: 30.sp),
                                  ),
                                ));
                          },itemCount: context.read<HomeCubit>().products.length,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
 ;
  },
),
);
  }
}
