import 'package:flutter/material.dart';
import 'package:hasskit/helper/GeneralData.dart';
import 'package:hasskit/helper/ThemeInfo.dart';
import 'package:hasskit/model/Entity.dart';

class EntityControlGeneral extends StatelessWidget {
  final Entity entity;

  const EntityControlGeneral({@required this.entity});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            entity.mdiIcon,
            size: 200,
            color: ThemeInfo.colorIconActive,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            gd.textToDisplay(entity.state),
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}