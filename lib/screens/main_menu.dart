import 'package:flutter/material.dart' as fm;
import 'package:restaurantour/models/app_screen.dart' as screen;

class MainMenu extends fm.StatelessWidget {
  const MainMenu(
    this.onIconPress, {
    super.key,
  });

  static const double _iconSize = 50.0;

  final void Function(fm.BuildContext, screen.AppScreen) onIconPress;

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Scaffold(
      appBar: fm.AppBar(
        title: const fm.Text('RestauranTour'),
      ),
      body: fm.Center(
        child: fm.Column(
          mainAxisAlignment: fm.MainAxisAlignment.start,
          children: [
            const fm.SizedBox(
              height: 2 * _iconSize,
            ),
            fm.IconButton(
              onPressed: () =>
                  onIconPress(context, screen.AppScreen.restaurantList),
              icon: const fm.Icon(fm.Icons.restaurant),
              iconSize: _iconSize,
            ),
            const fm.SizedBox(
              height: _iconSize,
            ),
            fm.IconButton(
              onPressed: () =>
                  onIconPress(context, screen.AppScreen.restaurantMap),
              icon: const fm.Icon(fm.Icons.map),
              iconSize: _iconSize,
            ),
          ],
        ),
      ),
    );
  }
}
