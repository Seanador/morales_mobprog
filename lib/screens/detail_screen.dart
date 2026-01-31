import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_font.dart';

class DetailScreen extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String imageUrl;
  final String profileImageUrl;

  const DetailScreen({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    required this.date,
    this.imageUrl = '',
    this.profileImageUrl = '',
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late int likes;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    likes = widget.numOfLikes;
  }

  // Helper to load either asset or network image
  Widget buildPostImage(String img) {
    if (img.startsWith('http')) {
      return Image.network(img, fit: BoxFit.cover);
    } else {
      return Image.asset('assets/images/$img', fit: BoxFit.cover);
    }
  }

  Widget buildProfileImage(String img) {
    if (img.isEmpty) return const Icon(Icons.person);
    return CircleAvatar(
      radius: ScreenUtil().setSp(25),
      backgroundImage: img.startsWith('http')
          ? NetworkImage(img)
          : AssetImage('assets/images/$img') as ImageProvider,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomFont(
          text: widget.userName,
          fontSize: ScreenUtil().setSp(20),
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.white,
        height: ScreenUtil().screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Post image
              widget.imageUrl.isEmpty
                  ? SizedBox(height: ScreenUtil().setHeight(0))
                  : buildPostImage(widget.imageUrl),

              SizedBox(height: ScreenUtil().setHeight(20)),

              // User info
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: Row(
                  children: [
                    buildProfileImage(widget.profileImageUrl),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFont(
                          text: widget.userName,
                          fontSize: ScreenUtil().setSp(20),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            CustomFont(
                              text: widget.date,
                              fontSize: ScreenUtil().setSp(15),
                              color: Colors.grey,
                            ),
                            SizedBox(width: ScreenUtil().setWidth(3)),
                            Icon(
                              Icons.public,
                              color: Colors.grey,
                              size: ScreenUtil().setSp(18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.more_horiz),
                  ],
                ),
              ),

              SizedBox(height: ScreenUtil().setHeight(15)),

              // Post content
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                alignment: Alignment.centerLeft,
                child: CustomFont(
                  text: widget.postContent,
                  fontSize: ScreenUtil().setSp(18),
                  color: Colors.black,
                ),
              ),

              SizedBox(height: ScreenUtil().setHeight(30)),
              const Divider(),

              // Interaction buttons
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Like / Unlike
                    TextButton.icon(
                      onPressed: () {
                        setState(() {
                          if (isLiked) {
                            likes--;
                            isLiked = false;
                          } else {
                            likes++;
                            isLiked = true;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.thumb_up,
                        color: isLiked ? Colors.blue : FB_DARK_PRIMARY,
                      ),
                      label: CustomFont(
                        text: likes == 0 ? 'Like' : likes.toString(),
                        fontSize: ScreenUtil().setSp(12),
                        color: FB_DARK_PRIMARY,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.comment, color: FB_DARK_PRIMARY),
                      label: CustomFont(
                        text: 'Comment',
                        fontSize: ScreenUtil().setSp(12),
                        color: FB_DARK_PRIMARY,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.redo, color: FB_DARK_PRIMARY),
                      label: CustomFont(
                        text: 'Share',
                        fontSize: ScreenUtil().setSp(12),
                        color: FB_DARK_PRIMARY,
                      ),
                    ),
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
