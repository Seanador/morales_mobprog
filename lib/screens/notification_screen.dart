import '../widgets/custom_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView(
        children: const [
          CustomInformation(
            name: 'Rachel Green',
            post: 'Post',
            description: 'OMG RL\'s new collection is amazing! 😍',
            date: 'Jan 3, 2026',
            numOfLikes: 12,
            profileImageUrl: 'rachel_green.png',
          ),
          Divider(),

          CustomInformation(
            name: 'Monica Geller',
            post: 'Post',
            description: 'Could this BE any more perfect? 😏',
            date: 'Jan 2, 2026',
            numOfLikes: 8,
            imageUrl: '',
            profileImageUrl: '',
          ),
          Divider(),

          CustomInformation(
            name: 'Chandler Bing',
            post: 'Post',
            description: 'I can’t believe you did that! 😂',
            date: 'Jan 2, 2026',
            numOfLikes: 20,
            imageUrl: '',
            profileImageUrl: 'chandler_bing.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Ross Geller',
            post: 'Post',
            description: 'We were on a break! 😅',
            date: 'Jan 1, 2026',
            numOfLikes: 15,
            imageUrl: 'owl.jpg',
            profileImageUrl: 'ross_geller.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Joey Tribbiani',
            post: 'Post',
            description: 'How you doin’? 😎',
            date: 'Dec 31, 2025',
            numOfLikes: 25,
            imageUrl: 'joeyClothes.jpg',
            profileImageUrl: 'joey.png',
          ),
          Divider(),

          CustomInformation(
            name: 'Phoebe Buffay',
            post: 'Post',
            description: 'Smelly cat vibes 😺🎸',
            date: 'Dec 30, 2025',
            numOfLikes: 18,
            imageUrl: '',
            profileImageUrl: 'phoebe_buffay.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Rachel Green',
            post: 'Post',
            description: 'Love this! So chic! 💖',
            date: 'Dec 29, 2025',
            numOfLikes: 14,
            imageUrl: '',
            profileImageUrl: 'rachel_green.png',
          ),
          Divider(),

          CustomInformation(
            name: 'Monica Geller',
            post: 'Post',
            description: 'You nailed it! 👏',
            date: 'Dec 28, 2025',
            numOfLikes: 9,
            imageUrl: '',
            profileImageUrl: 'monica_geller.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Chandler Bing',
            post: 'Post',
            description: 'Could I BE any more impressed? 😆',
            date: 'Dec 27, 2025',
            numOfLikes: 17,
            imageUrl: '',
            profileImageUrl: 'chandler_bing.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Ross Geller',
            post: 'Post',
            description: 'Paleontology rocks! 🦖',
            date: 'Dec 26, 2025',
            numOfLikes: 11,
            imageUrl: '',
            profileImageUrl: 'ross_geller.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Joey Tribbiani',
            post: 'Post',
            description: 'Pizza forever! 🍕',
            date: 'Dec 25, 2025',
            numOfLikes: 30,
            imageUrl: '',
            profileImageUrl: 'joey.png',
          ),
          Divider(),

          CustomInformation(
            name: 'Phoebe Buffay',
            post: 'Post',
            description: 'New song idea! 🎶',
            date: 'Dec 24, 2025',
            numOfLikes: 22,
            imageUrl:
                'https://scontent.fmnl9-3.fna.fbcdn.net/v/t39.30808-6/619113350_1499222955539380_5128686072145000426_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFFUoO5KtbMJ2Wp0DZrS_prHm-eyWo16vseb57JajXq-z8xWKmKAmM1d-JH2Uy7LMAQOISwEAsSj9yw0NQXS1Kv&_nc_ohc=MsokFG1hdoIQ7kNvwEPg6_Z&_nc_oc=AdkdMT8ttrPng9mqr4Sun5QFkvlJgo2g5RbK-483stYr-57rQOx5HXDzAf4pHgddQ3o&_nc_zt=23&_nc_ht=scontent.fmnl9-3.fna&_nc_gid=2nIPmj62pJcCyjS-lSQ69g&oh=00_Afo3NbLniA25eSUFxvivN5GcGrUc8mLxZqgtbe9MMC3SRw&oe=697BE656',

            profileImageUrl:
                'https://scontent.fmnl9-3.fna.fbcdn.net/v/t39.30808-6/619113350_1499222955539380_5128686072145000426_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFFUoO5KtbMJ2Wp0DZrS_prHm-eyWo16vseb57JajXq-z8xWKmKAmM1d-JH2Uy7LMAQOISwEAsSj9yw0NQXS1Kv&_nc_ohc=MsokFG1hdoIQ7kNvwEPg6_Z&_nc_oc=AdkdMT8ttrPng9mqr4Sun5QFkvlJgo2g5RbK-483stYr-57rQOx5HXDzAf4pHgddQ3o&_nc_zt=23&_nc_ht=scontent.fmnl9-3.fna&_nc_gid=2nIPmj62pJcCyjS-lSQ69g&oh=00_Afo3NbLniA25eSUFxvivN5GcGrUc8mLxZqgtbe9MMC3SRw&oe=697BE656',
          ),
          Divider(),

          CustomInformation(
            name: 'Rachel Green',
            post: 'Post',
            description: 'Fashion goals! 👗',
            date: 'Dec 23, 2025',
            numOfLikes: 16,
            imageUrl: '',
            profileImageUrl: 'rachel_green.png',
          ),
          Divider(),

          CustomInformation(
            name: 'Monica Geller',
            post: 'Post',
            description: 'Clean and organized as always! 🧹',
            date: 'Dec 22, 2025',
            numOfLikes: 13,
            imageUrl: '',
            profileImageUrl: 'monica_geller.jpg',
          ),
          Divider(),

          CustomInformation(
            name: 'Chandler Bing',
            post: 'Post',
            description: 'Could I BE any happier? 😁',
            date: 'Dec 21, 2025',
            numOfLikes: 19,
            imageUrl: '',
            profileImageUrl: 'chandler_bing.jpg',
          ),
        ],
      ),
    );
  }
}
