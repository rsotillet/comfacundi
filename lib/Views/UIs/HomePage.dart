import 'package:comfacundi_app/Blocs/credit/credit_bloc.dart' as credit_bloc;
import 'package:comfacundi_app/Blocs/turism/turism_bloc.dart' as turism_bloc;
import 'package:comfacundi_app/Blocs/living/living_bloc.dart' as living_bloc;
import 'package:comfacundi_app/Blocs/deport/deport_bloc.dart' as deport_bloc;
import 'package:comfacundi_app/Blocs/subsidy/subsidy_bloc.dart' as subsidy_bloc;
import 'package:comfacundi_app/Blocs/job/job_bloc.dart' as job_bloc;
import 'package:comfacundi_app/Blocs/education/education_bloc.dart'
    as education_bloc;
import 'package:comfacundi_app/Blocs/agreements/agreements_bloc.dart'
    as agreements_bloc;
import 'package:comfacundi_app/Logics/agreementsLogic.dart';
import 'package:comfacundi_app/Logics/creditLogic.dart';
import 'package:comfacundi_app/Logics/deportLogic.dart';
import 'package:comfacundi_app/Logics/educationLogic.dart';
import 'package:comfacundi_app/Logics/jobLogic.dart';
import 'package:comfacundi_app/Logics/livingLogic.dart';
import 'package:comfacundi_app/Logics/subsidyLogic.dart';
import 'package:comfacundi_app/Logics/turismLogic.dart';
import 'package:comfacundi_app/Views/Partials/comfacundiBase.dart';
import 'package:comfacundi_app/Views/Partials/personalButton.dart';
import 'package:comfacundi_app/Views/UIs/credit/ListOptionCreditSettings.dart';
import 'package:comfacundi_app/Views/UIs/deport/ListOptionDeportSettings.dart';
import 'package:comfacundi_app/Views/UIs/education/ListOptionEducationSettings.dart';
import 'package:comfacundi_app/Views/UIs/subsidy/ListOptionSubsidySettings.dart';
import 'package:comfacundi_app/Views/UIs/turism/turism_setings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'agreements/ListOptionAgreementsSettings.dart';
import 'job/ListoOptionJobSettings.dart';
import 'living/ListOptionLivingSettings.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Base(
      headerColor: Theme.of(context).primaryColor,
      bottomBarColor: Theme.of(context).primaryColorDark,
      title: '¡Hola!\n¡Estos Servicios son para ti y tu familia!',
      withIcon: false,
      withHomeButton: false,
      child: Stack(children: <Widget>[
        Positioned(
          top: 30,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(35),
                ),
                color: Colors.white),
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(400, 250),
              ),
              color: Colors.white),
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              child: Wrap(
                runSpacing: -30,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      BlocProvider<turism_bloc.TurismBloc>(
                        create: (context) =>
                            turism_bloc.TurismBloc(logic: TurismLocal())
                              ..add(turism_bloc.Load()),
                        child: BlocBuilder<turism_bloc.TurismBloc,
                            turism_bloc.TurismState>(
                          builder: (context, state) {
                            if (state is turism_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/turism',
                                      arguments:
                                          TurismSettings(turism: state.turism));
                                },
                                tag: 'turismo',
                                svgImage: 'assets/svg/maleta.svg',
                                title: 'TURISMO',
                              );
                            }
                            if (state is turism_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                      BlocProvider<credit_bloc.CreditBloc>(
                        create: (context) =>
                            credit_bloc.CreditBloc(logic: CreditLocal())
                              ..add(credit_bloc.Load()),
                        child: BlocBuilder<credit_bloc.CreditBloc,
                            credit_bloc.CreditState>(
                          builder: (context, state) {
                            if (state is credit_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/credit',
                                      arguments: ListOptionCreditSettings(
                                          credit: state.credit));
                                },
                                tag: 'credito',
                                svgImage: 'assets/svg/credito.svg',
                                title: 'CRÉDITO',
                              );
                            }
                            if (state is credit_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      BlocProvider<education_bloc.EducationBloc>(
                        create: (context) => education_bloc.EducationBloc(
                            logic: EducationLocal())
                          ..add(education_bloc.Load()),
                        child: BlocBuilder<education_bloc.EducationBloc,
                            education_bloc.EducationState>(
                          builder: (context, state) {
                            if (state is education_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/education',
                                      arguments: ListOptionEducationSettings(
                                          education: state.education));
                                },
                                tag: 'educacion',
                                svgImage: 'assets/svg/birrete.svg',
                                title: 'EDUCACIÓN',
                              );
                            }
                            if (state is education_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      BlocProvider<deport_bloc.DeportBloc>(
                        create: (context) =>
                            deport_bloc.DeportBloc(logic: DeportLocal())
                              ..add(deport_bloc.Load()),
                        child: BlocBuilder<deport_bloc.DeportBloc,
                            deport_bloc.DeportState>(
                          builder: (context, state) {
                            if (state is deport_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/deport',
                                      arguments: ListOptionDeportSettings(
                                          deport: state.deport));
                                },
                                tag: 'deporte',
                                svgImage: 'assets/svg/futbol.svg',
                                title: 'RECREACIÓN Y DEPORTE',
                              );
                            }
                            if (state is deport_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                      BlocProvider<subsidy_bloc.SubsidyBloc>(
                        create: (context) =>
                            subsidy_bloc.SubsidyBloc(logic: SubsidyLocal())
                              ..add(subsidy_bloc.Load()),
                        child: BlocBuilder<subsidy_bloc.SubsidyBloc,
                            subsidy_bloc.SubsidyState>(
                          builder: (context, state) {
                            if (state is subsidy_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/subsidy',
                                      arguments: ListOptionSubsidySettings(
                                          subsidy: state.subsidy));
                                },
                                tag: 'subsidio',
                                svgImage: 'assets/svg/subsidio.svg',
                                title: 'SUBSIDIO',
                              );
                            }
                            if (state is subsidy_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      BlocProvider<living_bloc.LivingBloc>(
                        create: (context) =>
                            living_bloc.LivingBloc(logic: LivingLocal())
                              ..add(living_bloc.Load()),
                        child: BlocBuilder<living_bloc.LivingBloc,
                            living_bloc.LivingState>(
                          builder: (context, state) {
                            if (state is living_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/living',
                                      arguments: ListOptionLivingSettings(
                                          living: state.living));
                                },
                                tag: 'vivienda',
                                svgImage: 'assets/svg/casa.svg',
                                title: 'VIVIENDA',
                              );
                            }
                            if (state is agreements_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      BlocProvider<job_bloc.JobBloc>(
                        create: (context) => job_bloc.JobBloc(logic: JobLocal())
                          ..add(job_bloc.Load()),
                        child: BlocBuilder<job_bloc.JobBloc, job_bloc.JobState>(
                          builder: (context, state) {
                            if (state is job_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/job',
                                      arguments: ListOptionJobSettings(
                                          job: state.job));
                                },
                                tag: 'empleo',
                                svgImage: 'assets/svg/lupa.svg',
                                title: 'Agencia de empleo'.toUpperCase(),
                              );
                            }
                            if (state is agreements_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                      BlocProvider<agreements_bloc.AgreementsBloc>(
                        create: (context) => agreements_bloc.AgreementsBloc(
                            logic: AgreementsLocal())
                          ..add(agreements_bloc.Load()),
                        child: BlocBuilder<agreements_bloc.AgreementsBloc,
                            agreements_bloc.AgreementsState>(
                          builder: (context, state) {
                            if (state is agreements_bloc.Loaded) {
                              return PersonalButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/agreements',
                                      arguments: ListOptionAgreementsSettings(
                                          agreements: state.agreements));
                                },
                                tag: 'convenios',
                                svgImage: 'assets/svg/ticket.svg',
                                title: 'CONVENIOS',
                              );
                            }
                            if (state is agreements_bloc.Loading) {
                              return Container(
                                  width: 120,
                                  height: 120,
                                  child: Center(
                                      child: CircularProgressIndicator()));
                            }
                            return Container(
                                width: 120,
                                height: 120,
                                child: Center(child: Text('No Loaded')));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
        ),
        Positioned(
          top: 0,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  'assets/svg/logo_comfacundi.svg',
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
