import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage/chat.dart';
import 'package:flutter_application_1/components/ColorTheme.dart'
as color_theme;
import 'package:flutter_application_1/components/CustomizedWidget.dart'
as customized_widget;

const contactBackground = Color.fromARGB(255, 255, 255, 255);
const sendMessageBubbleColor = Color.fromARGB(255, 255, 249, 243);
const receiveMessageBubbleColor = Color.fromARGB(255, 108, 95, 188);
const sendMessageColor = Color.fromARGB(255, 42, 46, 83);
const receiveMessageColor = Color.fromARGB(255, 255, 255, 255);
const inputCursorColor = Color.fromARGB(255, 155, 139, 139);
const messageBarColor = Color.fromARGB(255, 255, 255, 255);

/// 聊天背景颜色设置
const gradientDecorationContact = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 234, 228, 255),
    Color.fromARGB(255, 242, 220, 255)
  ],
));

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  /// TextField Controller
  final TextEditingController _textController = TextEditingController();

  /// ListView.Builder's scroll controller
  final ScrollController _scrollController = ScrollController();

  /// 判断TextField内是否为空消息，空消息则不可sendMessage
  bool _emptyMessage = true;

  /// 临时储存聊天信息的容器
  List textList = [];

  /// 获取TextField内信息，并存入容器
  void getInputText() {
    String text = _textController.text;
    textList.add([text, true]);
  }

  /// 发出信息
  void sendMessage() {
    getInputText();
    _textController.clear();
    setState(() {
      _emptyMessage = true;
    });
    // 控制跳转到最新消息,需要delay来等待maxScrollExtent更新
    // Reference: https://blog.csdn.net/adojayfan/article/details/120290662
    Future.delayed(Duration(milliseconds: 100), () {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  /// 聊天信息陈列控件
  Widget displayMessage(List textList) {
    return Container(
        decoration: gradientDecorationContact,
        child: Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 0),
            child: ListView.builder(
                controller: _scrollController,
                itemCount: textList.length,
                itemBuilder: (BuildContext context, int index) {
                  return contactBubble(textList[index][0], textList[index][1]);
                })));
  }

  IconButton emojiButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.emoji_emotions_outlined),
    );
  }

  IconButton infoButton() {
    return IconButton(
      onPressed: null,
      icon: Icon(Icons.info),
    );
  }

  IconButton sendButton() {
    return IconButton(
      onPressed: _emptyMessage ? null : () => sendMessage(),
      icon: const Icon(Icons.send),
    );
  }

  /// 输入框控件
  Widget inputField() {
    return Flexible(
        child: TextField(
      controller: _textController,
      onChanged: (String text) {
        setState(() {
          _emptyMessage = text.isEmpty;
        });
      },
      onSubmitted: (String text) {
        sendMessage;
      },
      cursorColor: inputCursorColor,
      maxLength: null,
      maxLines: null,
      decoration: const InputDecoration.collapsed(hintText: "Type a message"),
    ));
  }

  Widget messageBar() {
    return Container(
      color: messageBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          emojiButton(),
          inputField(),
          sendButton(),
          infoButton(),
        ],
      ),
    );
  }

  /// 聊天气泡控件 <br>
  /// sentText (String): 气泡消息内容 <br>
  /// messageType (boolean): 消息来源开关,
  ///                        true为己方发出,false为对方发出，控制气泡位置、颜色等
  Widget contactBubble(sentText, messageType) {
    const radius = Radius.circular(18);
    const angle = Radius.circular(0);

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          messageType ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 250),
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: messageType
                    ? receiveMessageBubbleColor
                    : sendMessageBubbleColor,
                borderRadius: BorderRadius.only(
                  topRight: messageType ? angle : radius,
                  topLeft: messageType ? radius : angle,
                  bottomLeft: radius,
                  bottomRight: radius,
                )),
            child: Text(
              sentText,
              style: TextStyle(
                  color: messageType ? receiveMessageColor : sendMessageColor),
            ),
          ),
        ),
      ],
    );
  }

  /// 设置初始化state，暂用于展示对方聊天气泡
  @override
  void initState() {
    super.initState();
    // 用于演示
    // 展示对方聊天气泡
    textList.add(["Hello!", true]);
    textList.add(["Greeting!", false]);
    textList.add(["How's going?", false]);
  }

  /// build the Widget
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: color_theme.backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Back Button
              GestureDetector(
                child: customized_widget.backButton,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),

              // TODO Subpage Headline
              customized_widget.subpageHeadline("Chat"),
            ],
          ),
          // centerTitle: true,
          toolbarHeight: 110,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          color: contactBackground,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // 聊天显示窗口
                    Expanded(
                      flex: 8,
                      child: displayMessage(textList),
                    ), // 聊天显示窗口

                    //输入栏
                    Expanded(
                      flex: 1,
                      child: messageBar(),
                    ), //输入栏
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
