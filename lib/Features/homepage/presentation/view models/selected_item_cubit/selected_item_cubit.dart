import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_item_state.dart';

class SelectedItemCubit extends Cubit<SelectedItemState> {
  SelectedItemCubit() : super(SelectedItemInitial());
  void selectItem(int? index) {
    if (index != null) {
      emit(SelectedItemChanged(index));
    } else {
      emit(SelectedItemInitial());
    }
  }
}
