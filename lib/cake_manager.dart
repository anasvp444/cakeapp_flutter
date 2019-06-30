import 'package:flutter/material.dart';
import './Cakes.dart';

class CakeManager extends StatefulWidget {
  final String startingCake;
  CakeManager(this.startingCake);
  
  @override
  State<StatefulWidget> createState() {
    print(this.startingCake);
    return _CakeManagerState();
  }

  
}

class _CakeManagerState extends State<CakeManager> {
  final List<String> _cakes = [];
  @override
  void initState() {
    _cakes.add(widget.startingCake);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _cakes.add('White Forest');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Cakes(_cakes)
      ],
    );
  }
}
