part of 'selecetd_item_expenses_cubit.dart';

@immutable
sealed class SelecetdItemExpensesState {}

final class SelecetdItemExpensesInitial extends SelecetdItemExpensesState {
  final int selectedIndex = 0;
}

final class SelecetdItemExpensesChanged extends SelecetdItemExpensesState {
  final int selectedIndex;

  SelecetdItemExpensesChanged({required this.selectedIndex});
}
