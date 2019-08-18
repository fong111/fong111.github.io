import 'package:flutter/material.dart';
import 'package:nihao_app/demo/bottom_sheet_demo.dart';
import 'package:nihao_app/demo/card_demo.dart';
import 'package:nihao_app/demo/paginated_data_table_demo.dart';
import './button_demo.dart';
import './float_button_demo.dart';
import './popup_menu_button_demo.dart'; //模板：appbar 和body
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider.demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
import './alert_dialog_demo.dart';
import './snack_bar_demo.dart';
import './expansion_panel_demo.dart';
import './chip_demo.dart';
import './data_table_demo.dart';
import './stepper_demo.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'StepperDemo',
            page: StepperDemo(),
          ),
          ListItem(
            title: 'cardDemo',
            page: CardDemo(),
          ),
          ListItem(
            title: 'paginatedDataTable',
            page: PaginatedDataTableDemo(),
          ),
          ListItem(
            title: 'dataTable',
            page: DataTableDemo(),
          ),
          ListItem(
            title: 'chip',
            page: ChipDemo(),
          ),
          ListItem(
            title: 'expansionPanel',
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: 'snackBar',
            page: SnackBarDemo(),
          ),
          ListItem(
            title: 'bottomSheet',
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: 'alertDialogDemo',
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: 'simpleDialog',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'dateTime',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'slider',
            page: SliderDemo(),
          ),
          ListItem(
            title: 'switch',
            page: SwitchDemo(),
          ),
          ListItem(
            title: 'radio',
            page: RadioDemo(),
          ),
          ListItem(
            title: 'checkbox',
            page: CheckboxDemo(),
          ),
          ListItem(
            title: 'form',
            page: FormDemo(),
          ),
          ListItem(
            title: 'popupmenubutton',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          )
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
