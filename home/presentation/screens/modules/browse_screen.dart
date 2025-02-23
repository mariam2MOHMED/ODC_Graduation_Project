import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_orange/core/constants/App_Colors.dart';
import 'package:graduation_orange/features/home/logic/home_cubit/home_cubit.dart';
import 'package:graduation_orange/features/home/presentation/widgets/custom_product.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 30.h,),
              TextFormField(
                onChanged: (query){
                  context.read<HomeCubit>().getSearch(query);
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: AppColors.primary,),
                    hintText: "Search laptop, headset..",
                    hintStyle: TextStyle(
                        color: AppColors.lightgrey
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.w,
                            color: AppColors.lightgrey
                        ),
                        borderRadius: BorderRadius.circular(34.r)
                    )
                ),
              ),
              SizedBox(height: 20.h,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: context.read<HomeCubit>().searchs.length,
                  gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 13/16,
                  crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),
                  itemBuilder: (context,index){
                return ConditionalBuilder(condition: state is !HomeProductLoading,
                    builder: (context)=>CustomProduct(productModel: context.read<HomeCubit>().searchs[index]), fallback: (context)=>Center(
                      child: LoadingAnimationWidget.inkDrop(color: AppColors.primary,
                          size: 25.sp),
                    ));
                  })
            ],),
          ),
        );
      },
    );
  }
}
