@macro storage="scenario/first.ks"
*ReportFairy
@cm

@locate x=100 y=100
@button graphic="start.png" storage="scenario/first.ks" target=*start
@buttoncaption num=0 caption="BACK" size=24
[layopt layer=message0 page=fore visible=false]

;初期画像ロード
[image layer=0 page=fore storage="tintin_b.png" visible=true]
[image layer=1 page=fore storage="rfgtitle002blank.png" visible=true left=300 top=50]
[image layer=2 page=fore storage="rfgtitle001blank.png" visible=true left=300 top=200]


;トランジション
[image layer=0 page=back storage="tintin_green.png" visible=true]
[trans layer=0 method=universal vague=50 rule="rule/rule001.png" time=1000][wt]

[image layer=0 page=back storage="tintin_cyan.png" visible=true]
[trans layer=0 method=universal vague=50 rule="rule/rule002.png" time=1000][wt]



[image layer=0 page=back storage="tintin.png" visible=true]
[image layer=1 page=back storage="rfgtitle002.png" visible=true]
[trans layer=0 method=universal vague=50 rule="rule/rule002.png" time=1000]
[trans layer=1 method=universal vague=50 rule="rule/rule002.png" time=1000][wt]

[image layer=2 page=back storage="rfgtitle001.png" visible=true]
[trans layer=2 method=universal vague=50 rule="rule/rule002.png" time=1000][wt]

@waitclick
[iscript]
Scripts.execStorage("system/ReportFairy/startup.tjs");
var reportGame = new ReportFairyGame(kag, kag.primaryLayer);
[endscript]
[waittrig name="fairyend"]
[iscript]
invalidate reportGame;
[endscript]
@freeimage layer=0
@freeimage layer=1
@freeimage layer=2
@layopt layer=message0 page=fore visible=true
@backlay