import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/button/button_app.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/button/button_enums.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/input/input_primary_form.dart';
import 'package:real_estate_admin_cms/features/auth/features/login/application/login_bloc.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.status.whenOrNull(
          success: (value) {},
        );
      },
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Align(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 300,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    s.loginSignIn,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.phoneNumber,
                        style: context.textTheme.bodyLarge?.copyWith(),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      InputPrimaryForm(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          context
                              .read<LoginBloc>()
                              .add(LoginEvent.onPhoneNumberChange(value));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.password,
                        style: context.textTheme.bodyLarge?.copyWith(),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocSelector<LoginBloc, LoginState, bool>(
                        selector: (state) {
                          return state.passwordVisible;
                        },
                        builder: (context, state) {
                          return InputPrimaryForm(
                            obscureText: !state,
                            // hint: s.password,
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                context.read<LoginBloc>().add(
                                    const LoginEvent.onPasswordVisibleChange());
                              },
                              child: UnconstrainedBox(
                                child: state
                                    ? Assets.icons.icEyeHide.svg(
                                        width: AppSize.extraLargeElevation,
                                        height: AppSize.extraLargeElevation,
                                      )
                                    : Assets.icons.icEyeShow.svg(
                                        width: AppSize.extraLargeElevation,
                                        height: AppSize.extraLargeElevation,
                                      ),
                              ),
                            ),
                            onChanged: (value) {
                              context
                                  .read<LoginBloc>()
                                  .add(LoginEvent.onPasswordChange(value));
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      BlocSelector<LoginBloc, LoginState, bool>(
                        selector: (state) {
                          return state.phoneNumberAuth?.isValid() == true &&
                              state.passwordAuth?.isValid() == true;
                        },
                        builder: (context, state) {
                          return ButtonApp(
                            label: s.loginSignIn,
                            onPressed: state
                                ? () {
                                    context
                                        .read<LoginBloc>()
                                        .add(const LoginEvent.onLogin());
                                  }
                                : null,
                            type: ButtonType.primary,
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
