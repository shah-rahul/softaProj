import 'package:flutter/material.dart';
import 'package:softa/model/feedModel.dart';

class PostConatainer extends StatelessWidget {
  final FeedModel data;
  const PostConatainer({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Color(0x33000000), blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor),
      child: Stack(children: [
        data.feedMedia != ""
            ? Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: NetworkImage(data.feedMedia.split(',').first),
                  fit: BoxFit.cover,
                ))
            : Container(),
        Positioned(
          top: 0,
          right: 10,
          child: Text(
            data.userName,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: Text(
            data.feedDuration,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            maxRadius: 30,
            backgroundImage: NetworkImage(data.userImage),
          ),
        ),
      ]),
    );
  }
}
