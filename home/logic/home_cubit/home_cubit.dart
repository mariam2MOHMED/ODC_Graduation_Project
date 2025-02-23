import 'package:bloc/bloc.dart';
import 'package:graduation_orange/core/network/remote/dio_helper.dart';
import 'package:graduation_orange/core/network/remote/endpoints.dart';
import 'package:graduation_orange/features/home/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<ProductModel>products=[];
  getProducts(){
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
