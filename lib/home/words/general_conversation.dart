import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget{
  const GeneralScreen({super.key});

  final List<Map<String, String>> usefulPhrases = const [
    {'word': 'Yes', 'hiragana': 'はい', 'romaji': 'Hai'},
    {'word': 'No', 'hiragana': 'いいえ', 'romaji': 'Iie'},
    {'word': 'Do you understand?', 'hiragana': 'わかりますか？', 'romaji': 'Wakarimasu ka?'},
    {'word': "I don't understand.", 'hiragana': 'わかりません。', 'romaji': 'Wakarimasen.'},
    {'word': 'I understand.', 'hiragana': 'わかります。', 'romaji': 'Wakarimasu.'},
    {'word': 'Thank you.', 'hiragana': 'ありがとう。', 'romaji': 'Arigatou.'},
    {'word': 'Please.', 'hiragana': 'おねがいします。', 'romaji': 'Onegaishimasu.'},
    {'word': "I'm sorry. (Apologize)", 'hiragana': 'ごめんなさい。', 'romaji': 'Gomen nasai.'},
    {'word': 'Please say that again.', 'hiragana': 'もういちどいってください。', 'romaji': 'Mou ichido itte kudasai.'},
    {'word': 'Can you speak slowly?', 'hiragana': 'ゆっくりはなせますか？', 'romaji': 'Yukkuri hanasemasu ka?'},
    {'word': 'No, thank you.', 'hiragana': 'いいえ、ありがとう。', 'romaji': 'Iie, arigatou.'},
    {'word': 'Congratulations!', 'hiragana': 'おめでとうございます！', 'romaji': 'Omedetou gozaimasu!'},
    {'word': "I'm sorry. (Sympathy)", 'hiragana': 'かわいそうですね。', 'romaji': 'Kawaisou desu ne.'},
    {'word': "It's alright. (I'm okay)", 'hiragana': 'だいじょうぶです。', 'romaji': 'Daijoubu desu.'},
    {'word': "I don't know.", 'hiragana': 'しりません。', 'romaji': 'Shirimasen.'},
    {'word': "I don't like it.", 'hiragana': 'すきではありません。', 'romaji': 'Suki dewa arimasen.'},
    {'word': 'I like it.', 'hiragana': 'すきです。', 'romaji': 'Suki desu.'},
    {'word': "You're welcome.", 'hiragana': 'どういたしまして。', 'romaji': 'Dou itashimashite.'},
    {'word': 'I understand that...', 'hiragana': 'それはわかります。', 'romaji': 'Sore wa wakarimasu.'},
    {'word': 'I think that...', 'hiragana': 'そうおもいます。', 'romaji': 'Sou omoimasu.'},
    {'word': 'I would like / I want...', 'hiragana': 'ほしいです。', 'romaji': 'Hoshii desu.'},
    {'word': 'I like...', 'hiragana': 'すきです。', 'romaji': 'Suki desu.'},
    {'word': 'May I use your phone?', 'hiragana': 'あなたのでんわをつかってもいいですか？', 'romaji': 'Anata no denwa o tsukatte mo ii desu ka?'},
    {'word': 'Are you sure?', 'hiragana': 'ほんとうですか？', 'romaji': 'Hontou desu ka?'},
    {'word': 'Can you speak English?', 'hiragana': 'えいごをはなせますか？', 'romaji': 'Eigo o hanasemasu ka?'},
    {'word': 'What does this mean?', 'hiragana': 'これはどういういみですか？', 'romaji': 'Kore wa dou iu imi desu ka?'},
    {'word': 'How do you pronounce this?', 'hiragana': 'これはどうはつおんしますか？', 'romaji': 'Kore wa dou hatsuon shimasu ka?'},
    {'word': 'Could you write that down for me in Korean characters?', 'hiragana': 'かんこくごのもじでかいてもらえますか？', 'romaji': 'Kankokugo no moji de kaite moraemasu ka?'},
    {'word': 'No, thanks!', 'hiragana': 'いいえ、ありがとう！', 'romaji': 'Iie, arigatou!'},
    {'word': "No, that's wrong.", 'hiragana': 'いいえ、ちがいます。', 'romaji': 'Iie, chigaimasu.'},
    {'word': "That's right.", 'hiragana': 'そうです。', 'romaji': 'Sou desu.'},
    {'word': 'No problem.', 'hiragana': 'もんだいありません。', 'romaji': 'Mondai arimasen.'},
    {'word': 'Help!', 'hiragana': 'たすけて！', 'romaji': 'Tasukete!'},
    {'word': 'Who?', 'hiragana': 'だれ？', 'romaji': 'Dare?'},
    {'word': 'What?', 'hiragana': 'なに？', 'romaji': 'Nani?'},
    {'word': 'How many?', 'hiragana': 'いくつ？', 'romaji': 'Ikutsu?'},
    {'word': 'How much?', 'hiragana': 'いくら？', 'romaji': 'Ikura?'},
    {'word': 'Why?', 'hiragana': 'どうして？', 'romaji': 'Doushite?'},
    {'word': 'Why not?', 'hiragana': 'どうしてだめ？', 'romaji': 'Doushite dame?'},
    {'word': 'Which?', 'hiragana': 'どれ？', 'romaji': 'Dore?'},
    {'word': 'Where?', 'hiragana': 'どこ？', 'romaji': 'Doko?'},
    {'word': 'When?', 'hiragana': 'いつ？', 'romaji': 'Itsu?'},
    {'word': 'When is your birthday?', 'hiragana': 'たんじょうびはいつですか？', 'romaji': 'Tanjoubi wa itsu desu ka?'},
    {'word': 'What are you doing now?', 'hiragana': 'いまなにをしていますか？', 'romaji': 'Ima nani o shiteimasu ka?'},
    {'word': 'Where are you going?', 'hiragana': 'どこへいきますか？', 'romaji': 'Doko e ikimasu ka?'},
    {'word': "I'm going to...", 'hiragana': '…へいきます。', 'romaji': '... e ikimasu.'},
    {'word': "What's this?", 'hiragana': 'これはなんですか？', 'romaji': 'Kore wa nan desu ka?'},
    {'word': 'Are you confident?', 'hiragana': 'じしんがありますか？', 'romaji': 'Jishin ga arimasu ka?'},
    {'word': "Don't forget.", 'hiragana': 'わすれないでください。', 'romaji': 'Wasurenaide kudasai.'},
    {'word': 'Excuse me.', 'hiragana': 'すみません。', 'romaji': 'Sumimasen.'},
    {'word': 'Take care of yourself.', 'hiragana': 'おからだをたいせつにしてください。', 'romaji': 'Okarada o taisetsu ni shite kudasai.'},
    {'word': 'Before', 'hiragana': 'まえに', 'romaji': 'Mae ni'},
    {'word': 'I want to go shopping before watching the movie.', 'hiragana': 'えいがをみるまえにかいものにいきたいです。', 'romaji': 'Eiga o miru mae ni kaimono ni ikitai desu.'},
    {'word': 'After', 'hiragana': 'あとで', 'romaji': 'Ato de'},
    {'word': "I'll watch a movie after going shopping.", 'hiragana': 'かいものにいったあとでえいがをみます。', 'romaji': 'Kaimono ni itta ato de eiga o mimasu.'},
    {'word': 'Until', 'hiragana': 'まで', 'romaji': 'Made'},
    {'word': "I don't have to go until tomorrow.", 'hiragana': 'あしたまでいかなくてもいいです。', 'romaji': 'Ashita made ikanakute mo ii desu.'},
    {'word': 'Where is the toilet?', 'hiragana': 'おてあらいはどこですか？', 'romaji': 'Otearai wa doko desu ka?'},
    {'word': 'Do you live here?', 'hiragana': 'ここにすんでいますか？', 'romaji': 'Koko ni sundeimasu ka?'},
    {'word': 'Do you like it here?', 'hiragana': 'ここがすきですか？', 'romaji': 'Koko ga suki desu ka?'},
    {'word': 'I love it here.', 'hiragana': 'ここがだいすきです。', 'romaji': 'Koko ga daisuki desu.'},
    {'word': "I'm here on holiday.", 'hiragana': 'ここへりょこうできています。', 'romaji': 'Koko e ryokou de kiteimasu.'},
    {'word': 'On business.', 'hiragana': 'しごとできています。', 'romaji': 'Shigoto de kiteimasu.'},
    {'word': 'To study.', 'hiragana': 'べんきょうするために', 'romaji': 'Benkyou suru tame ni'},
    {'word': 'Just kidding.', 'hiragana': 'じょうだんです。', 'romaji': 'Joudan desu.'},
    {'word': 'This is my first time in South Korea.', 'hiragana': 'かんこくははじめてです。', 'romaji': 'Kankoku wa hajimete desu.'},
    {'word': "We're on our honeymoon.", 'hiragana': 'わたしたちはしんこんりょこうをしています。', 'romaji': 'Watashitachi wa shinkon ryokou o shiteimasu.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // APP BAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'G e n e r a l   C o n v e r s a t i o n',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),

      //BODY
      body: ListView(
        children: usefulPhrases.map((item){
          return _generalButton(
            item['word']!,
            item['hiragana']!,
            item['romaji']!,
          );
        }
        ).toList(),
      ),
    );
  }

  //GENERAL BUTTON
  Widget _generalButton(
      String word,
      String hiragana,
      String romaji,
      ){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.30),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.35),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // ENGLISH WORD
              Text(
                word,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 3),

              //HIRAGANA
              Text(
                hiragana,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 3),

              // Romanized reading
              Text(
                romaji,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}