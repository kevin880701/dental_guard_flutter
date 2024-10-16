import 'package:flutter/material.dart';

class KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const KeepAliveWrapper({required this.child, super.key});

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
    @override
    bool get wantKeepAlive => true;

    @override
    Widget build(BuildContext context) {
        super.build(context);
    return widget.child;
    }
}

