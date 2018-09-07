*start



[cm  ]
[clearfix]



;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=410]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）

[chara_config ptext="chara_name_area"]

[chara_config anim="false"]

[chara_config pos_mode="false"]

[chara_new name="tan" storage="chara/tan/job_tantei.png" jname="探偵" width="450" height="600"] 
[chara_new name="kei" storage="chara/kei/job_keiji_man.png" jname="刑事" width="450" height="650"] 
[chara_new name="ona" storage="chara/ona/job_ryokan_okamisan.png" jname="女性" width="450" height="600"] 
[chara_new name="neko" storage="chara/neko/animal_chef_neko.png" jname="犯人" width="350" height="500"] 
[chara_new name="fish" storage="chara/fish/fish_maguro2.png" jname="マグロ"] 

;FIX■登場時のキャラの立ち位置が自動で決まる設定を無効にしましょう。
;キャラが多いので、自分で立ち位置を決められた方がいいと思います。

[playbgm storage=misuteri.ogg volume="30"]
[playse storage="storm_land.ogg"]

;吹雪の音

[bg storage="RDDZADI5.jpg" time="100"]

#

１２月　某日　〇〇県山奥の別荘にて[p]


[bg storage="ousetusitu00.jpg" fadein time="2000"]

[playse storage="clock2.ogg"]


;時計の音

;FIX■人間キャラが全体的に少し小さいので、サイズを変えましょう。

[chara_show name="tan" top="30" left="250"]

#探偵
「わかったんですよ。この事件の犯人が」[p]

[playse storage="heart1.ogg"]

#
探偵の一言で、室内の人々がざわつき始める。[p]

[chara_hide name="tan" time="0"]

[chara_show name="kei" left="50"]

#刑事
「い、一体そいつは誰なんだ！」[p]

[chara_hide name="kei" time="0"]

[chara_show name="ona" left="500"  top="70" ]


;FIX■女性だけ座っている画像なので、素材を変えましょう。

#女性
「早く犯人を捕まえてちょうだい！」[p]

[chara_hide name="ona" time="0"]


[chara_show name="tan" top="30" left="250"]

#探偵
「まあまあ落ち着いて、今回は尺の都合でもったいぶらずにいかせてもらいますよ。」[p]

[font size="30"]

「ねぇ、犯人の〇〇さん！」[p]

[resetfont]

[chara_hide name="tan" time="0"]

[stopbgm]

[playse storage="shock1.ogg"]

;ドン　SE
;FIX■showのタイムを0にして、すぐキャラが出る方がインパクトあると思います。
[chara_show name="neko" time="0" left="250" top="100"]

@camera zoom=2 x=0 y=0 time=1000

;FIX■ドンのタイミングで音楽を止めて、冒頭の時計の音だけ流れててもいいかなと思いました。
;音楽はその後、また徐々に再生でいいと思います。

#犯人
「………………」[p]

[chara_hide name="neko" time="0"]

@reset_camera

[playse storage="clock2.ogg"]

[chara_show name="ona" time="0" left="500"  top="70"]

[chara_show name="kei" time="0" ]

;FIX■女はショックを受けて、刑事は憤るという、別々の感情のキャラが１画面にいるので、
;感情の違いがわかりやすいように動きをつけてみましょう。
;例えば、女がゆっくり後ずさったり、刑事の大きさを変えて、ぐっと手前に寄ったように見せるなど。

;FIX■刑事がぐにょっと伸びたように見えるので、縦と横の縮尺を合わせましょう。
[fadeinbgm storage="misuteri.ogg" volume="30" time="2000"]

[chara_move anim=true name=ona width="405" height="540" time="1000"]

[wa]

#女性
「う、嘘でしょ……」[p]

[chara_move anim=true name=kei width="540" height="780" time=500]

[wa]

#刑事
「こ、この猫野郎！よくもマグロを！」[p]

[chara_hide_all time="0"]


[chara_show name="tan" top="30" left="250"]

[stopse]

#探偵
「事件の真相は、こういうところなんです……」[p]

[playse storage="sceneswitch2.ogg"]

[image name="effect" layer=0 widgh=2000 height=1000 storage=flash.jpg time=0]

[chara_hide name="tan"]


[bg storage="sepia.png" time=0]

[freeimage name="effect" layer=0 time=1000]

;FIX■ここの過去の表現いいと思います。
;ただ、表現回想に入った事がわかり易いように、白転などを入れるともっと良くなりそうです。

;FIX■白のフラッシュなどを入れるとわかり易いですよ


[filter layer=0 sepia=80 ]

[chara_show name="neko" left="400" top="150" ]

[chara_show name="fish" top="200" left="50" ]



;被害者


;FIX■ここでプレイヤーに被害者の正体をばらすのはもったいない気がしました。
;シナリオについての話になってしまうので、ここでは直さなくて大丈夫です。

犯人と被害者。

#探偵
「あなたは昨夜、マグロさんを何らかの理由をつけて厨房へ呼び出した」[p]

[stopbgm]
;ｂｇｍ止め

「そして彼が油断していたところを、用意していたフライパンでボカン！」[p]

