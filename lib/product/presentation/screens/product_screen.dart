import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce2/product/domain/product_cubit/products_cubit.dart';
import 'package:ecommerce2/product/domain/product_cubit/products_states.dart';
import 'package:ecommerce2/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        var code = context.locale.languageCode;
        if (code == 'en') {
          setState(() {
            context.setLocale(Locale('ar'));
          });
        } else {
          setState(() {
            context.setLocale(Locale('en'));
          });
        }
      }),
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Center(
        child: BlocConsumer<ProductsCubit, ProductsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is ErrorState) {
              return Center(
                child: Text('Errorrrrrrrrrrrr'),
              );
            }
            var cubit = context.read<ProductsCubit>();
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ProductItemWidget(product: cubit.list_product[index]);
              },
              itemCount: cubit.list_product.length,
            );
          },
          // )(

          // ),
        ),
      ),
    );
  }
}

//mulit language
// text('${counter.tr('counter')}$counter')
