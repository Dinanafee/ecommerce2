
import 'package:ecommerce2/authentication/presentation/sign_up.dart';
import 'package:ecommerce2/product/domain/product_cubit/products_cubit.dart';
import 'package:ecommerce2/product/presentation/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit()..fetchData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Signup2(),
      ),
    );
  }
}
