	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x0002C2F4 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x0000018C ; chunk size
	.short 48 ; number of files
	.balign 4
	.word 0x00000000, 0x00002180
	.word 0x00002180, 0x000023A8
	.word 0x000023A8, 0x000029CC
	.word 0x000029CC, 0x00002FF0
	.word 0x00002FF0, 0x00003154
	.word 0x00003154, 0x00003234
	.word 0x00003234, 0x0000345C
	.word 0x0000345C, 0x00003A80
	.word 0x00003A80, 0x00003CA8
	.word 0x00003CA8, 0x00003ED0
	.word 0x00003ED0, 0x000040F8
	.word 0x000040F8, 0x00004320
	.word 0x00004320, 0x00004499
	.word 0x0000449C, 0x00004695
	.word 0x00004698, 0x00006048
	.word 0x00006048, 0x00006259
	.word 0x0000625C, 0x0000648D
	.word 0x00006490, 0x00006CC0
	.word 0x00006CC0, 0x00006DD5
	.word 0x00006DD8, 0x00006FCD
	.word 0x00006FD0, 0x00008400
	.word 0x00008400, 0x00008515
	.word 0x00008518, 0x0000870D
	.word 0x00008710, 0x00009B40
	.word 0x00009B40, 0x00009C4C
	.word 0x00009C4C, 0x00009E90
	.word 0x00009E90, 0x0000B3C0
	.word 0x0000B3C0, 0x0000B443
	.word 0x0000B444, 0x0000B52B
	.word 0x0000B52C, 0x0000BEDC
	.word 0x0000BEDC, 0x0000BF64
	.word 0x0000BF64, 0x0000C028
	.word 0x0000C028, 0x0000CC58
	.word 0x0000CC58, 0x0000CE80
	.word 0x0000CE80, 0x00014EC0
	.word 0x00014EC0, 0x000150E8
	.word 0x000150E8, 0x00015310
	.word 0x00015310, 0x00015538
	.word 0x00015538, 0x0001D578
	.word 0x0001D578, 0x0001D7A0
	.word 0x0001D7A0, 0x000257E0
	.word 0x000257E0, 0x00025A08
	.word 0x00025A08, 0x00027A48
	.word 0x00027A48, 0x00027C70
	.word 0x00027C70, 0x00029CB0
	.word 0x00029CB0, 0x00029ED8
	.word 0x00029ED8, 0x0002BF18
	.word 0x0002BF18, 0x0002C140

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x0002C148 ; chunk size
	.incbin "baserom.nds", 0x0, 0x2180
	.incbin "baserom.nds", 0x2180, 0x228
	.incbin "baserom.nds", 0x23A8, 0x624
	.incbin "baserom.nds", 0x29CC, 0x624
	.incbin "baserom.nds", 0x2FF0, 0x164
	.incbin "baserom.nds", 0x3154, 0xE0
	.incbin "baserom.nds", 0x3234, 0x228
	.incbin "baserom.nds", 0x345C, 0x624
	.incbin "baserom.nds", 0x3A80, 0x228
	.incbin "baserom.nds", 0x3CA8, 0x228
	.incbin "baserom.nds", 0x3ED0, 0x228
	.incbin "baserom.nds", 0x40F8, 0x228
	.incbin "baserom.nds", 0x4320, 0x179
	.incbin "baserom.nds", 0x449C, 0x1F9
	.incbin "baserom.nds", 0x4698, 0x19B0
	.incbin "baserom.nds", 0x6048, 0x211
	.incbin "baserom.nds", 0x625C, 0x231
	.incbin "baserom.nds", 0x6490, 0x830
	.incbin "baserom.nds", 0x6CC0, 0x115
	.incbin "baserom.nds", 0x6DD8, 0x1F5
	.incbin "baserom.nds", 0x6FD0, 0x1430
	.incbin "baserom.nds", 0x8400, 0x115
	.incbin "baserom.nds", 0x8518, 0x1F5
	.incbin "baserom.nds", 0x8710, 0x1430
	.incbin "baserom.nds", 0x9B40, 0x10C
	.incbin "baserom.nds", 0x9C4C, 0x244
	.incbin "baserom.nds", 0x9E90, 0x1530
	.incbin "baserom.nds", 0xB3C0, 0x83
	.incbin "baserom.nds", 0xB444, 0xE7
	.incbin "baserom.nds", 0xB52C, 0x9B0
	.incbin "baserom.nds", 0xBEDC, 0x88
	.incbin "baserom.nds", 0xBF64, 0xC4
	.incbin "baserom.nds", 0xC028, 0xC30
	.incbin "baserom.nds", 0xCC58, 0x228
	.incbin "baserom.nds", 0xCE80, 0x8040
	.incbin "baserom.nds", 0x14EC0, 0x228
	.incbin "baserom.nds", 0x150E8, 0x228
	.incbin "baserom.nds", 0x15310, 0x228
	.incbin "baserom.nds", 0x15538, 0x8040
	.incbin "baserom.nds", 0x1D578, 0x228
	.incbin "baserom.nds", 0x1D7A0, 0x8040
	.incbin "baserom.nds", 0x257E0, 0x228
	.incbin "baserom.nds", 0x25A08, 0x2040
	.incbin "baserom.nds", 0x27A48, 0x228
	.incbin "baserom.nds", 0x27C70, 0x2040
	.incbin "baserom.nds", 0x29CB0, 0x228
	.incbin "baserom.nds", 0x29ED8, 0x2040
	.incbin "baserom.nds", 0x2BF18, 0x228
	.balign 4, 255