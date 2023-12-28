part of 'feature_best_saller_cubit.dart';

sealed class FeatureBestSallerState extends Equatable {
  const FeatureBestSallerState();

  @override
  List<Object> get props => [];
}

class FeatureBestSallerInitial extends FeatureBestSallerState {}

class FeatureBestSallerLoading extends FeatureBestSallerState {}

class FeatureBestSallerfailure extends FeatureBestSallerState {
  final String errorMessage;

  const FeatureBestSallerfailure({required this.errorMessage});
}

class FeatureBestSallersuccess extends FeatureBestSallerState {
  final List<BookModel> bookssaller;

  const FeatureBestSallersuccess({required this.bookssaller});
}
