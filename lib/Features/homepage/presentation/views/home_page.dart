import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/widgets/custom_adaptive_layout.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/Features/homepage/presentation/views/widgets/dashboard_desktop_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              surfaceTintColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Color(0xFF4DB7F2)),
              ),
              backgroundColor: Colors.white,
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: CustomAdaptiveLayout(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
