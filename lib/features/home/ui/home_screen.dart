import 'package:auvent_flutter_task/core/di/servies_locator.dart';
import 'package:auvent_flutter_task/core/helpers/spacing.dart';
import 'package:auvent_flutter_task/core/resources/assets_manager.dart';
import 'package:auvent_flutter_task/core/resources/text_style_manager.dart';
import 'package:auvent_flutter_task/features/home/hoeme_bloc/home_bloc.dart';
import 'package:auvent_flutter_task/features/home/hoeme_bloc/home_events.dart';
import 'package:auvent_flutter_task/features/home/hoeme_bloc/home_states.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/carousel_with_indicator.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/got_code_card.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/header_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/popular_restaurants_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/services_section.dart';
import 'package:auvent_flutter_task/features/home/ui/widgets/shortcuts_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc(homeUseCase: getIt.get())..add(LoadHomeData()),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is HomeLoaded) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header section
                    HeaderSection(
                      name: state.data.name,
                      address: state.data.address,
                    ),
                    verticalSpace(8.h),
                    // Services title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Services:',
                            style: TextStyles.textstyleS20W700Black(),
                          ),
                          verticalSpace(12.h),
                          // Services row
                          ServicesSection(services: state.data.service),
                          verticalSpace(16.h),
                          // Code card
                          GotCodeCard(),
                          verticalSpace(24.h),
                          // Shortcuts title
                          const Text(
                            'Shortcuts:',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(12.h),
                          // Shortcuts row
                          ShortcutsSection(),
                          verticalSpace(16.h),
                          CarouselWithIndicator(
                            carouselImages: [
                              ImageAssets.bannerImage,
                              ImageAssets.bannerImage,
                              ImageAssets.bannerImage,
                              ImageAssets.bannerImage,
                              ImageAssets.bannerImage,
                            ],
                          ),
                          verticalSpace(16.h),
                          PopularRestaurantsSection(
                            restaurants: state.data.popularRestaurant,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }

            return Center(child: Text('Error loading data'));
          },
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
