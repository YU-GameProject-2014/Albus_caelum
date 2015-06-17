@macro storage="scenario/first.ks"
*ReportFairy
@cm

レポートの妖精

@locate x=100 y=100
@button graphic="start.png" storage="scenario/first.ks" target=*start
@buttoncaption num=0 caption="BACK" size=24
[iscript]
System.inform("escキーで終了します\nZキーで集中モード\nXキーを押している間硬直\nCキーで皆殺しのエチュード");
Scripts.execStorage("system/ReportFairy/startup.tjs");
var reportGame = new ReportFairyGame(kag, kag.primaryLayer);
[endscript]
[waittrig name="fairyend"]
[iscript]
invalidate reportGame;
[endscript]

