import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
import 'package:whatsapp_web/src/screens/chat/chat_page.dart';
import 'package:whatsapp_web/src/screens/conversation/conversation_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildScreen() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ConversationsPage(),
          ),
          Expanded(
            flex: 7,
            child: ChatPage(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(child: Container(color: Color(0xFF009688))),
              Expanded(flex: 6, child: Container(color: Color(0xFFdfdfdf))),
            ],
          ),
          Align(
            alignment: Alignment.center,
                      child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: _buildScreen(),
            ),
          ),
        ],
      ),
    );
  }
}