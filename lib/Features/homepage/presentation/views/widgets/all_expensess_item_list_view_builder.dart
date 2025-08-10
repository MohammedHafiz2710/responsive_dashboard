import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/view%20models/selecetd_item_expenses_cubit/selecetd_item_expenses_cubit.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/all_expensess_item.dart';

class AllExpensessItemListViewBuilder extends StatelessWidget {
  const AllExpensessItemListViewBuilder({super.key});
  static const List<AllExpensessItemModel> items = [
    AllExpensessItemModel(image: Assets.imagesMoneys, title: "Balance", subtitle: "April 2022", amount: 20.129),
    AllExpensessItemModel(image: Assets.imagesCardReceive, title: "Income", subtitle: "April 2022", amount: 20.129),
    AllExpensessItemModel(image: Assets.imagesCardSend, title: "Expenses", subtitle: "April 2022", amount: 20.129),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelecetdItemExpensesCubit(),
      child: Row(
        // old solution
        spacing: 12,
        children: items.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          return BlocBuilder<SelecetdItemExpensesCubit, SelecetdItemExpensesState>(
            builder: (context, state) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<SelecetdItemExpensesCubit>().selectItemExpenses(index);
                  },
                  child: AllExpensessItem(
                    item: item,
                    isActive:
                        (state is SelecetdItemExpensesInitial && state.selectedIndex == index) ||
                        (state is SelecetdItemExpensesChanged && state.selectedIndex == index),
                  ),
                ),
              );
            },
          );
        }).toList(),
        // spacing: 12,
        // children: items.map((e) => Expanded(child: AllExpensessItem(item: e, isActive: true))).toList(),
      ),
    );
  }
}
