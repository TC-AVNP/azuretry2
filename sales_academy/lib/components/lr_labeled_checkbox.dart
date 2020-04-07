import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// checkbox with a label without extra padding and with default text style
class LrLabeledCheckbox extends StatefulWidget {
  /// constructor for the labeled checkbox
  const LrLabeledCheckbox(
      {@required this.label,
      @required this.isSelected,
      this.onChanged,
      Key key})
      : super(key: key);

  /// text label for the checkbox
  final String label;

  /// called when the state changes
  final ValueChanged<bool> onChanged;

  /// initial state of the checkbox
  final bool isSelected;

  @override
  _LrLabeledCheckboxState createState() => _LrLabeledCheckboxState();
}

/// creates a [LrLabeledCheckbox]
class _LrLabeledCheckboxState extends State<LrLabeledCheckbox> {
  /// state of the checkbox
  bool isSelected;

  @override
  void initState() {
    isSelected = widget.isSelected;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Row(
        key: widget.key,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: isSelected,
              onChanged: (newValue) {
                setState(() {
                  isSelected = !isSelected;
                });
                widget.onChanged(newValue);
              }),
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Text(widget.label,
                style: TextStyle(color: Theme.of(context).primaryColor)),
          ),
        ],
      );
}
