import 'package:flutter/material.dart';

class ContentContainer extends StatefulWidget {
  Size closeSize;
  Size openSize;
  Widget closeContent;
  Widget openContent;
  Widget editionContent;
  Widget deleteContent;

  ContentContainer({
    Key key,
    this.openSize = const Size(800, 500),
    this.closeSize = const Size(300, 150),
    this.openContent = const Text("Open content"),
    this.closeContent = const Text("Close content"),
    this.editionContent = const Text("Edition content"),
    this.deleteContent = const Text("Delete content"),
  }) : super(key: key);

  @override
  _ContentContainerState createState() => _ContentContainerState();
}

class _ContentContainerState extends State<ContentContainer>
    with TickerProviderStateMixin {
  bool open = false;
  bool edit = false;
  bool delete = false;

  @override
  Widget build(BuildContext context) {
    var sup = this.widget;
    return Container(
      margin: EdgeInsets.all(20),
      child: GestureDetector(
        child: AnimatedContainer(
          width: open ? sup.openSize.width : sup.closeSize.width,
          height: open ? sup.openSize.height : sup.closeSize.height,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Stack(
            children: [
              Align(
                child: AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: sup.editionContent,
                  secondChild: AnimatedCrossFade(
                    duration: const Duration(seconds: 1),
                    firstChild: sup.deleteContent,
                    secondChild: AnimatedCrossFade(
                      duration: const Duration(seconds: 1),
                      firstChild: sup.openContent,
                      secondChild: sup.closeContent,
                      crossFadeState: open
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                    ),
                    crossFadeState: delete
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                  ),
                  crossFadeState: edit
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: AnimatedCrossFade(
                  duration: const Duration(microseconds: 500),
                  firstChild: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.close_fullscreen_rounded),
                      onPressed: () {
                        setState(() {
                          open = false;
                        });
                      },
                    ),
                  ),
                  secondChild: delete || edit
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  edit = true;
                                });
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  delete = true;
                                });
                              },
                            ),
                          ],
                        ),
                  crossFadeState: open
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        onTap: () {
          setState(() {
            open = true;
          });
        },
      ),
    );
  }
}
