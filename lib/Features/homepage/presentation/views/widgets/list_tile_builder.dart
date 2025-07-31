import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/Core/utils/assets_data.dart';
import 'package:responsive_dashboard/Features/homepage/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/view%20models/selected_item_cubit/selected_item_cubit.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/drawer_itme.dart';

class ListTileBuilder extends StatelessWidget {
  const ListTileBuilder({super.key});

  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.imagesInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedItemCubit(),
      child: BlocBuilder<SelectedItemCubit, SelectedItemState>(
        builder: (context, state) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<SelectedItemCubit>().selectItem(index);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DrawerItme(
                    item: items[index],
                    isActive:
                        (state is SelectedItemInitial && state.selectedIndex == index) ||
                        (state is SelectedItemChanged && state.selectedIndex == index),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
