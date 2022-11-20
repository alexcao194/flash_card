import 'package:flash_card/app/flash_card/widget/choice_button.dart';
import 'package:flash_card/app/flash_card/widget/list_card.dart';
import 'package:flash_card/app/flash_card/widget/progress_bar.dart';
import 'package:flash_card/config/app_color.dart';
import 'package:flash_card/service/app_router/app_router.dart';
import 'package:flutter/material.dart';


class FlashCardSC extends StatelessWidget {
  const FlashCardSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      appBar: buildAppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0) + const EdgeInsets.only(top: 16.0),
                child: const Text('7 Flash card avaiable', style: TextStyle(color: Colors.black38, fontSize: 28, fontWeight: FontWeight.w700)),
              ),
              const ListCard(),
              const Expanded(child: SizedBox()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ProgressBar(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: ChoiceButton(
                        color: AppColor.orange,
                        label: "T don't know",
                      ),
                    ),
                    Expanded(
                      child: ChoiceButton(
                        color: AppColor.green,
                        label: "T know",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          AppRouter.navigatorKey.currentState?.pop();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      actions: [
        IconButton(
          onPressed: () {
            AppRouter.navigatorKey.currentState?.pop();
          },
          icon: const Icon(Icons.check),
        ),
      ],
      title: const Text('Collection demo'),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}




