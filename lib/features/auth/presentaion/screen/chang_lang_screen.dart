import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widget/custom_button.dart';
import 'package:chef_app/core/widget/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLangScreen extends StatelessWidget {
  const ChangeLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomImage(
            imagePath: AppAssets.background,
            w: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(
                  height: 116.h,
                ),
                CustomImage(
                  imagePath: AppAssets.chef,
                  h: 120.h,
                  w: 120.w,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(AppStrings.welcomeToChefApp.tr(context),
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColors.black)),
                SizedBox(
                  height: 54.h,
                ),
                Text(AppStrings.pleaseChooseYourLanguage.tr(context),
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: AppColors.black)),
                SizedBox(
                  height: 120.h,
                ),
                BlocBuilder<GlobalCubit, GlobalState>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        CustomButton(
                          text: "English",
                          onPressed: () {
                            BlocProvider.of<GlobalCubit>(context).changeLange('en');
                          },
                          width: 140,
                          background: AppColors.black,
                        ),
                        const Spacer(),
                        CustomButton(
                          text: "العربية",
                          onPressed: () {
                            BlocProvider.of<GlobalCubit>(context).changeLange('ar');
                          },
                          width: 140,
                          background: AppColors.black,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
