@macro storage="scenario/first.ks"
*The_Unit
@cm

The’PˆÊ

@locate x=100 y=100
@button graphic="start.png" storage="scenario/first.ks" target=*start
@buttoncaption num=0 caption="BACK" size=24
[iscript]
Scripts.execStorage("system/The_Unit/startup.tjs");
var unitGame = new The_UnitGame(kag, kag.primaryLayer);
[endscript]
[waittrig name="unitend"]