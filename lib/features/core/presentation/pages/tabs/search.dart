part of '../home.dart';

class SearchChannelsPage extends StatefulWidget {
  const SearchChannelsPage({Key? key}) : super(key: key);

  @override
  State<SearchChannelsPage> createState() => _SearchChannelsPageState();
}

class _SearchChannelsPageState extends State<SearchChannelsPage> {
  @override
  Widget build(BuildContext context) {
    return EmptyContentPlaceholder(
      title: context.localizer.search,
      subtitle: context.localizer.underDevelopmentSubhead,
    );
  }
}
