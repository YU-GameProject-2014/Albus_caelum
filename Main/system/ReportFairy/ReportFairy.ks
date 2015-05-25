@macro storage="scenario/first.ks"
*ReportFairy
@cm

ÉåÉ|Å[ÉgÇÃódê∏

@locate x=100 y=100
@button graphic="start.png" storage="scenario/first.ks" target=*start
@buttoncaption num=0 caption="BACK" size=24
[iscript]
Scripts.execStorage("system/ReportFairy/startup.tjs");
var reportGame = new ReportFairyGame(kag, kag.primaryLayer);
[endscript]
[waittrig name="fairyend"]

