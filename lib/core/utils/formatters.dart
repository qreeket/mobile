String? formatChannelName(String? channelName, [bool withSymbol = true]) => channelName == null
    ? null
    : '${withSymbol ? '#' : ''}${channelName.toLowerCase()}'.replaceAll(' ', '_');
