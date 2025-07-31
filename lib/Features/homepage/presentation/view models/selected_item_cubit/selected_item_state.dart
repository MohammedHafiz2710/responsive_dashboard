part of 'selected_item_cubit.dart';

@immutable
sealed class SelectedItemState {}

final class SelectedItemInitial extends SelectedItemState {
  final int selectedIndex = 0;
}

final class SelectedItemChanged extends SelectedItemState {
  final int selectedIndex;

  SelectedItemChanged(this.selectedIndex);
}
