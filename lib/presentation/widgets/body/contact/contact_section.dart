import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/utils/config/responsive.dart';
import 'contact_intro.dart';
import 'contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ContactIntro(),
              SizedBox(height: 32),
              ContactForm(),
            ],
          )
        : const SizedBox(
            height: 500,
            child: Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContactIntro(),
                  ),
                  SizedBox(width: 32),
                  Expanded(child: ContactForm()),
                ],
              ),
            ),
          );
  }
}
