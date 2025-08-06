import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class DotIndicatorCubit extends Cubit<int> {
  DotIndicatorCubit() : super(0);
  void selectCard(int index) => emit(index);
}
