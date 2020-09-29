import "package:comfacundi_app/Views/UIs/HomePage.dart";
import 'package:comfacundi_app/Views/UIs/agreements/DetailAgreements.dart/detailAgreements.dart';
import 'package:comfacundi_app/Views/UIs/agreements/ListOptionAgrements.dart';
import 'package:comfacundi_app/Views/UIs/credit/DetailCredit.dart/detailCredit.dart';
import 'package:comfacundi_app/Views/UIs/credit/ListOptionCredit.dart';
import 'package:comfacundi_app/Views/UIs/deport/ListOptionDeport.dart';
import 'package:comfacundi_app/Views/UIs/deport/ListOptionDeport2/DetailDeport2.dart/detailDeport2.dart';
import 'package:comfacundi_app/Views/UIs/deport/ListOptionDeport2/listOptionsDeport2.dart';
import 'package:comfacundi_app/Views/UIs/deport/detailDeport1/DetailDeport1.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducation.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducation2/DetailEducation/DetailEducation.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducation2/ListOptionEducation2.dart';
import 'package:comfacundi_app/Views/UIs/job/DetailJob/DetailJob.dart';
import 'package:comfacundi_app/Views/UIs/job/DetailJob2/DetailJob2.dart';
import 'package:comfacundi_app/Views/UIs/job/ListOptionJob.dart';
import 'package:comfacundi_app/Views/UIs/living/DetailLiving.dart/detailLiving.dart';
import 'package:comfacundi_app/Views/UIs/living/ListOptionLiving.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/DetailSubsidy/DetailSubsidy.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/ListOptionSubsidy.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/ListOptionSubsidy2/ListOptionSubsidy2.dart';
import 'package:comfacundi_app/Views/UIs/support/AtentionCanals.dart';
import 'package:comfacundi_app/Views/UIs/support/ContactUs.dart';
import 'package:comfacundi_app/Views/UIs/support/ListOptionSupport.dart';
import 'package:comfacundi_app/Views/UIs/support/PQRSF.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/detailTurism/detailTurism.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurism2/listOptionsTurism2.dart';
import 'package:comfacundi_app/Views/UIs/turism/listOptionsTurism/listOptionsTurismSettings.dart';
import 'package:comfacundi_app/Views/UIs/turism/turism.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      //Principal Routes
      case '/':
        return myAnimation(
            page: HomePage(
          title: 'COMFACUNDI',
        ));

      //Turism Routes************************************************
      case '/turism':
        return myAnimation(page: TurismPage(settings: settings.arguments));
      case '/listOptionTurism':
        if (settings.arguments is ListOptionsTurismSettings) {
          return myAnimation(
              page: ListOptionTurismPage(settings1: settings.arguments));
        } else {
          return myAnimation(
              page: ListOptionTurismPage(settings2: settings.arguments));
        }
        break;
      case '/listOptionTurism2':
        return myAnimation(
            page: ListOptionTurism2Page(settings: settings.arguments));
      case '/detailTurism':
        return myAnimation(page: DetailTurism(settings: settings.arguments));
      //end Turist Routes----------------------------------------------

      //Credit Routes
      case '/credit':
        return myAnimation(
            page: ListOptionCreditPage(settings: settings.arguments));
      case '/detailCredit':
        return myAnimation(page: DetailCredit(settings: settings.arguments));
      //end Credit Routes

      //Agreements Routes
      case '/agreements':
        return myAnimation(
            page: ListOptionAgreementsPage(settings: settings.arguments));
      case '/detailAgreements':
        return myAnimation(page: DetailAgreement(settings: settings.arguments));
      //end Agreements Routes

      //Agreements Routes
      case '/living':
        return myAnimation(
            page: ListOptionLivingPage(settings: settings.arguments));
      case '/detailLiving':
        return myAnimation(page: DetailLiving(settings: settings.arguments));
      //end Agreements Routes

      //Education Routes
      case '/education':
        return myAnimation(
            page: ListOptionEducationPage(settings: settings.arguments));
      case '/listOptionEducation2':
        return myAnimation(
            page: ListOptionEducation2Page(settings: settings.arguments));

      case '/detailEducation':
        return myAnimation(page: DetailEducation(settings: settings.arguments));
      //end Education Routes

      //Deport Routes
      case '/deport':
        return myAnimation(
            page: ListOptionDeportPage(settings: settings.arguments));
      case '/detailDeport1':
        return myAnimation(page: DetailDeport1(settings: settings.arguments));
      case '/detailDeport2':
        return myAnimation(page: DetailDeport2(settings: settings.arguments));
      case '/listOptionDeport2':
        return myAnimation(
            page: ListOptionDeport2Page(settings: settings.arguments));
      //end Deport Routes

      //Subsidy Routes
      case '/subsidy':
        return myAnimation(
            page: ListOptionSubsidyPage(settings: settings.arguments));
      case '/ListOptionSubsidy2':
        return myAnimation(
            page: ListOptionSubsidy2Page(settings: settings.arguments));
      case '/detailSubsidy':
        return myAnimation(page: DetailSubsidy(settings: settings.arguments));
      //end Subsidy Routes

      //Job Routes
      case '/job':
        return myAnimation(
            page: ListOptionJobPage(settings: settings.arguments));
      case '/detailJob':
        return myAnimation(page: DetailJob(settings: settings.arguments));
      case '/detailJob2':
        return myAnimation(page: DetailJob2(settings: settings.arguments));
      //end Job Routes

      //Support Routes
      case '/support':
        return myAnimation(page: ListOptionSupportPage());
      case '/atentionCanals':
        return myAnimation(page: AtentionCanals());
      case '/PQRSF':
        return myAnimation(page: PQRSF());
      case '/contactUs':
        return myAnimation(page: ContactUs());
      //end Support Routes

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('La ruta ${settings.name} no esta definida'),
            ),
          ),
        );
    }
  }

  static myAnimation({Widget page}) {
    return PageRouteBuilder(
        opaque: true,
        transitionDuration: Duration(seconds: 1),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        },
        pageBuilder: (_, __, ___) {
          return page;
        });
  }
}
