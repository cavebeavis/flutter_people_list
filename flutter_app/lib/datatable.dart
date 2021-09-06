import 'dart:convert';
import 'package:flutter/material.dart';

class AppDataTable extends StatelessWidget {
  //TODO: replace this with the firebase storage api in lieu of hard-coding
  final avatar = new Image.memory(Base64Decoder().convert(
      'iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAAAXNSR0IArs4c6QAAAZpJREFUeF7t1cGpg0AABuH1lKN12H8LOQQsQsjNEgTBR3JICZkH+baBWWf2x2nf92vbtnGe53C+Z+B2u41lWca0rut1HMf3yEgfA/M8j+l+v1+cNAZeKxCgcf+mChDKFyCWL4AA/8BAfAX/AAFiAzHeAgSIDcR4CxAgNhDjLUCA2ECMtwABYgMx3gIEiA3EeAsQIDYQ4y1AgNhAjLcAAWIDMd4CBIgNxHgLECA2EOMtQIDYQIy3AAFiAzHeAgSIDcR4CxAgNhDjLUCA2ECMtwABYgMx3gIEiA3EeAsQIDYQ4y1AgNhAjLcAAWIDMd4CBIgNxHgLECA2EOMtQIDYQIy3AAFiAzHeAgSIDcR4CxAgNhDjLUCA2ECMtwABYgMx3gIEiA3EeAsQIDYQ4y1AgNhAjLcAAWIDMd4CBIgNxHgLECA2EOMtQIDYQIy3AAFiAzHeAgSIDcR4CxAgNhDjLUCA2ECMtwABYgMx3gIEiA3EeAsQIDYQ498LeDwe13me8VV+Ez/P85j2fb+ez+c4juM3LURf/Xr9y7KMP4fyV5bL7S44AAAAAElFTkSuQmCC'));

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Avatar',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Name and Description',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Avatar')), //TODO: replace this with the actual avatars with a fetch call.
            DataCell(Text('Brian \n\nDeveloper')), // TODO: replace this with the mock data.json inside a container.
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Avatar')),
            DataCell(Text('Akshay \n\nSoftware Developer')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Avatar')),
            DataCell(Text('Deepak \n\nTeam Lead ')),
          ],
        ),
      ],
    );
  }
}
