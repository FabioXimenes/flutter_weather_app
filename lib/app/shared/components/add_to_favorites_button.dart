import 'package:flutter/material.dart';
import 'package:wheather_app/app/shared/utils/colors.dart';

class AddToFavoritesButton extends StatelessWidget {
  final String city;
  final bool isFav;
  final Function onTapAdd;
  final Function onTapRemove;

  const AddToFavoritesButton({Key key, this.city, this.isFav, this.onTapAdd, this.onTapRemove}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final undoSnackBar =
        SnackBar(content: Text('$city removed from your favorites cities!'));

    final snackBar = SnackBar(
        action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              Scaffold.of(context).showSnackBar(undoSnackBar);
              onTapRemove();
            }),
        content: Text('$city added to your favorites cities!'));

    return GestureDetector(
      onTap: () {
        if (isFav) {
          Scaffold.of(context).showSnackBar(undoSnackBar);
          onTapRemove();
        } else {
          Scaffold.of(context).showSnackBar(snackBar);
          onTapAdd();
        }
      },
      child: Container(
        height: 30,
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: color2, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              size: 15,
              color: Colors.white,
            ),
            SizedBox(width: 7),
            Text(
              'Add to favorites',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
