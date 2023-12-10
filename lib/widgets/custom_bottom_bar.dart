import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgCurvedCalendar,
      activeIcon: ImageConstant.imgCurvedCalendar,
      type: BottomBarEnum.Curvedcalendar,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCurvedSettings,
      activeIcon: ImageConstant.imgCurvedSettings,
      type: BottomBarEnum.Curvedsettings,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.v,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          18.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(-0.01, 0.58),
          end: Alignment(3.66, 0.51),
          colors: [
            appTheme.blueGray500.withOpacity(0.81),
            appTheme.blueGray3004e,
            appTheme.teal90000,
          ],
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 34.adaptSize,
              width: 34.adaptSize,
              color: theme.colorScheme.onError.withOpacity(1),
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 32.v,
              width: 33.h,
              color: theme.colorScheme.onError.withOpacity(1),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Curvedcalendar,
  Curvedsettings,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
