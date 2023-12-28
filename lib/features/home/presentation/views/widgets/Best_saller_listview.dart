import 'package:bookly_app/core/widgets/Custom_error_message.dart';
import 'package:bookly_app/features/home/presentation/Manger/Feature_best_saller/feature_best_saller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/CustomBestsaller_listitem.dart';

class BestsallListview extends StatelessWidget {
  const BestsallListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBestSallerCubit, FeatureBestSallerState>(
      builder: (context, state) {
        if (state is FeatureBestSallersuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.bookssaller.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Bestsalleritem(
                    bookModel: state.bookssaller[index],
                  ),
                );
              });
        } else if (state is FeatureBestSallerfailure) {
          return Customerror(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
