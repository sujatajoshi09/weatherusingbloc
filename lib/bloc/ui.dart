import 'package:blocpractice/bloc/weather_bloc.dart';
import 'package:blocpractice/bloc/weather_event.dart';
import 'package:blocpractice/bloc/weather_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    context.read<HomeBloc>().add(InitialEvent());
    context.read<HomeBloc>().add(LoadingEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 600,
          color: Colors.red,
          child: Column(
            children: [
              Text("hi"),
              BlocConsumer<HomeBloc, HomeState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is LoadingState) {
                    return Text("i am bloc");
                  }
                  if(state is ResponseState){

                    return Text("im response");
                  }

                  return Container(child: Text("........."));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