[playse storage="kick1.ogg"]

[chara_move name="neko" left="-=50" time="100" anim="true"]

[wait time="1000"]

[playse storage="down1.ogg"]

[chara_move name="fish" top="+=1000" time="1000" anim="true"]

;犯人、マグロを後ろから攻撃。下に沈むマグロ。攻撃音は検討。この後ｂｇｍ再会


「厨房には冷凍庫も、血を流す水道もある。殺すのには最適というわけですな……」[p]


[chara_hide_all time="0"]

[free_filter layer=0]

[playse storage="sceneswitch2.ogg"]

[image name="effect" layer=0 widgh=2000 height=1000 storage=flash.jpg time=0]


[bg storage="ousetusitu00.jpg" time=1000]

[playbgm storage=misuteri.ogg volume="30"]

[freeimage name="effect" layer=0 time=1000]


[chara_show name="kei" left="50"]



#刑事
「待ってくれ！それじゃあ遺体は、遺体はどこに消えたんだ！」[p]

[chara_show name="ona"  left="500"  top="70"]

#女性
「そうよ、みんなであちこち探しても、結局見つからなかったじゃない！」[p]

[chara_show name="tan" left="250"  top="50"]

#探偵
「そうです。そこが引っ掛かっていた。逆に言えば、それが分かればこの事件は容易に解決できるのです」[p]

[chara_hide_all time="0"]

[chara_show name="neko" left="400" top="150" ]

#犯人
「……その言い方、どこにいるか分かっているんでしょうね」[p]

[chara_show name="tan" left="50" top="50"]

#探偵
「もちろんです。探偵ですからね」[p]

#
探偵はパイプをふかし、椅子に座った。[p]

#探偵
「遺体は探す必要なんかなかったんです。なぜなら、彼は我々のすぐ近くにいたのですから！」[p]

;　ばーん

[chara_hide name="neko" time="0"]

[chara_show name="kei" left="400" ]

#刑事
「近くにいた……だとぉ？　ふざけるな、早く説明しろ！」[p]

[chara_hide name="kei"]

#
動揺する人達に反し、探偵は余裕そうに気取って見せた。[p]

[chara_hide name="tan"]

[bg storage="dining1.jpg" fadein time="2000"]

#探偵
「時に〇〇さん、今日のご飯は覚えていらっしゃいますか？」[p]

#刑事
「ああ、刺身、あら汁、フィッシュフライだったが……それがどうかしたか？」[p]

[bg storage="ousetusitu00.jpg" fadein time="2000"]

[chara_show name="tan" top="30" left="250"]

#探偵
「おかしいと思いませんか？ここは数日前から豪雪で陸の孤島と化しているんですよ。どうやってこんな山奥で新鮮な魚を調達したんですか？」[p]

[chara_show name="ona" top="70" left="450"]

#女性
「そんな、まさか……我々が食べたのは……」[p]

[chara_hide name="ona" time="0"]


[playse storage="shock1.ogg"]

;　ばーん
[font size="30"]

@camera zoom=2 x=0 y=100 time=0

#探偵
「ええ、〇〇さんです。私は菜食なので食べてませんけど」[p]

@reset_camera time=0

[resetfont]

[chara_hide name="tan" time="0"]

[chara_show name="ona" top="70" left="450" time="0"]

[quake count=5 time=300 hmax=20]


#女性
「う、嘘よおおおおおお！！」[p]

[chara_show name="kei"]

#刑事
「どおりでうまいと思ったわけだ！おまけに量が多いし！」[p]

「しかし、これで犯人は決まったな。飯を作れるのは、コックのお前だけだもんな！」[p]

[chara_show name="tan" top="30" left="250"]

[wait time="500"]

#
　全員の冷たい視線がコックである犯人に集まる。[p]
　
　[chara_hide_all]

[chara_show name="neko" left="250" top="100"]

　しかし、この期に及んでも犯人は顔色一つ崩すことはない。[p]

#犯人
「……証拠」[p]

[chara_show name="kei"]

#刑事
「あ……？」[p]

[chara_hide name="kei" time="0"]

;文字は大きめがいいかも


[stopbgm]

@camera zoom=2 x=0 y=0 time=1000

;FIX■寄ったあと少し右にずれているので、中央に修正しましょう。



[font size="30" color=red]
#犯人
「私たちが食べた魚料理が〇〇だという証拠……あるんですか？」[p]

[playse storage="heart1.ogg"]

[filter layer=0 invert=100 ]

[filter layer=base invert=100 ]

[wait time=500]


;FIX■猫はすぐ消しちゃいましょう
[resetfont]

[chara_hide name="neko"]

@reset_camera

[free_filter layer=base]

[free_filter layer=0]


[chara_show name="ona" time="0" top="70" left="500"]

[chara_show name="kei" time="0" left="0"]

[chara_move anim=true name=neko width="350" height="500" left="250" top="100" time=500]

#女性
「え！？」[p]

#刑事
「そ、それは……あるんだろ！探偵さんよぉ！」[p]

[chara_hide_all]

