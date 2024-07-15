import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 170,
            backgroundColor: AppColors.backgroundColor,
            child: CircleAvatar(
                radius: 160,
                backgroundImage:
                    AssetImage('assets/images/IMG_20230312_193259.png')),
          ),
          const Text(
            'Haitham Sheikh Saeed',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const Text(
            'SOFTWARE ENGINEER',
            style: TextStyle(color: Color(0xff55634A), fontSize: 12),
          ),
          const Text(
            'FLUTTER DEVEVELOPER',
            style: TextStyle(color: AppColors.white),
          ),
          const Divider(
            color: AppColors.white,
            height: 34,
            thickness: 1,
            indent: 60,
            endIndent: 60,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const ListTile(
              leading: Icon(
                Icons.phone,
                color: Color(0xff55634A),
                size: 30,
              ),
              title: Text(
                '(+963) 99427310',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: const ListTile(
              leading: Icon(
                Icons.message,
                color: Color(0xff55634A),
                size: 30,
              ),
              title: Text(
                'saadh7144@gmail.com',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
