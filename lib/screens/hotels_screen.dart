import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/utils/app_layout.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
          color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
      margin: const EdgeInsets.only(left: 17, top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/${hotel['image']}")),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 15,
                      spreadRadius: 5)
                ]),
          ),
          const Gap(15),
          Text("${hotel['place']}",
              style: Styles.headLineStyle2.copyWith(color: Styles.kikaColor)),
          const Gap(8),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(color: Styles.kikaColor),
          ),
          const Gap(5),
          Text(
            "\$${hotel['price']} / Night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kikaColor),
          )
        ],
      ),
    );
  }
}
