import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFF55540);
    const softColor = Color(0xFFFCCAC4);
    const backgroundColor = Color(0xFFFFF7F4);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFF1EC), backgroundColor],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.r),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withValues(alpha: 0.08),
                          blurRadius: 24,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.restaurant_menu_rounded,
                      color: primaryColor,
                      size: 28,
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
                Container(
                  padding: EdgeInsets.all(22.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 28,
                        offset: const Offset(0, 12),
                      ),
                    ],
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            color: softColor.withValues(alpha: 0.25),
                            borderRadius: BorderRadius.circular(18.r),
                          ),
                          child: Text(
                            'Welcome back',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoKufiArabic(
                              color: primaryColor,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Text(
                          'Login to your account',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoKufiArabic(
                            fontSize: 24.sp,
                            height: 1.25,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xFF1F1F1F),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Use your email and password to continue.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoKufiArabic(
                            fontSize: 12.sp,
                            height: 1.6,
                            color: const Color(0xFF7A7A7A),
                          ),
                        ),
                        SizedBox(height: 26.h),
                        _LabelField(
                          label: 'Email Address',
                          hintText: 'Enter your email',
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icons.email_outlined,
                          validator: (value) {
                            final text = value?.trim() ?? '';
                            if (text.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!text.contains('@')) {
                              return 'Enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.h),
                        _LabelField(
                          label: 'Password',
                          hintText: 'Enter your password',
                          controller: _passwordController,
                          prefixIcon: Icons.lock_outline,
                          obscureText: _obscurePassword,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: const Color(0xFF8C8C8C),
                            ),
                          ),
                          validator: (value) {
                            if ((value ?? '').isEmpty) {
                              return 'Please enter your password';
                            }
                            if ((value ?? '').length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: primaryColor,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              'Forgot password?',
                              style: GoogleFonts.notoKufiArabic(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h),
                        SizedBox(
                          height: 54.h,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Login action not connected yet.',
                                    ),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.r),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: GoogleFonts.notoKufiArabic(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.92),
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: softColor.withValues(alpha: 0.5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New here? ',
                        style: GoogleFonts.notoKufiArabic(
                          fontSize: 12.sp,
                          color: const Color(0xFF6E6E6E),
                        ),
                      ),
                      Text(
                        'Create account',
                        style: GoogleFonts.notoKufiArabic(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.h),
                Text(
                  'Secure access to your orders, favorites, and profile.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 11.sp,
                    color: const Color(0xFF8D8D8D),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LabelField extends StatelessWidget {
  const _LabelField({
    required this.label,
    required this.hintText,
    required this.controller,
    required this.prefixIcon,
    required this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String label;
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFF55540);
    const fieldFill = Color(0xFFFFF7F4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          // textAlign: TextAlign.right,
          style: GoogleFonts.notoKufiArabic(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF333333),
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          // textAlign: TextAlign.right,
          style: GoogleFonts.notoKufiArabic(
            fontSize: 13.sp,
            color: const Color(0xFF222222),
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.notoKufiArabic(
              fontSize: 12.sp,
              color: const Color(0xFFAAAAAA),
            ),
            filled: true,
            fillColor: fieldFill,
            prefixIcon: Icon(prefixIcon, color: primaryColor),
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.w,
              vertical: 16.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide(
                color: primaryColor.withValues(alpha: 0.12),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide(
                color: primaryColor.withValues(alpha: 0.12),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: const BorderSide(color: primaryColor, width: 1.4),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: const BorderSide(color: Colors.redAccent),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: const BorderSide(color: Colors.redAccent, width: 1.4),
            ),
          ),
        ),
      ],
    );
  }
}
