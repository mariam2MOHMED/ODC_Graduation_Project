import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graduation_orange/core/network/remote/dio_helper.dart';
import 'package:graduation_orange/core/network/remote/endpoints.dart';
import 'package:graduation_orange/features/auth/data/models/user_model.dart';
import 'package:graduation_orange/features/home/data/models/product_model.dart';
import 'package:graduation_orange/features/home/presentation/screens/modules/browse_screen.dart';
import 'package:graduation_orange/features/home/presentation/screens/modules/cart_screen.dart';
import 'package:graduation_orange/features/home/presentation/screens/modules/home_screen.dart';
import 'package:graduation_orange/features/home/presentation/screens/modules/wishlist.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<ProductModel>products=[];
  UserModel? userModel;
  ProductModel? productModel;
  int index=0;
  List<Widget>screens=[
    HomeScreen(),
    BrowseScreen(),
    WishListScreen(),
    CartScreen()
  ];
  List<BottomNavigationBarItem>items=[
    BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/home_icon.png"),),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Browse'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'WishList'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Cart'),
  ];
  void changeIndex(int currindex){
    index=currindex;
    emit(HomeChangeBottomNavBar());
  }
  List<ProductModel>searchs=[];
  void getUserData(){
    emit(HomeUserDataLoading());
    DioHelper.getData(url: Endpoints.usersEndPoints).then((value) {
      if(value.statusCode==200&& value.data!=null){
        userModel=UserModel.fromJson(value.data);
        emit(HomeUserDataSucess());
        print(userModel!.name);
      }else{
        emit(HomeProductError(error: "User Data Failed"));
      }
    }).catchError((error){
      emit(HomeProductError(error: error.toString()));
    });
  }
  getSearch(String query){
    if(query.isEmpty){
searchs=products;
    }else{
      searchs=products.where((product) => product.title!.toLowerCase()
          .contains(query.toLowerCase())).toList();
    }
    emit(BrowseSearch());
  }
void  getProducts(){
emit(HomeProductLoading());
DioHelper.getData(url: Endpoints.productsEndpoint).then((value) {
  if(value.statusCode==200){
    products=(value.data as List).map((e) =>ProductModel.fromJson
      (e)).toList();
    emit(HomeProductSucess());
  }else{
   emit(HomeProductError(error: "Failed to Loaded Products"));
  }

}).catchError((error){
  emit(HomeProductError(error: error.toString()));
});
  }
}
