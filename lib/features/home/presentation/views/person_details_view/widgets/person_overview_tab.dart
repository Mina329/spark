import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class PersonOverviewTab extends StatelessWidget {
  const PersonOverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringsManager.biography,
          style: StylesManager.styleLatoBold20(context),
        ),
        const SizedBox(
          height: 10,
        ),
        ExpandableText(
          '''British actor Eddie Redmayne won the Academy Award for Best Actor (for The Theory of Everything (2014)). Edward John David Redmayne was born and raised in London, England, the son of Patricia (Burke) and Richard Charles Tunstall Redmayne, a businessman. His great-grandfather was Sir Richard Augustine Studdert Redmayne, a noted civil and mining engineer. He has English, Irish, Scottish and Welsh ancestry. Redmayne is the only member of his family to follow a career in acting, and also modeled during his teen years. He was educated at Eton College before going on to Trinity College, Cambridge, where he studied History of Art. Encouraged by his parents, Redmayne took drama lessons from a young age. His first stage appearance was in the Sam Mendes production of "Oliver!", in London's West End. He played a workhouse boy. Acting continued through school and university, including performing with the National Youth Music Theatre. Redmayne's first professional stage performance came in 2002 at Shakespeare's Globe Theatre where he played Viola in "Twelfth Night". In 2004, he won the prestigious Evening Standard Outstanding Newcomer Award for his working in Edward Albee's play "The Goat". Further stage successes followed, and in 2009, he starred in John Logan's "Red" at the Donmar Warehouse in London. He won huge critical acclaim for his role, winning an Oliver Award for Best Actor in a Supporting Role. The play transferred to Broadway in 2010, and Redmayne went on to win a Tony Award for Best Performance by a Featured Actor in a Play. Alongside his stage career, Redmayne has worked steadily in television and film. Notable projects include Robert De Niro's The Good Shepherd (2006), Elizabeth: The Golden Age (2007), Tess of the D'Urbervilles (2008), The Pillars of the Earth (2010) and My Week with Marilyn (2011). He co-starred as Marius Pontmercy in the musical Les Misérables (2012). He played scientist Stephen Hawking in the biographical drama The Theory of Everything (2014), opposite Felicity Jones, as Stephen's wife Jane Hawking. For his performance, Redmayne won multiple awards, including the Academy Award for Best Actor. As such, he became the first man born in the 1980s to win an acting Oscar. He received further critical acclaim for his portrayal of Lili Elbe, one of the first known recipients of sex reassignment surgery, in The Danish Girl (2015). For his performance, he was nominated for multiple awards, including the Academy Award for Best Actor. In 2014, Redmayne married publicist Hannah Bagshawe.''',
          expandText: 'show more',
          collapseText: 'show less',
          expandOnTextTap: true,
          collapseOnTextTap: true,
          style: StylesManager.styleLatoRegular16(context)
              .copyWith(color: Colors.grey),
          animation: true,
          maxLines: 5,
          linkColor: ColorManager.primaryColor,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          StringsManager.birth,
          style: StylesManager.styleLatoBold20(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'January 6, 1982 ',
          style: StylesManager.styleLatoRegular16(context)
              .copyWith(color: Colors.grey),
        ),
        Text(
          'Westminster, London, England, UK',
          style: StylesManager.styleLatoRegular16(context)
              .copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          StringsManager.death,
          style: StylesManager.styleLatoBold20(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'January 6, 1982 ',
          style: StylesManager.styleLatoRegular16(context)
              .copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