[chara_show name="tan" top="30" left="120"]

#探偵
「このトリックは非常に見事でした。遺体を胃袋に入れてしまえば、消化されてなくなってしまう」[p]

[chara_show name="neko" left="400" top="100"]

#犯人
「ふふ、ふふふふふ！」[p]

#
勝利を確信したのか、犯人は震え、気味の悪い声を上げる。[p]
;FIX■ここ誤字があるので直しましょう。

[playbgm storage=gyakuten.ogg volume="30"]

@camera zoom=2 x=-100 y=100 time=1000

#探偵
「ただし、あなたは大きなミスを犯した」[p]

@reset_camera

#犯人
「……へ？」[p]

[chara_hide name="neko"]

;FIX■テンポが早めで緊迫感のある音楽をこの近辺で流しましょう。
;あと、ここまでの無音期間が長いので、何かしらの音楽は流しましょう（ゲームによっては長い無音もあり）

#探偵
「皆さん。協力してください。ここに生ごみがあります」[p]

;生ごみ画像

[playse storage="down1.ogg"]

;FIX■生ごみの画像が大き過ぎるので縮めましょう。
;もしくは立ち絵を一回消して、ごみと人が同時に出ないようにすれば大丈夫です。

[image name="gomi" layer=0 storage="souji_gomibukuro.png" width="400" height="400" left=400 top=250 time=100]

[chara_show name="kei" left="-100"]

#刑事
「生ごみ……？別にいいけど、何を探すんだ？」[p]

#探偵
「なあに、大したものじゃあありませんよ」[p]

「今日食べた魚。その骨を集めたいのです」[p]

[free layer=0 name="gomi" time=100]

[chara_hide_all time="0"]

[chara_show name="neko" left="250" top="100"]


#犯人
「あ……ああああああああ……」[p]

;FIX■もっとクオリティをあげるとすると、ここでなにか衝撃を受けている演出（ＳＥやフラッシュ、揺れなど）つけるといいかと思います。

[image name="effect" layer=0 widgh=2000 height=1000 storage=flash.jpg time=0]


[free name="effect" layer=0 time=500]

[wait time=100]

[image name="effect" layer=0 widgh=2000 height=1000 storage=flash.jpg time=0]

[free name="effect" layer=0 time=1000]


[playse storage="down1.ogg"]

[chara_move name="neko" top="+=100" time="500" anim="true"]

#
犯人はその場に崩れ落ちた。[p]
;FIX■少し下に行き過ぎている気がします。ＳＥがあるので、少し下に移動するだけで崩れ落ちた感じは伝わると思います。

[chara_hide_all]

;FIX■この時点で流す音楽にしては明るすぎるので、哀愁のある音楽に変えましょう。
;今回はスタッフロールとかが無いのでできないですが、「猫のくせにね」の後にここの音楽を流した方がいいと思いました。

;FIX■日が変わった事が伝わるように、何か演出を付けましょう。アイキャッチなど。少し間を置く。
;例えば、音楽をフェードアウトさせながら暗転し、次の背景に変わって地の文が入るまでの間、スズメの声のSEを流すなど。

[stopbgm]

[bg storage="black.jpg" time="2000"]

[playse storage=suzume-cry1.ogg]

翌日[p]

[playbgm storage=aisyuu.ogg volume="30"]

[bg storage="winter-back022.jpg" method="slideInLeft"]


[fadeinse storage="patrol-car1.ogg" volume="50" time="2000"]

天気は回復し、パトカーが駆け付けた。[p]



[chara_show name="kei" left="450"]

[fadeoutse time="2000"]

#刑事
「まさか、こんな山奥で殺人……殺魚事件に巻き込まれるとはな。もうごめんだぜ」[p]

[chara_hide name="kei"]

;魚の骨画像

[image name="fish2" layer=0 storage="food_sakana_hone.png" left=50 top=150 time=200 width="800" height="400"]

#
刑事はみんなで完成させた亡骸を見る。たっぷり肥えていた身はなくなり、見事に真っ白な骨だけになっていた。[p]

[free layer=0 name="fish2" time=200]

[chara_show name="kei" left="450"]

#刑事
「それにしても、なんでお前はあいつが犯人だとわかったんだ？」[p]

[chara_show name="tan" left="0" top="30"]

#探偵
「簡単な話です」[p]

[chara_hide name="kei"]

;FIX■ここのセミコロンが全角なので直しましょう。
;雪を踏む音

[playse storage="walk-snow1.ogg"]

[chara_move name="tan" left="+=200" time="2000" anim="true"]

#
　雪道を歩きながら、探偵は言った。[p]
　
[fadeoutse time="2000"]

#探偵
「彼、自分が作った料理に全く手を付けなかったんです。猫のくせに、ね……」[p]
[fadeoutbgm time="2000"]

;FIX■画面をフェードアウトさせましょう。

;FIX■bgm変更が少し唐突なので、前の音楽をフェードアウトさせてから次の音楽を流しましょう。

[chara_hide name="tan" time="0"]

[mask time=2000]

[playbgm storage=ending.ogg volume="30"]


END



