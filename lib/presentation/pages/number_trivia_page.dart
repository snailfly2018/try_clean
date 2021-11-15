import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_clean/presentation/bloc/number_traiva_bloc.dart';
import 'package:try_clean/presentation/bloc/numbertriviastate.dart';
import 'package:try_clean/presentation/widgets/loading_widget.dart';
import 'package:try_clean/presentation/widgets/message_display.dart';
import 'package:try_clean/presentation/widgets/trivia_controls.dart';
import 'package:try_clean/presentation/widgets/trivia_display.dart';

import '../../injection_container.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: BlocProvider<NumberTriviaBloc>(
        // builder: (_) => sl<NumberTriviaBloc>(),
        create: (_) => sl(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                // Top half
                BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                  builder: (context, state) {
                    if (state is EmptyState) {
                      return const MessageDisplay(
                        message: 'Start searching!',
                      );
                    } else if (state is LoadingState) {
                      return const LoadingWidget();
                    } else if (state is LoadedState) {
                      return TriviaDisplay(numberTrivia: state.numberTrivia);
                    } else if (state is ErrorState) {
                      return MessageDisplay(
                        message: state.message,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                const SizedBox(height: 20),
                // Bottom half
                const TriviaControls()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
