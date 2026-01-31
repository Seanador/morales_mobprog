import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_font.dart';
import '../widgets/custom_button.dart';
import '../constants.dart';
import '../widgets/post_card.dart';

class ProfileScreen extends StatefulWidget {
  final String username;

  const ProfileScreen({super.key, required this.username});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String username;

  @override
  void initState() {
    super.initState();
    username = widget.username; // assign
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/a/a4/Hong_Kong_Harbour_Night_2019-06-11.jpg',
                    imageBuilder: (context, imageProvider) => Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) =>
                        Container(height: 200, color: Colors.grey[300]),
                    errorWidget: (context, url, error) => Container(
                      height: 200,
                      color: Colors.grey[400],
                      child: const Icon(Icons.error),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: ScreenUtil().setWidth(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://scontent.fmnl9-3.fna.fbcdn.net/v/t39.30808-6/619113350_1499222955539380_5128686072145000426_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFFUoO5KtbMJ2Wp0DZrS_prHm-eyWo16vseb57JajXq-z8xWKmKAmM1d-JH2Uy7LMAQOISwEAsSj9yw0NQXS1Kv&_nc_ohc=MsokFG1hdoIQ7kNvwEPg6_Z&_nc_oc=AdkdMT8ttrPng9mqr4Sun5QFkvlJgo2g5RbK-483stYr-57rQOx5HXDzAf4pHgddQ3o&_nc_zt=23&_nc_ht=scontent.fmnl9-3.fna&_nc_gid=2nIPmj62pJcCyjS-lSQ69g&oh=00_Afo3NbLniA25eSUFxvivN5GcGrUc8mLxZqgtbe9MMC3SRw&oe=697BE656',
                            imageBuilder: (context, imageProvider) =>
                                CircleAvatar(
                                  radius: 48,
                                  backgroundImage: imageProvider,
                                ),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[100],
                            child: const Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(55)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text:
                          username, // dynamic username (depending on logged in user)
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(5)),
                    Row(
                      children: [
                        CustomFont(
                          text: '536',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'Followers',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(5),
                          child: Icon(
                            Icons.circle,
                            size: ScreenUtil().setSp(5),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        CustomFont(
                          text: '255',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'following',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Row(
                      children: [
                        CustomButton(buttonName: 'Follow', onPressed: () {}),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomButton(
                          buttonName: 'Message',
                          onPressed: () {},
                          buttonType: 'outlined',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              TabBar(
                indicatorColor: FB_DARK_PRIMARY,
                tabs: [
                  Tab(
                    child: CustomFont(
                      text: 'Posts',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'About',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'Photos',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(2000),
                child: TabBarView(
                  children: [postSection(), aboutSection(), photosSection()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // posts section using dynamic username
  Widget postSection() {
    return Column(
      children: [
        PostCard(
          userName: username,
          postContent: 'Enjoying the sunny weather!',
          numOfLikes: 120,
          date: 'June 10',
          imageUrl:
              'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpeg?width=1200&format=pjpg&optimize=medium',
          profileImageUrl:
              'https://scontent.fmnl9-3.fna.fbcdn.net/v/t39.30808-6/619113350_1499222955539380_5128686072145000426_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFFUoO5KtbMJ2Wp0DZrS_prHm-eyWo16vseb57JajXq-z8xWKmKAmM1d-JH2Uy7LMAQOISwEAsSj9yw0NQXS1Kv&_nc_ohc=MsokFG1hdoIQ7kNvwEPg6_Z&_nc_oc=AdkdMT8ttrPng9mqr4Sun5QFkvlJgo2g5RbK-483stYr-57rQOx5HXDzAf4pHgddQ3o&_nc_zt=23&_nc_ht=scontent.fmnl9-3.fna&_nc_gid=2nIPmj62pJcCyjS-lSQ69g&oh=00_Afo3NbLniA25eSUFxvivN5GcGrUc8mLxZqgtbe9MMC3SRw&oe=697BE656',
        ),
        PostCard(
          userName: username,
          postContent: 'Just had a great workout session.',
          numOfLikes: 95,
          date: 'June 11',
          profileImageUrl:
              'https://scontent.fmnl9-3.fna.fbcdn.net/v/t39.30808-6/619113350_1499222955539380_5128686072145000426_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFFUoO5KtbMJ2Wp0DZrS_prHm-eyWo16vseb57JajXq-z8xWKmKAmM1d-JH2Uy7LMAQOISwEAsSj9yw0NQXS1Kv&_nc_ohc=MsokFG1hdoIQ7kNvwEPg6_Z&_nc_oc=AdkdMT8ttrPng9mqr4Sun5QFkvlJgo2g5RbK-483stYr-57rQOx5HXDzAf4pHgddQ3o&_nc_zt=23&_nc_ht=scontent.fmnl9-3.fna&_nc_gid=2nIPmj62pJcCyjS-lSQ69g&oh=00_Afo3NbLniA25eSUFxvivN5GcGrUc8mLxZqgtbe9MMC3SRw&oe=697BE656',
        ),
      ],
    );
  }

  Widget aboutSection() {
    return ListView(
      children: [
        ListTile(leading: Icon(Icons.home), title: Text('Quezon City')),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Works at Krusty Krab'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Studied at National University - Manila'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('in a Relationship with Loureign Gamuac'),
        ),
        Divider(),
      ],
    );
  }

  Widget photosSection() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[100],
            image: const DecorationImage(
              image: AssetImage('assets/images/mirror_selfie.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[100],
            image: const DecorationImage(
              image: AssetImage('assets/images/friends_fountain.webp'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[100],
            image: const DecorationImage(
              image: AssetImage('assets/images/asia_sleeping.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[100],
            image: const DecorationImage(
              image: AssetImage('assets/images/fit_pic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
