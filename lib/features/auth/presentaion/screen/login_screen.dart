import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_assets.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widget/custom_button.dart';
import 'package:chef_app/core/widget/custom_image.dart';
import 'package:chef_app/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //safrea does not importan here
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CustomImage(
                    imagePath: AppAssets.backgroundtwo,
                    w: double.infinity,
                  ),
                  Center(
                      child: Text(
                    AppStrings.welcomeBack.tr(context),
                    style: Theme.of(context).textTheme.displayLarge,
                  ))
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: TextEditingController(),
                      hint: AppStrings.email.tr(context),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomTextFormField(
                      controller: TextEditingController(),
                      hint: AppStrings.password.tr(context),
                      isPassword: true,
                      icon: Icons.remove_red_eye,
                      suffixIcOnPressed: () {},
                      validate: (data) {
                        if (data!.length < 6 || data.isEmpty) {
                          return AppStrings.pleaseEnterValidPassword
                              .tr(context);
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.forgetPassword.tr(context),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    CustomButton(
                        onPressed: () {}, text: AppStrings.signIn.tr(context))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
