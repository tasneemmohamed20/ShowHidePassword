import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Screens/ShowHidePassword/VisibilityCubit/visiblility_cubit.dart';


class ShowHideC extends StatelessWidget {
  const ShowHideC({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: BlocBuilder<VisiblilityCubit, VisiblilityState>(
                builder: (context, state) {
                  return TextField(
                    obscureText: context.read<VisiblilityCubit>().secure,
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffix: InkWell(
                        child: Icon(
                          context.read<VisiblilityCubit>().secure? Icons.visibility_off : Icons.visibility,
                        ),
                        onTap: () {
                          context.read<VisiblilityCubit>().ShowHideSwitch();
                        },
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
