import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/Data/repos/Home_reop.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_best_saller_state.dart';

class FeatureBestSallerCubit extends Cubit<FeatureBestSallerState> {
  FeatureBestSallerCubit(this.homerepo) : super(FeatureBestSallerInitial());
  final Homereop homerepo;
  Future<void> featureBestSallebook() async {
    emit(FeatureBestSallerLoading());
    var result = await homerepo.fetchBestsalerBook();
    result.fold((failure) {
      emit(FeatureBestSallerfailure(errorMessage: failure.errormessage));
    }, (books) {
      emit(FeatureBestSallersuccess(bookssaller: books));
    });
  }
}
