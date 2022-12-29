import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tuwaiq_community/views/style.dart';

class TabBarCom extends StatefulWidget {
  TabBarCom(
      {super.key,
      required this.tabName,
      required this.TabbarViweWidget,
      required this.numberTab});
  List<Tab>? tabName = [];
  List<Widget>? TabbarViweWidget = [];
  int numberTab;

  @override
  State<TabBarCom> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBarCom>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

 
  @override
  void initState() {
    tabController = TabController(length: widget.numberTab, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            height: 30,
            decoration: BoxDecoration(
              color: appColors.onSecondary,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(110, 66, 68, 72),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: appColors.onMain,
                ),
                labelColor: appColors.onSecondary,
                unselectedLabelColor: appColors.onMain,
                tabs: widget.tabName!),
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: widget.TabbarViweWidget!,
          ))
        ],
      ),
    );
  }
}



// class MyTabController extends GetxController with GetSingleTickerProviderStateMixin {
//   List<Tab>? tabName = [];
//   List<Widget>? TabbarViweWidget = [];
  

//   late TabController controller;

//   @override
//   void onInit() {
//     super.onInit();
//     controller = TabController(vsync: this, length:tabName!.length);
//   }

//   @override
//   void onClose() {
//     controller.dispose();
//     super.onClose();
//   }
// }





// class TabBar2 extends StatelessWidget {
//  TabBar2({super.key});
//   MyTabController _tabx = Get.put(MyTabController());

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MyTabController>(
//       init: MyTabController(),
//       builder: (con){
// return 
// Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 20, bottom: 20),
//             height: 30,
//             decoration: BoxDecoration(
//               color: appColors.onSecondary,
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                   color: Color.fromARGB(110, 66, 68, 72),
//                   spreadRadius: 1,
//                   blurRadius: 3,
//                   offset: Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: TabBar(
//                 controller: con.controller,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(
//                     20,
//                   ),
//                   color: appColors.onMain,
//                 ),
//                 labelColor: appColors.onSecondary,
//                 unselectedLabelColor: appColors.onMain,
//                 tabs:con.tabName!),
//           ),
//           Expanded(
//               child: TabBarView(
//             controller: con.controller,
//             children: con.TabbarViweWidget!,
//           ))
//         ],
//       ),
//     );



//       });
//   }
// }

// class w1 extends StatelessWidget {
//    w1({super.key});
//   MyTabController tabx = Get.find();
     
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TabBar2(


//       ),
//     );
//   }
// }