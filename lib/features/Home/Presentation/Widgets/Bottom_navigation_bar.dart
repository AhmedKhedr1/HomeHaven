import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';

class Bottom_navigation_bar extends StatelessWidget {
  const Bottom_navigation_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedLabelStyle: Styless.BodySmallRegular,
        unselectedLabelStyle: Styless.BodySmallRegular,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.carticon), label: 'My Cart'),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.personicon), label: 'My Account')
        ]);
  }
}
