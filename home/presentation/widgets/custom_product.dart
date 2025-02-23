import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_orange/core/constants/styles.dart';
import 'package:graduation_orange/features/home/data/models/product_model.dart';

class CustomProduct extends StatelessWidget {
  ProductModel productModel;

   CustomProduct({
    required this.productModel
});

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 159.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.network(productModel.image!,width:118.w ,
            height:85.h ,fit: BoxFit.fill,),
          SizedBox(height: 7.0,),
          Text(productModel.title!,maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Styles.style14w500.copyWith(
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 5.0,),
          Text("\$ ${productModel.price!.toString()}",textAlign: TextAlign.center,
            style: Styles.style16blue.copyWith
              (fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
