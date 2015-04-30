@iscript
//
// �@�\�T�v�F
//   �{�^���̒����ɕ������`�悷��
//
// �����F
//   num     �c �O���t�B�J���{�^���̔ԍ��i�O�`�j
//   caption �c �`�悷�镶����
//   size    �c �t�H���g�̕��������i�s�N�Z���j
//
// �߂�l�F
//   �Ȃ�
//
// ���l�F
//   �]�G���[�`�F�b�N�͍s���Ă��Ȃ�
//	
function drawButtonCaption(num, caption, size)
{
	with (kag.current.links[num].object)
	{
		.font.height = size;					// �{�^���̃t�H���g�̕���������ݒ�

		var w = .font.getTextWidth(caption);	// �������`�悵���Ƃ��̕����񕝂����߂�
		var x = (.width - w) \ 2;				// �{�^�������ɕ\�������悤�A������
		var y = (.height - size) \ 2;			//   �`�悷����W�i������̍�����j���t�Z����

		// �{�^���́u�ʏ�̏�ԁv�����ɕ������`��
		.drawText(x,               y, caption, 0x000000);

		// �{�^���́u�{�^���������ꂽ��ԁv�����ɕ������`��
		.drawText(x+.width,        y, caption, 0x000000);

		// �{�^���́u�{�^���̏�Ƀ}�E�X�J�[�\���������ԁv�����ɕ������`��
		.drawText(x+.width+.width, y, caption, 0x000000);
	}
}
@endscript
;
; buttoncaption�}�N��
;
; �@�\�T�v
;   �O���t�B�J���{�^���ɔC�ӂ̕������`�悷��
;
; ����
;   num     �c �O���t�B�J���{�^���̔ԍ��i�O�`�j
;   caption �c �`�悷�镶����
;   size    �c �t�H���g�̕��������i�s�N�Z���j
;
; �⑫
;   �]button�^�O�̒����buttoncaption�}�N�����g�p���邱��
;
@macro name="buttoncaption"
@eval exp="drawButtonCaption(+mp.num, mp.caption, +mp.size)"
@endmacro
;
@wait time=200
*start|�X�^�[�g
@cm

;The�P�ʃ����N
@locate x=40 y=100
@button graphic="start.png" storage="system/The_Unit/The_Unit.ks" target=*The_Unit
@buttoncaption num=0 caption="The�P��" size=18

;�e�X�g�̗d�������N
@locate x=40 y=150
@button graphic="start.png" storage="system/TestFairy/TestFairy.ks" target=*TestFairy
@buttoncaption num=1 caption="�e�X�g�̗d��" size=18

;The���̋@�����N
@locate x=40 y=200
@button graphic="start.png" storage="system/The_VendingMachine/The_VendingMachine.ks" target=*The_VendingMachine
@buttoncaption num=2 caption="The���̋@" size=18


;�I���{�^��
@locate x=40 y=250
@button graphic="start.png" exp="kag.shutdown()"
@buttoncaption num=3 caption="EXIT" size=24