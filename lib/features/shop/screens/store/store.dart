import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_containers.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/productsCart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/brand/all_brands.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/brands/brand_card.dart';
import '../../../../common/widgets/texts/tab_title_texts.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: const [
            CartCounterIcon()

          ],
        ),
        body:
        NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? MyColors.dark
                      : Colors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(MySize.defaultSpace),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        //SearchBar
                        const SizedBox(
                          height: MySize.spaceBtwItems,
                        ),
                        const MyHomePageSearchBar(
                          text: 'Search in Store',
                          showBorder: true,
                          showBg: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: MySize.spaceBtwSections,
                        ),

                        //Featured Brands
                        SectionHeading(
                          title: 'Featured Brands',
                          showActionButton: true,
                          onPressed: ()=>Get.to(()=>AllBrands()),
                        ),
                        const SizedBox(
                          height: MySize.spaceBtwItems / 1.5,
                        ),

                        GridLayout(
                            mainAxisExtent: 80,
                            itemcoubt: 4,
                            itemBuilder: (_, index) {
                              return

                                const MyBrandCard(showBorder: false,

                                );
                            })
                      ],
                    ),
                  ),
                  //Tabs-----
                  bottom: const MyTabBar(tabs: [
                    Tab(child:
                    TabtitileText(title: 'Sports',)),
                    Tab(child:
                    TabtitileText(title: 'Furniture',)),
                    Tab(child:
                    TabtitileText(title: 'Electronics',)),
                    Tab(child:
                    TabtitileText(title: 'Clothes',)),
                    Tab(child:
                    TabtitileText(title: 'Cosmetics',)),
                  ])
                )
              ];
            },
            body:  const TabBarView
              (children: [
                CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),









              //Products



            ])
        
        ),
      ),
    );
  }
}






