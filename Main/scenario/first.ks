@iscript
//
// 機能概要：
//   ボタンの中央に文字列を描画する
//
// 引数：
//   num     … グラフィカルボタンの番号（０～）
//   caption … 描画する文字列
//   size    … フォントの文字高さ（ピクセル）
//
// 戻り値：
//   なし
//
// 備考：
//   ‐エラーチェックは行っていない
//	
function drawButtonCaption(num, caption, size)
{
	with (kag.current.links[num].object)
	{
		.font.height = size;					// ボタンのフォントの文字高さを設定

		var w = .font.getTextWidth(caption);	// 文字列を描画したときの文字列幅を求める
		var x = (.width - w) \ 2;				// ボタン中央に表示されるよう、文字を
		var y = (.height - size) \ 2;			//   描画する座標（文字列の左上隅）を逆算する

		// ボタンの「通常の状態」部分に文字列を描画
		.drawText(x,               y, caption, 0x000000);

		// ボタンの「ボタンが押された状態」部分に文字列を描画
		.drawText(x+.width,        y, caption, 0x000000);

		// ボタンの「ボタンの上にマウスカーソルがある状態」部分に文字列を描画
		.drawText(x+.width+.width, y, caption, 0x000000);
	}
}
@endscript
;
; buttoncaptionマクロ
;
; 機能概要
;   グラフィカルボタンに任意の文字列を描画する
;
; 属性
;   num     … グラフィカルボタンの番号（０～）
;   caption … 描画する文字列
;   size    … フォントの文字高さ（ピクセル）
;
; 補足
;   ‐buttonタグの直後にbuttoncaptionマクロを使用すること
;
@macro name="buttoncaption"
@eval exp="drawButtonCaption(+mp.num, mp.caption, +mp.size)"
@endmacro
;
@wait time=200
*start|スタート
@cm

;The単位リンク
@locate x=40 y=100
@button graphic="start.png" storage="system/The_Unit/The_Unit.ks" target=*The_Unit
@buttoncaption num=0 caption="The単位" size=18

;テストの妖精リンク
@locate x=40 y=150
@button graphic="start.png" storage="system/TestFairy/TestFairy.ks" target=*TestFairy
@buttoncaption num=1 caption="テストの妖精" size=18

;The自販機リンク
@locate x=40 y=200
@button graphic="start.png" storage="system/The_VendingMachine/The_VendingMachine.ks" target=*The_VendingMachine
@buttoncaption num=2 caption="The自販機" size=18


;終了ボタン
@locate x=40 y=250
@button graphic="start.png" exp="kag.shutdown()"
@buttoncaption num=3 caption="EXIT" size=24