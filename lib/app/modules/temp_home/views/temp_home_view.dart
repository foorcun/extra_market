import 'package:extra_market/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/temp_home_controller.dart';

class TempHomeView extends GetView<TempHomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra Market'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(15),
          child: SearchTextField(controller: controller),
        ),
      ),
      // ignore: prefer_const_constructors
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   expandedHeight: 250,
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Image.network(
          //         "https://firebasestorage.googleapis.com/v0/b/js-test-e5720.appspot.com/o/extra_market%2Fextra_market.png?alt=media&token=02373210-c67a-475e-b2ab-eb49f3b26285",
          //         fit: BoxFit.cover),
          //   ),

          //   // flexibleSpace: FlexibleSpaceBar(
          //   //   background: Placeholder(),
          //   // ),
          // ),
          // SliverToBoxAdapter(
          //   child: TextField(
          //     decoration: InputDecoration(
          //       icon: Icon(Icons.search),
          //       hintText: 'Search...',
          //     ),
          //     onChanged: (text) {
          //       // Execute search using the text entered in the search box
          //       controller.filterProduct(text);
          //     },
          //   ),
          // ),
          SliverListView(
            controller: controller,
          ),
        ],

        //  child:
        //     Center(
        //       child: Column(
        //         children: [
        //           Container(
        //             width: MediaQuery.of(context).size.width,
        //             child: Image.asset(
        //               'assets/images/extra_market.png',
        //               height: MediaQuery.of(context).size.width / 2,
        //               fit: BoxFit.fill,
        //             ),
        //           ),
        //           // ElevatedButton.icon(
        //           //   // child: const Text("Login"),
        //           //   style: ElevatedButton.styleFrom(
        //           //     // primary:  // use backgroundColor:
        //           //     backgroundColor: Colors.white,
        //           //     // onPrimary:  // use foregroundColor
        //           //     foregroundColor: Colors.black,
        //           //     minimumSize: const Size(double.infinity, 50),
        //           //   ),
        //           //   onPressed: () async {
        //           //     await controller.login();
        //           //   },
        //           //   label: const Text("Login with Google"),
        //           //   icon: const FaIcon(
        //           //     FontAwesomeIcons.google,
        //           //     color: Colors.red,
        //           //   ),
        //           // ),
        //           TextField(
        //             decoration: InputDecoration(
        //               icon: Icon(Icons.search),
        //               hintText: 'Search...',
        //             ),
        //             onChanged: (text) {
        //               // Execute search using the text entered in the search box
        //               controller.filterProduct(text);
        //             },
        //           ),

        //           // Obx(() => ElevatedButton(
        //           //     onPressed: () {
        //           //       print(controller.productList.value.length);
        //           //     },
        //           //     child: controller.productList.value.length > 0
        //           //         ? Text(controller.productList.value.first.productName!)
        //           //         : Text("Yukleniyor"))),

        //           Obx(
        //             () => Expanded(
        //                 child: ListView.builder(
        //               // itemCount: controller.productList.length,
        //               itemCount: controller.filteredProductList.length,
        //               itemBuilder: ((context, index) {
        //                 return Card(
        //                   child: ListTile(
        //                     leading: Container(
        //                       height: 80,
        //                       width: 80,
        //                       child: controller.productList[index].photoUrl != null
        //                           // ? Image.network(controller.productList[index].photoUrl!)
        //                           ? Placeholder()
        //                           : Container(),
        //                     ),
        //                     // title: Text(controller.productList[index].productName!),
        //                     title: Text(
        //                         controller.filteredProductList[index].productName!),
        //                   ),
        //                 );
        //               }),
        //             )),
        //           )
        //         ],
        //       ),
        //     ),
        //  ),
        //  ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TempHomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: 'Search...',
        ),
        onChanged: (text) {
          // Execute search using the text entered in the search box
          controller.filterProduct(text);
        },
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  TempHomeController controller;
  CustomSearchDelegate({required this.controller});

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            controller.filterProduct("");
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return ListView.builder(
        itemCount: controller.filteredProductList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.filteredProductList[index].productName!),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return ListView.builder(
        itemCount: controller.filteredProductList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.filteredProductList[index].productName!),
          );
        });
  }
}

class SliverListView extends StatelessWidget {
  const SliverListView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TempHomeController controller;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(
        () => ListView.builder(
          primary: false,
          shrinkWrap: true,

          // itemCount: controller.productList.length,
          itemCount: controller.filteredProductList.length,
          // itemCount: 2,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Get.toNamed(Routes.ORDER_ITEM,
                      arguments: controller
                          .filteredProductList[index]); // argument Product
                },
                leading: Container(
                  height: 80,
                  width: 80,
                  child: controller.filteredProductList[index].photoUrl != null
                      // ? Image.network(
                      // controller.filteredProductList[index].photoUrl!)
                      ? Placeholder()
                      : Container(),
                ),
                // title: Text(controller.productList[index].productName!),
                title: Text(controller.filteredProductList[index].productName!),
                trailing: controller.filteredProductList[index].price != null
                    ? Text(controller.filteredProductList[index].price! +
                        " " +
                        controller.filteredProductList[index].para_birimi!)
                    : SizedBox(),
              ),
            );
          }),
        ),
      ),
      // ),
    );
  }
}
