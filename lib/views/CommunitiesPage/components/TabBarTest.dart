import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tuwaiq_community/views/style.dart';


class TabBar1 extends StatefulWidget {
  TabBar1({super.key, this.nameTabs});

  List<Tab>? nameTabs = [];

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<Tab>? nameTabs = [];
  @override
  void initState() {
    tabController = TabController(length: 1, vsync: this);
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 200,
            decoration: BoxDecoration(
              color: appColors.onSecondary,
              borderRadius: BorderRadius.circular(20),
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
                tabs: nameTabs!
                 
                  
                ),
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: [
              Text("data"),
            ],
          ))
        ],
      ),
    );
  }
}


