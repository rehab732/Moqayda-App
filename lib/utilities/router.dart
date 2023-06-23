import 'package:flutter/material.dart';
import 'package:moqayda/pages/screens/chat/all_chats.dart';
import 'package:moqayda/pages/screens/chat/all_message.dart';
import 'package:moqayda/pages/screens/chat/unread_message.dart';
import 'package:moqayda/pages/screens/more/ads.dart';
import 'package:moqayda/pages/screens/chat/blacklist.dart';
import 'package:moqayda/pages/screens/chat/chatpage.dart';
import 'package:moqayda/pages/screens/more/mokayadlist.dart';
import 'package:moqayda/pages/screens/auth/edit_profil.dart';
import 'package:moqayda/pages/screens/auth/login.dart';
import 'package:moqayda/pages/screens/auth/otb.dart';
import 'package:moqayda/pages/screens/auth/signup.dart';
import 'package:moqayda/pages/screens/auth/splash.dart';
import 'package:moqayda/pages/screens/more/bottom_nav_bar.dart';
import 'package:moqayda/pages/screens/more/children_toyes_page.dart';
import 'package:moqayda/pages/screens/more/favourite_page.dart';
import 'package:moqayda/pages/screens/more/product_details_page.dart';

import 'package:moqayda/pages/screens/more/products_mokayda.dart';
import 'package:moqayda/pages/screens/more/search_page_home.dart';
import 'package:moqayda/utilities/routes.dart';

import '../pages/screens/auth/moahda.dart';
import '../pages/screens/more/educational_toyes_page.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SpeacialRoutes.bottomNavBar:
      return MaterialPageRoute(builder: (_) => const BottomNavBar());
    case SpeacialRoutes.splashScreen:
      return MaterialPageRoute(builder: (_) => const splash());
    case SpeacialRoutes.searchHomeRoute:
      return MaterialPageRoute(builder: (_) => const SearchPageHome());
    case SpeacialRoutes.favouriteRoute:
      return MaterialPageRoute(builder: (_) => const FavouritePage());
    case SpeacialRoutes.moahdaRoute:
      return MaterialPageRoute(builder: (_) => const UseageStrategy());
    //!Rehab
    case SpeacialRoutes.signUpRoute:
      return MaterialPageRoute(builder: (_) => SIGNUP());
    case SpeacialRoutes.otbRoute:
      return MaterialPageRoute(builder: (_) => const Logincode());
    case SpeacialRoutes.loginRoute:
      return MaterialPageRoute(builder: (_) => const Login());
    case SpeacialRoutes.blacklistRoute:
      return MaterialPageRoute(builder: (_) => const BlackList());
    //!
    case SpeacialRoutes.childrenToyesRoute:
      return MaterialPageRoute(builder: (_) => const ChildrenToyesPage());
    case SpeacialRoutes.educationalToyesRoute:
      return MaterialPageRoute(builder: (_) => const EducationalToyesPage());
    case SpeacialRoutes.educationalProductDetailsRoute:
      return MaterialPageRoute(
          builder: (_) => const EducationalProductDetailsPage());
    case SpeacialRoutes.editprofile:
      return MaterialPageRoute(builder: (_) => const EditProfile());
    case SpeacialRoutes.adsRoute:
      return MaterialPageRoute(builder: (_) => const MyAdsPage());
    case SpeacialRoutes.mokaydalist:
      return MaterialPageRoute(builder: (_) => const MokaydaList());
    case SpeacialRoutes.chatRoute:
      return MaterialPageRoute(builder: (_) => ChatPage());
    case SpeacialRoutes.allchatsRoute:
      return MaterialPageRoute(builder: (_) => const AllChats());
    case SpeacialRoutes.allMessages:
      return MaterialPageRoute(builder: (_) => const AllMessages());
    case SpeacialRoutes.unreadMessages:
      return MaterialPageRoute(builder: (_) => const UnReadMessages());
     
      case SpeacialRoutes.productformokayda:
      return MaterialPageRoute(builder: (_) => const MyProductsForMoqaydaPage());
    default:
      return MaterialPageRoute(builder: (_) => const BottomNavBar());
  }
}
