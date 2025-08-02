import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selecetd_item_expenses_state.dart';

class SelecetdItemExpensesCubit extends Cubit<SelecetdItemExpensesState> {
  SelecetdItemExpensesCubit() : super(SelecetdItemExpensesInitial());

  void selectItemExpenses(int index) {
    emit(SelecetdItemExpensesChanged(selectedIndex: index));
  }
}
