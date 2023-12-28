import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/Data/repos/Home_reop.dart';
import 'package:equatable/equatable.dart';

part 'featch_simller_book_state.dart';

class FeatchSimllerBookCubit extends Cubit<FeatchSimllerBookState> {
  FeatchSimllerBookCubit(this.homereop) : super(FeatchSimllerBookInitial());
  final Homereop homereop;
  Future<void> featchSillarbook({required String cateory}) async {
    emit(FeatchSimllerBookLoading());
    var result = await homereop.fetchsamillerBook(categoray: cateory);
    result.fold((failuer) {
      emit(FeatchSimllerBookFailuer(errormessage: failuer.errormessage));
    }, (book) {
      emit(FeatchSimllerBookSuccess(booksimaller: book));
    });
  }
}
