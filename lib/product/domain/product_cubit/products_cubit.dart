import 'package:bloc/bloc.dart';
import 'package:ecommerce2/product/data/models/product_model.dart';
import 'package:ecommerce2/product/domain/product_cubit/products_states.dart';
import 'package:ecommerce2/product/presentation/domain/data/repositeries/product_repositery.dart';


class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit() : super(IntialState());

  List<ProductModel> list_product = [];
  //fun to get data from data layer (repositery)
  void fetchData() async {
    emit(LoadingState());
    try {
      list_product = await ProductRepositery.getAllProducts();
      emit(LoadedState());
    } catch (e) {
      emit(ErrorState());
    }
  }
}
