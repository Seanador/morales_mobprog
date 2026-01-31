import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/post_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(
          userName: 'Dog Lover',
          postContent: 'Betiful Doggo!',
          numOfLikes: 66,
          date: 'October 11',
          imageUrl:
              'https://www.petplace.com/article/breed/media_15ad72c2fdb39acf09aafa9934912c89bfa08665a.jpeg?width=1200&format=pjpg&optimize=medium',
          profileImageUrl:
              'https://image.petmd.com/files/inline-images/shiba-inu-black-and-tan-colors.jpg?VersionId=pLq84BE0jdMjXeDCUJJLFpUIWYsvMUU',
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Advertisement',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.h),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 308.h,
                  padEnds: false,
                ),
                items: carouselItems(),
              ),
            ],
          ),
        ),

        PostCard(
          userName: 'Joey Tribs',
          postContent: 'Joey loves pizza! 🍕',
          numOfLikes: 198,
          date: 'December 2',
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2TFuQfDpOHJed_y2Ly-7b3iX98fiav4IGw&s',
          profileImageUrl:
              'https://static.wikia.nocookie.net/friends/images/b/b2/Joey_Friends.png/revision/latest/scale-to-width-down/2081?cb=20241104085928',
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Advertisement',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.h),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 308.h,
                  padEnds: false,
                ),
                items: carouselItems(),
              ),
            ],
          ),
        ),

        PostCard(
          userName: 'Sean Morales',
          postContent: 'Tiiiiiired!',
          date: 'October 11',
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Advertisement',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.h),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: 308.h,
                  padEnds: false,
                ),
                items: carouselItems(),
              ),
            ],
          ),
        ),

        PostCard(
          userName: 'Chandler Bing',
          postContent: 'ICHIBAN!',
          numOfLikes: 2000,
          date: 'October 11',
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNXJKtEFzLa0XP-FpPBZfKb6hRZ3KhIIKtbA&s',
          profileImageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTioO1Yb9juc2Ez_RTBui4k5W3x_ImQPqf02VVVuSXCCNbAUknjel8Au-2rFfAkasiGlnFiTyUeEx9o6i5qnQKj-7IGUL7IsA3Dx-0dNw&s=10',
        ),
        SizedBox(height: 20.h),
      ],
    );
  }

  List<Widget> carouselItems() {
    return [
      PostCard(
        userName: 'James Villanueva',
        imageUrl:
            'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1400&h=800&q=80',
        profileImageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
        postContent: 'Beautiful mountain view 🏔️',
        date: 'October 11',
        adsMarket: 'Travel now!',
      ),

      PostCard(
        userName: 'Angela Cruz',
        imageUrl:
            'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=1400&h=800&q=80',
        profileImageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
        postContent: 'Peaceful lakeside 🌊',
        date: 'October 12',
        adsMarket: 'Trending now!',
      ),

      PostCard(
        userName: 'Mark Santos',
        imageUrl:
            'https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=1400&h=800&q=80',
        profileImageUrl: 'https://randomuser.me/api/portraits/men/65.jpg',
        postContent: 'The current best shoe in the market 👟',
        date: 'October 13',
        adsMarket: 'Explore more!',
      ),

      PostCard(
        userName: 'Jenny Lim',
        imageUrl:
            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=1400&h=800&q=80',
        profileImageUrl: 'https://randomuser.me/api/portraits/women/68.jpg',
        postContent: 'Relaxing beach scene 🌴',
        date: 'October 14',
        adsMarket: 'Check this out!',
      ),

      PostCard(
        userName: 'Ryan Dela Cruz',
        imageUrl:
            'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=1400&h=800&q=80',
        profileImageUrl: 'https://randomuser.me/api/portraits/men/12.jpg',
        postContent: 'Silence of Nature 🌲',
        date: 'October 15',
        adsMarket: 'Boost productivity!',
      ),
    ];
  }
}
