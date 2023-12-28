import 'package:bookly_app/Blocobserv.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/Data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/Manger/Feature_best_saller/feature_best_saller_cubit.dart';
import 'package:bookly_app/features/home/presentation/Manger/Feature_books/feature_books_cubit.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Bloc.observer = simpleobserv();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBestSallerCubit(Homerepoimpl())..featureBestSallebook(),
        ),
        BlocProvider(
          create: (context) => FeatureBooksCubit(Homerepoimpl())..getBooks(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColors,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        home: const SplashView(),
      ),
    );
  }
}
