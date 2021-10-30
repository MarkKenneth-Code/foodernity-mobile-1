import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Widgets/NavigationBar.dart';
import 'package:my_app/Pages/RequestListingDetails.dart';
import 'package:sizer/sizer.dart';

class RequestListing extends StatefulWidget {
  @override
  _RequestListingState createState() => _RequestListingState();
}

class _RequestListingState extends State<RequestListing> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        key: scaffoldKey,
        body: Container(
          height: 100.h,
          width: 100.w,
          child: SafeArea(
            child: CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                NavigationBar(
                  title: 'Call For Donations',
                  scaffold: scaffoldKey,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // _filter(context),
                        // _listingCount(),
                      ],
                    ),
                  ),
                ),
                ListingCount(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class ListingCount extends StatefulWidget {
  @override
  _ListingCountState createState() => _ListingCountState();
}

class _ListingCountState extends State<ListingCount> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 1.65;
    final double itemWidth = size.width - 40;

    return SliverPadding(
      padding:
          EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 10.0),
      sliver: (SliverGrid.count(
        childAspectRatio: (itemWidth / itemHeight),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        crossAxisCount: 1,
        children: [
          _donationCall(
              'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
              'Maginhawa Community Pantry',
              'June 27 2021',
              'http://gsb.ateneo.edu/wp-content/uploads/2020/11/Rolly-1.jpg',
              'Call for donations for the victims of Typhoon Rolly',
              ' TIte In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business Mark kenneth Dela Cruz School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business Mark kenneth Dela Cruz 2 ',
              context),
          _donationCall(
              'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
              'Maginhawa Community Pantry',
              'June 27 2021',
              'http://gsb.ateneo.edu/wp-content/uploads/2020/11/Rolly-1.jpg',
              'Call for donations for the victims of Typhoon Rolly',
              ' TIte In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business Mark kenneth Dela Cruz School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business Mark kenneth Dela Cruz 2 ',
              context),
          _donationCall(
              'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
              'Maginhawa Community Pantry',
              'June 27 2021',
              'http://gsb.ateneo.edu/wp-content/uploads/2020/11/Rolly-1.jpg',
              'Call for donations for the victims of Typhoon Rolly',
              ' TIte In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business Mark kenneth Dela Cruz School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business In support of the disaster relief efforts to the Ateneo Graduate School of Business Mark kenneth Dela Cruz 2 ',
              context),
        ],
      )),
    );
  }
}

Widget _donationCall(profile, name, date, image, title, description, context) {
  var callForDonationTitle = title;
  var callForDonationDesc = description;
  var callForDonationImage = image;
  var orgImage = profile;
  var orgName = name;
  var postDate = date;
  var size = MediaQuery.of(context).size;
  final double itemWidth = size.width - 40;
  final double itemHeight = size.height / 1.65;
  final double descHeight = size.height / 9;

  return Sizer(builder: (context, orientation, deviceType) {
    return Column(
      children: [
        Container(
          height: itemHeight,
          width: itemWidth,
          // padding: EdgeInsets.symmetric(horizontal: 20.0),
          // margin: EdgeInsets.only(bottom: 5),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(24)
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12.0,
                          ),
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(orgImage),
                            backgroundColor: Colors.transparent,
                          ),
                        ],
                      ),
                      Container(
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 5.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 250,
                                    child: Text(
                                      orgName,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  SizedBox(height: 3.0),
                                  SizedBox(
                                    width: 250,
                                    child: Text('Posted ' + postDate,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15)),
                                  )
                                ],
                              )))
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: NetworkImage(callForDonationImage),
                      child: InkWell(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (_) => Dialog(
                                child: Container(
                                    width: 400,
                                    height: 400,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: NetworkImage(callForDonationImage),
                                      fit: BoxFit.cover,
                                    )))),
                          );
                        },
                      ),
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
                  child: Text(
                    callForDonationTitle,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 25.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
                      child: Text(
                        callForDonationDesc,
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _donateButton(context)
              ],
            ),
          ),
        ),
      ],
    );
  });
}

Widget _donateButton(context) {
  return Container(
    child: ButtonBar(
      alignment: MainAxisAlignment.start,
      children: [
        FlatButton(
          onPressed: () {},
          minWidth: 55,
          height: 35,
          color: Colors.blue,
          child: Text('Donate Now',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.blue, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(2)),
        ),
      ],
    ),
  );
}
