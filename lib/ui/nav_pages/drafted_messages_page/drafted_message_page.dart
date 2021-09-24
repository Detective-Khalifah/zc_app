import 'package:flutter/material.dart';
import 'package:hng/ui/nav_pages/drafted_messages_page/widgets/app/data.dart';
import 'package:hng/ui/nav_pages/drafted_messages_page/widgets/app/drafted_item_widget.dart';
import 'package:stacked/stacked.dart';

import 'drafted_message_page_viewmodel.dart';

class DraftedMessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DraftedMessagePageModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                centerTitle: false,
                title: Text(
                  'Draft',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              body: ListView.builder(
                  //physics: BouncingScrollPhysics(),
                  itemCount: draftedList.length,
                  itemBuilder: (context, index) {
                    return DraftedItemWidget(
                      username: draftedList[index].username,
                      time: draftedList[index].time,
                      message: draftedList[index].message,
                    );
                  }),
              backgroundColor: Colors.white,
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: const Icon(
                  Icons.open_in_new_outlined,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xff00B87C),
              ),
            ),
        viewModelBuilder: () => DraftedMessagePageModel());
  }
}