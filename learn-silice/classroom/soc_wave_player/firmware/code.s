
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	018080e7          	jalr	24(ra) # 1c <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <main>:
      1c:	000017b7          	lui	a5,0x1
      20:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x7888>
      24:	00004737          	lui	a4,0x4
      28:	ba078793          	addi	a5,a5,-1120 # ba0 <display_putchar>
      2c:	00112623          	sw	ra,12(sp)
      30:	2ef72223          	sw	a5,740(a4) # 42e4 <f_putchar>
      34:	00812423          	sw	s0,8(sp)
      38:	00912223          	sw	s1,4(sp)
      3c:	01212023          	sw	s2,0(sp)
      40:	00001097          	auipc	ra,0x1
      44:	a68080e7          	jalr	-1432(ra) # aa8 <oled_init>
      48:	00001097          	auipc	ra,0x1
      4c:	a6c080e7          	jalr	-1428(ra) # ab4 <oled_fullscreen>
      50:	00001097          	auipc	ra,0x1
      54:	b1c080e7          	jalr	-1252(ra) # b6c <display_framebuffer>
      58:	00004637          	lui	a2,0x4
      5c:	00000593          	li	a1,0
      60:	00001097          	auipc	ra,0x1
      64:	888080e7          	jalr	-1912(ra) # 8e8 <memset>
      68:	00001097          	auipc	ra,0x1
      6c:	c5c080e7          	jalr	-932(ra) # cc4 <display_refresh>
      70:	00000593          	li	a1,0
      74:	00000513          	li	a0,0
      78:	00001097          	auipc	ra,0x1
      7c:	b00080e7          	jalr	-1280(ra) # b78 <display_set_cursor>
      80:	00000593          	li	a1,0
      84:	0ff00513          	li	a0,255
      88:	00001097          	auipc	ra,0x1
      8c:	b04080e7          	jalr	-1276(ra) # b8c <display_set_front_back_color>
      90:	00004537          	lui	a0,0x4
      94:	fb450513          	addi	a0,a0,-76 # 3fb4 <OLED+0x4>
      98:	00001097          	auipc	ra,0x1
      9c:	e24080e7          	jalr	-476(ra) # ebc <printf>
      a0:	00001097          	auipc	ra,0x1
      a4:	c24080e7          	jalr	-988(ra) # cc4 <display_refresh>
      a8:	00000097          	auipc	ra,0x0
      ac:	56c080e7          	jalr	1388(ra) # 614 <sdcard_init>
      b0:	00004537          	lui	a0,0x4
      b4:	fc050513          	addi	a0,a0,-64 # 3fc0 <OLED+0x10>
      b8:	00001097          	auipc	ra,0x1
      bc:	e04080e7          	jalr	-508(ra) # ebc <printf>
      c0:	00001097          	auipc	ra,0x1
      c4:	c04080e7          	jalr	-1020(ra) # cc4 <display_refresh>
      c8:	00001097          	auipc	ra,0x1
      cc:	3bc080e7          	jalr	956(ra) # 1484 <fl_init>
      d0:	00004537          	lui	a0,0x4
      d4:	fd450513          	addi	a0,a0,-44 # 3fd4 <OLED+0x24>
      d8:	00001097          	auipc	ra,0x1
      dc:	de4080e7          	jalr	-540(ra) # ebc <printf>
      e0:	00001097          	auipc	ra,0x1
      e4:	be4080e7          	jalr	-1052(ra) # cc4 <display_refresh>
      e8:	000014b7          	lui	s1,0x1
      ec:	00000437          	lui	s0,0x0
      f0:	00004937          	lui	s2,0x4
      f4:	82c48593          	addi	a1,s1,-2004 # 82c <sdcard_writesector>
      f8:	7d840513          	addi	a0,s0,2008 # 7d8 <sdcard_readsector>
      fc:	00002097          	auipc	ra,0x2
     100:	1c4080e7          	jalr	452(ra) # 22c0 <fl_attach_media>
     104:	06051463          	bnez	a0,16c <main+0x150>
     108:	00004537          	lui	a0,0x4
     10c:	fe850513          	addi	a0,a0,-24 # 3fe8 <OLED+0x38>
     110:	00001097          	auipc	ra,0x1
     114:	dac080e7          	jalr	-596(ra) # ebc <printf>
     118:	00001097          	auipc	ra,0x1
     11c:	bac080e7          	jalr	-1108(ra) # cc4 <display_refresh>
     120:	000045b7          	lui	a1,0x4
     124:	00004537          	lui	a0,0x4
     128:	ff058593          	addi	a1,a1,-16 # 3ff0 <OLED+0x40>
     12c:	ff450513          	addi	a0,a0,-12 # 3ff4 <OLED+0x44>
     130:	00004097          	auipc	ra,0x4
     134:	a7c080e7          	jalr	-1412(ra) # 3bac <fl_fopen>
     138:	00050413          	mv	s0,a0
     13c:	04051463          	bnez	a0,184 <main+0x168>
     140:	00004537          	lui	a0,0x4
     144:	00050513          	mv	a0,a0
     148:	00001097          	auipc	ra,0x1
     14c:	d74080e7          	jalr	-652(ra) # ebc <printf>
     150:	00812403          	lw	s0,8(sp)
     154:	00c12083          	lw	ra,12(sp)
     158:	00412483          	lw	s1,4(sp)
     15c:	00012903          	lw	s2,0(sp)
     160:	01010113          	addi	sp,sp,16
     164:	00001317          	auipc	t1,0x1
     168:	b6030067          	jr	-1184(t1) # cc4 <display_refresh>
     16c:	fe490513          	addi	a0,s2,-28 # 3fe4 <OLED+0x34>
     170:	00001097          	auipc	ra,0x1
     174:	d4c080e7          	jalr	-692(ra) # ebc <printf>
     178:	00001097          	auipc	ra,0x1
     17c:	b4c080e7          	jalr	-1204(ra) # cc4 <display_refresh>
     180:	f75ff06f          	j	f4 <main+0xd8>
     184:	00004537          	lui	a0,0x4
     188:	01450513          	addi	a0,a0,20 # 4014 <OLED+0x64>
     18c:	00001097          	auipc	ra,0x1
     190:	d30080e7          	jalr	-720(ra) # ebc <printf>
     194:	00001097          	auipc	ra,0x1
     198:	b30080e7          	jalr	-1232(ra) # cc4 <display_refresh>
     19c:	00001097          	auipc	ra,0x1
     1a0:	9d0080e7          	jalr	-1584(ra) # b6c <display_framebuffer>
     1a4:	00040693          	mv	a3,s0
     1a8:	00004637          	lui	a2,0x4
     1ac:	00100593          	li	a1,1
     1b0:	00003097          	auipc	ra,0x3
     1b4:	424080e7          	jalr	1060(ra) # 35d4 <fl_fread>
     1b8:	00001097          	auipc	ra,0x1
     1bc:	b0c080e7          	jalr	-1268(ra) # cc4 <display_refresh>
     1c0:	00040513          	mv	a0,s0
     1c4:	00812403          	lw	s0,8(sp)
     1c8:	00c12083          	lw	ra,12(sp)
     1cc:	00412483          	lw	s1,4(sp)
     1d0:	00012903          	lw	s2,0(sp)
     1d4:	01010113          	addi	sp,sp,16
     1d8:	00003317          	auipc	t1,0x3
     1dc:	31c30067          	jr	796(t1) # 34f4 <fl_fclose>

000001e0 <pause>:
     1e0:	c0002773          	rdcycle	a4
     1e4:	c00027f3          	rdcycle	a5
     1e8:	40e787b3          	sub	a5,a5,a4
     1ec:	fea7ece3          	bltu	a5,a0,1e4 <pause+0x4>
     1f0:	00008067          	ret

000001f4 <sdcard_idle>:
     1f4:	00008067          	ret

000001f8 <sdcard_select>:
     1f8:	000047b7          	lui	a5,0x4
     1fc:	fa87a783          	lw	a5,-88(a5) # 3fa8 <SDCARD>
     200:	00200713          	li	a4,2
     204:	00e7a023          	sw	a4,0(a5)
     208:	00008067          	ret

0000020c <sdcard_ponder>:
     20c:	000046b7          	lui	a3,0x4
     210:	fa86a683          	lw	a3,-88(a3) # 3fa8 <SDCARD>
     214:	01000793          	li	a5,16
     218:	00000713          	li	a4,0
     21c:	00676613          	ori	a2,a4,6
     220:	00c6a023          	sw	a2,0(a3)
     224:	00174713          	xori	a4,a4,1
     228:	00000013          	nop
     22c:	fff78793          	addi	a5,a5,-1
     230:	fe0796e3          	bnez	a5,21c <sdcard_ponder+0x10>
     234:	00008067          	ret

00000238 <sdcard_unselect>:
     238:	000047b7          	lui	a5,0x4
     23c:	fa87a783          	lw	a5,-88(a5) # 3fa8 <SDCARD>
     240:	00600713          	li	a4,6
     244:	00e7a023          	sw	a4,0(a5)
     248:	00008067          	ret

0000024c <sdcard_send>:
     24c:	000047b7          	lui	a5,0x4
     250:	fa87a783          	lw	a5,-88(a5) # 3fa8 <SDCARD>
     254:	00655713          	srli	a4,a0,0x6
     258:	00277713          	andi	a4,a4,2
     25c:	00e7a023          	sw	a4,0(a5)
     260:	00176713          	ori	a4,a4,1
     264:	00e7a023          	sw	a4,0(a5)
     268:	00555713          	srli	a4,a0,0x5
     26c:	00277713          	andi	a4,a4,2
     270:	00e7a023          	sw	a4,0(a5)
     274:	00176713          	ori	a4,a4,1
     278:	00e7a023          	sw	a4,0(a5)
     27c:	00455713          	srli	a4,a0,0x4
     280:	00277713          	andi	a4,a4,2
     284:	00e7a023          	sw	a4,0(a5)
     288:	00176713          	ori	a4,a4,1
     28c:	00e7a023          	sw	a4,0(a5)
     290:	00355713          	srli	a4,a0,0x3
     294:	00277713          	andi	a4,a4,2
     298:	00e7a023          	sw	a4,0(a5)
     29c:	00176713          	ori	a4,a4,1
     2a0:	00e7a023          	sw	a4,0(a5)
     2a4:	00255713          	srli	a4,a0,0x2
     2a8:	00277713          	andi	a4,a4,2
     2ac:	00e7a023          	sw	a4,0(a5)
     2b0:	00176713          	ori	a4,a4,1
     2b4:	00e7a023          	sw	a4,0(a5)
     2b8:	00155713          	srli	a4,a0,0x1
     2bc:	00277713          	andi	a4,a4,2
     2c0:	00e7a023          	sw	a4,0(a5)
     2c4:	00176713          	ori	a4,a4,1
     2c8:	00e7a023          	sw	a4,0(a5)
     2cc:	00257713          	andi	a4,a0,2
     2d0:	00e7a023          	sw	a4,0(a5)
     2d4:	00151513          	slli	a0,a0,0x1
     2d8:	00176713          	ori	a4,a4,1
     2dc:	00e7a023          	sw	a4,0(a5)
     2e0:	00257513          	andi	a0,a0,2
     2e4:	00a7a023          	sw	a0,0(a5)
     2e8:	00156513          	ori	a0,a0,1
     2ec:	00a7a023          	sw	a0,0(a5)
     2f0:	00200713          	li	a4,2
     2f4:	00e7a023          	sw	a4,0(a5)
     2f8:	000047b7          	lui	a5,0x4
     2fc:	2d47a783          	lw	a5,724(a5) # 42d4 <sdcard_while_loading_callback>
     300:	00078067          	jr	a5

00000304 <sdcard_read>:
     304:	fd010113          	addi	sp,sp,-48
     308:	fff50793          	addi	a5,a0,-1
     30c:	01312e23          	sw	s3,28(sp)
     310:	00100993          	li	s3,1
     314:	00f999b3          	sll	s3,s3,a5
     318:	000047b7          	lui	a5,0x4
     31c:	01512a23          	sw	s5,20(sp)
     320:	fa87aa83          	lw	s5,-88(a5) # 3fa8 <SDCARD>
     324:	02812423          	sw	s0,40(sp)
     328:	02912223          	sw	s1,36(sp)
     32c:	03212023          	sw	s2,32(sp)
     330:	01412c23          	sw	s4,24(sp)
     334:	01612823          	sw	s6,16(sp)
     338:	01712623          	sw	s7,12(sp)
     33c:	01812423          	sw	s8,8(sp)
     340:	02112623          	sw	ra,44(sp)
     344:	00050493          	mv	s1,a0
     348:	00058a13          	mv	s4,a1
     34c:	0ff00413          	li	s0,255
     350:	00000913          	li	s2,0
     354:	00300b13          	li	s6,3
     358:	00200b93          	li	s7,2
     35c:	00004c37          	lui	s8,0x4
     360:	040a0063          	beqz	s4,3a0 <sdcard_read+0x9c>
     364:	0089f7b3          	and	a5,s3,s0
     368:	02079e63          	bnez	a5,3a4 <sdcard_read+0xa0>
     36c:	02c12083          	lw	ra,44(sp)
     370:	0ff47513          	zext.b	a0,s0
     374:	02812403          	lw	s0,40(sp)
     378:	02412483          	lw	s1,36(sp)
     37c:	02012903          	lw	s2,32(sp)
     380:	01c12983          	lw	s3,28(sp)
     384:	01812a03          	lw	s4,24(sp)
     388:	01412a83          	lw	s5,20(sp)
     38c:	01012b03          	lw	s6,16(sp)
     390:	00c12b83          	lw	s7,12(sp)
     394:	00812c03          	lw	s8,8(sp)
     398:	03010113          	addi	sp,sp,48
     39c:	00008067          	ret
     3a0:	fc9956e3          	bge	s2,s1,36c <sdcard_read+0x68>
     3a4:	016aa023          	sw	s6,0(s5)
     3a8:	017aa023          	sw	s7,0(s5)
     3ac:	000aa783          	lw	a5,0(s5)
     3b0:	00141413          	slli	s0,s0,0x1
     3b4:	00190913          	addi	s2,s2,1
     3b8:	00f46433          	or	s0,s0,a5
     3bc:	2d4c2783          	lw	a5,724(s8) # 42d4 <sdcard_while_loading_callback>
     3c0:	000780e7          	jalr	a5
     3c4:	f9dff06f          	j	360 <sdcard_read+0x5c>

000003c8 <sdcard_get>:
     3c8:	fe010113          	addi	sp,sp,-32
     3cc:	00112e23          	sw	ra,28(sp)
     3d0:	00812c23          	sw	s0,24(sp)
     3d4:	00912a23          	sw	s1,20(sp)
     3d8:	00050413          	mv	s0,a0
     3dc:	00b12623          	sw	a1,12(sp)
     3e0:	00000097          	auipc	ra,0x0
     3e4:	e18080e7          	jalr	-488(ra) # 1f8 <sdcard_select>
     3e8:	00c12583          	lw	a1,12(sp)
     3ec:	00040513          	mv	a0,s0
     3f0:	00100493          	li	s1,1
     3f4:	00000097          	auipc	ra,0x0
     3f8:	f10080e7          	jalr	-240(ra) # 304 <sdcard_read>
     3fc:	00345413          	srli	s0,s0,0x3
     400:	0284c463          	blt	s1,s0,428 <sdcard_get+0x60>
     404:	00a12623          	sw	a0,12(sp)
     408:	00000097          	auipc	ra,0x0
     40c:	e30080e7          	jalr	-464(ra) # 238 <sdcard_unselect>
     410:	01c12083          	lw	ra,28(sp)
     414:	01812403          	lw	s0,24(sp)
     418:	00c12503          	lw	a0,12(sp)
     41c:	01412483          	lw	s1,20(sp)
     420:	02010113          	addi	sp,sp,32
     424:	00008067          	ret
     428:	00000593          	li	a1,0
     42c:	00800513          	li	a0,8
     430:	00000097          	auipc	ra,0x0
     434:	ed4080e7          	jalr	-300(ra) # 304 <sdcard_read>
     438:	00148493          	addi	s1,s1,1
     43c:	fc5ff06f          	j	400 <sdcard_get+0x38>

00000440 <sdcard_cmd>:
     440:	ff010113          	addi	sp,sp,-16
     444:	00812423          	sw	s0,8(sp)
     448:	00912223          	sw	s1,4(sp)
     44c:	01212023          	sw	s2,0(sp)
     450:	00112623          	sw	ra,12(sp)
     454:	00050493          	mv	s1,a0
     458:	00000413          	li	s0,0
     45c:	00000097          	auipc	ra,0x0
     460:	d9c080e7          	jalr	-612(ra) # 1f8 <sdcard_select>
     464:	00600913          	li	s2,6
     468:	008487b3          	add	a5,s1,s0
     46c:	0007c503          	lbu	a0,0(a5)
     470:	00140413          	addi	s0,s0,1
     474:	00000097          	auipc	ra,0x0
     478:	dd8080e7          	jalr	-552(ra) # 24c <sdcard_send>
     47c:	ff2416e3          	bne	s0,s2,468 <sdcard_cmd+0x28>
     480:	00812403          	lw	s0,8(sp)
     484:	00c12083          	lw	ra,12(sp)
     488:	00412483          	lw	s1,4(sp)
     48c:	00012903          	lw	s2,0(sp)
     490:	01010113          	addi	sp,sp,16
     494:	00000317          	auipc	t1,0x0
     498:	da430067          	jr	-604(t1) # 238 <sdcard_unselect>

0000049c <sdcard_start_sector>:
     49c:	ff010113          	addi	sp,sp,-16
     4a0:	00112623          	sw	ra,12(sp)
     4a4:	00812423          	sw	s0,8(sp)
     4a8:	00050413          	mv	s0,a0
     4ac:	00000097          	auipc	ra,0x0
     4b0:	d4c080e7          	jalr	-692(ra) # 1f8 <sdcard_select>
     4b4:	05100513          	li	a0,81
     4b8:	00000097          	auipc	ra,0x0
     4bc:	d94080e7          	jalr	-620(ra) # 24c <sdcard_send>
     4c0:	01845513          	srli	a0,s0,0x18
     4c4:	00000097          	auipc	ra,0x0
     4c8:	d88080e7          	jalr	-632(ra) # 24c <sdcard_send>
     4cc:	41045513          	srai	a0,s0,0x10
     4d0:	0ff57513          	zext.b	a0,a0
     4d4:	00000097          	auipc	ra,0x0
     4d8:	d78080e7          	jalr	-648(ra) # 24c <sdcard_send>
     4dc:	40845513          	srai	a0,s0,0x8
     4e0:	0ff57513          	zext.b	a0,a0
     4e4:	00000097          	auipc	ra,0x0
     4e8:	d68080e7          	jalr	-664(ra) # 24c <sdcard_send>
     4ec:	0ff47513          	zext.b	a0,s0
     4f0:	00000097          	auipc	ra,0x0
     4f4:	d5c080e7          	jalr	-676(ra) # 24c <sdcard_send>
     4f8:	05500513          	li	a0,85
     4fc:	00000097          	auipc	ra,0x0
     500:	d50080e7          	jalr	-688(ra) # 24c <sdcard_send>
     504:	00000097          	auipc	ra,0x0
     508:	d34080e7          	jalr	-716(ra) # 238 <sdcard_unselect>
     50c:	00812403          	lw	s0,8(sp)
     510:	00c12083          	lw	ra,12(sp)
     514:	00100593          	li	a1,1
     518:	00800513          	li	a0,8
     51c:	01010113          	addi	sp,sp,16
     520:	00000317          	auipc	t1,0x0
     524:	ea830067          	jr	-344(t1) # 3c8 <sdcard_get>

00000528 <sdcard_read_sector>:
     528:	ff010113          	addi	sp,sp,-16
     52c:	00812423          	sw	s0,8(sp)
     530:	00112623          	sw	ra,12(sp)
     534:	00912223          	sw	s1,4(sp)
     538:	01212023          	sw	s2,0(sp)
     53c:	00058413          	mv	s0,a1
     540:	00000097          	auipc	ra,0x0
     544:	f5c080e7          	jalr	-164(ra) # 49c <sdcard_start_sector>
     548:	04051863          	bnez	a0,598 <sdcard_read_sector+0x70>
     54c:	00100593          	li	a1,1
     550:	00100513          	li	a0,1
     554:	00000097          	auipc	ra,0x0
     558:	e74080e7          	jalr	-396(ra) # 3c8 <sdcard_get>
     55c:	00000493          	li	s1,0
     560:	20000913          	li	s2,512
     564:	00000593          	li	a1,0
     568:	00800513          	li	a0,8
     56c:	00000097          	auipc	ra,0x0
     570:	e5c080e7          	jalr	-420(ra) # 3c8 <sdcard_get>
     574:	009407b3          	add	a5,s0,s1
     578:	00a78023          	sb	a0,0(a5)
     57c:	00148493          	addi	s1,s1,1
     580:	ff2492e3          	bne	s1,s2,564 <sdcard_read_sector+0x3c>
     584:	00100593          	li	a1,1
     588:	01000513          	li	a0,16
     58c:	20040413          	addi	s0,s0,512
     590:	00000097          	auipc	ra,0x0
     594:	e38080e7          	jalr	-456(ra) # 3c8 <sdcard_get>
     598:	00c12083          	lw	ra,12(sp)
     59c:	00040513          	mv	a0,s0
     5a0:	00812403          	lw	s0,8(sp)
     5a4:	00412483          	lw	s1,4(sp)
     5a8:	00012903          	lw	s2,0(sp)
     5ac:	01010113          	addi	sp,sp,16
     5b0:	00008067          	ret

000005b4 <sdcard_preinit>:
     5b4:	ff010113          	addi	sp,sp,-16
     5b8:	000047b7          	lui	a5,0x4
     5bc:	00812423          	sw	s0,8(sp)
     5c0:	fa87a403          	lw	s0,-88(a5) # 3fa8 <SDCARD>
     5c4:	00112623          	sw	ra,12(sp)
     5c8:	00600793          	li	a5,6
     5cc:	01313537          	lui	a0,0x1313
     5d0:	00f42023          	sw	a5,0(s0)
     5d4:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     5d8:	00000097          	auipc	ra,0x0
     5dc:	c08080e7          	jalr	-1016(ra) # 1e0 <pause>
     5e0:	0a000793          	li	a5,160
     5e4:	00000713          	li	a4,0
     5e8:	00676693          	ori	a3,a4,6
     5ec:	00d42023          	sw	a3,0(s0)
     5f0:	fff78793          	addi	a5,a5,-1
     5f4:	00174713          	xori	a4,a4,1
     5f8:	fe0798e3          	bnez	a5,5e8 <sdcard_preinit+0x34>
     5fc:	00600793          	li	a5,6
     600:	00c12083          	lw	ra,12(sp)
     604:	00f42023          	sw	a5,0(s0)
     608:	00812403          	lw	s0,8(sp)
     60c:	01010113          	addi	sp,sp,16
     610:	00008067          	ret

00000614 <sdcard_init>:
     614:	000007b7          	lui	a5,0x0
     618:	00004537          	lui	a0,0x4
     61c:	fe010113          	addi	sp,sp,-32
     620:	00004737          	lui	a4,0x4
     624:	1f478793          	addi	a5,a5,500 # 1f4 <sdcard_idle>
     628:	02450513          	addi	a0,a0,36 # 4024 <OLED+0x74>
     62c:	00112e23          	sw	ra,28(sp)
     630:	00812c23          	sw	s0,24(sp)
     634:	01212823          	sw	s2,16(sp)
     638:	01312623          	sw	s3,12(sp)
     63c:	2cf72a23          	sw	a5,724(a4) # 42d4 <sdcard_while_loading_callback>
     640:	00912a23          	sw	s1,20(sp)
     644:	01412423          	sw	s4,8(sp)
     648:	01313437          	lui	s0,0x1313
     64c:	00001097          	auipc	ra,0x1
     650:	870080e7          	jalr	-1936(ra) # ebc <printf>
     654:	00000097          	auipc	ra,0x0
     658:	670080e7          	jalr	1648(ra) # cc4 <display_refresh>
     65c:	00004937          	lui	s2,0x4
     660:	0ff00993          	li	s3,255
     664:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     668:	00000097          	auipc	ra,0x0
     66c:	f4c080e7          	jalr	-180(ra) # 5b4 <sdcard_preinit>
     670:	fa090513          	addi	a0,s2,-96 # 3fa0 <cmd0>
     674:	00000097          	auipc	ra,0x0
     678:	dcc080e7          	jalr	-564(ra) # 440 <sdcard_cmd>
     67c:	00100593          	li	a1,1
     680:	00800513          	li	a0,8
     684:	00000097          	auipc	ra,0x0
     688:	d44080e7          	jalr	-700(ra) # 3c8 <sdcard_get>
     68c:	00050493          	mv	s1,a0
     690:	00000097          	auipc	ra,0x0
     694:	b7c080e7          	jalr	-1156(ra) # 20c <sdcard_ponder>
     698:	01349a63          	bne	s1,s3,6ac <sdcard_init+0x98>
     69c:	00040513          	mv	a0,s0
     6a0:	00000097          	auipc	ra,0x0
     6a4:	b40080e7          	jalr	-1216(ra) # 1e0 <pause>
     6a8:	fc1ff06f          	j	668 <sdcard_init+0x54>
     6ac:	00004537          	lui	a0,0x4
     6b0:	03450513          	addi	a0,a0,52 # 4034 <OLED+0x84>
     6b4:	00001097          	auipc	ra,0x1
     6b8:	808080e7          	jalr	-2040(ra) # ebc <printf>
     6bc:	00000097          	auipc	ra,0x0
     6c0:	608080e7          	jalr	1544(ra) # cc4 <display_refresh>
     6c4:	00004537          	lui	a0,0x4
     6c8:	f9850513          	addi	a0,a0,-104 # 3f98 <cmd8>
     6cc:	00000097          	auipc	ra,0x0
     6d0:	d74080e7          	jalr	-652(ra) # 440 <sdcard_cmd>
     6d4:	00100593          	li	a1,1
     6d8:	02800513          	li	a0,40
     6dc:	00000097          	auipc	ra,0x0
     6e0:	cec080e7          	jalr	-788(ra) # 3c8 <sdcard_get>
     6e4:	001e84b7          	lui	s1,0x1e8
     6e8:	00000097          	auipc	ra,0x0
     6ec:	b24080e7          	jalr	-1244(ra) # 20c <sdcard_ponder>
     6f0:	00004937          	lui	s2,0x4
     6f4:	000049b7          	lui	s3,0x4
     6f8:	00004a37          	lui	s4,0x4
     6fc:	48048493          	addi	s1,s1,1152 # 1e8480 <__stacktop+0x1d8480>
     700:	f9090513          	addi	a0,s2,-112 # 3f90 <cmd55>
     704:	00000097          	auipc	ra,0x0
     708:	d3c080e7          	jalr	-708(ra) # 440 <sdcard_cmd>
     70c:	00100593          	li	a1,1
     710:	00800513          	li	a0,8
     714:	00000097          	auipc	ra,0x0
     718:	cb4080e7          	jalr	-844(ra) # 3c8 <sdcard_get>
     71c:	00000097          	auipc	ra,0x0
     720:	af0080e7          	jalr	-1296(ra) # 20c <sdcard_ponder>
     724:	f8898513          	addi	a0,s3,-120 # 3f88 <acmd41>
     728:	00000097          	auipc	ra,0x0
     72c:	d18080e7          	jalr	-744(ra) # 440 <sdcard_cmd>
     730:	00100593          	li	a1,1
     734:	00800513          	li	a0,8
     738:	00000097          	auipc	ra,0x0
     73c:	c90080e7          	jalr	-880(ra) # 3c8 <sdcard_get>
     740:	00050413          	mv	s0,a0
     744:	00000097          	auipc	ra,0x0
     748:	ac8080e7          	jalr	-1336(ra) # 20c <sdcard_ponder>
     74c:	00040593          	mv	a1,s0
     750:	044a0513          	addi	a0,s4,68 # 4044 <OLED+0x94>
     754:	00000097          	auipc	ra,0x0
     758:	768080e7          	jalr	1896(ra) # ebc <printf>
     75c:	00000097          	auipc	ra,0x0
     760:	568080e7          	jalr	1384(ra) # cc4 <display_refresh>
     764:	00040a63          	beqz	s0,778 <sdcard_init+0x164>
     768:	00048513          	mv	a0,s1
     76c:	00000097          	auipc	ra,0x0
     770:	a74080e7          	jalr	-1420(ra) # 1e0 <pause>
     774:	f8dff06f          	j	700 <sdcard_init+0xec>
     778:	00004537          	lui	a0,0x4
     77c:	f8050513          	addi	a0,a0,-128 # 3f80 <cmd16>
     780:	00000097          	auipc	ra,0x0
     784:	cc0080e7          	jalr	-832(ra) # 440 <sdcard_cmd>
     788:	00100593          	li	a1,1
     78c:	00800513          	li	a0,8
     790:	00000097          	auipc	ra,0x0
     794:	c38080e7          	jalr	-968(ra) # 3c8 <sdcard_get>
     798:	00050593          	mv	a1,a0
     79c:	00004537          	lui	a0,0x4
     7a0:	05c50513          	addi	a0,a0,92 # 405c <OLED+0xac>
     7a4:	00000097          	auipc	ra,0x0
     7a8:	718080e7          	jalr	1816(ra) # ebc <printf>
     7ac:	00000097          	auipc	ra,0x0
     7b0:	518080e7          	jalr	1304(ra) # cc4 <display_refresh>
     7b4:	01812403          	lw	s0,24(sp)
     7b8:	01c12083          	lw	ra,28(sp)
     7bc:	01412483          	lw	s1,20(sp)
     7c0:	01012903          	lw	s2,16(sp)
     7c4:	00c12983          	lw	s3,12(sp)
     7c8:	00812a03          	lw	s4,8(sp)
     7cc:	02010113          	addi	sp,sp,32
     7d0:	00000317          	auipc	t1,0x0
     7d4:	a3c30067          	jr	-1476(t1) # 20c <sdcard_ponder>

000007d8 <sdcard_readsector>:
     7d8:	04060663          	beqz	a2,824 <sdcard_readsector+0x4c>
     7dc:	ff010113          	addi	sp,sp,-16
     7e0:	00812423          	sw	s0,8(sp)
     7e4:	00912223          	sw	s1,4(sp)
     7e8:	00112623          	sw	ra,12(sp)
     7ec:	00050413          	mv	s0,a0
     7f0:	00a604b3          	add	s1,a2,a0
     7f4:	00040513          	mv	a0,s0
     7f8:	00000097          	auipc	ra,0x0
     7fc:	d30080e7          	jalr	-720(ra) # 528 <sdcard_read_sector>
     800:	00140413          	addi	s0,s0,1
     804:	00050593          	mv	a1,a0
     808:	fe8496e3          	bne	s1,s0,7f4 <sdcard_readsector+0x1c>
     80c:	00c12083          	lw	ra,12(sp)
     810:	00812403          	lw	s0,8(sp)
     814:	00412483          	lw	s1,4(sp)
     818:	00100513          	li	a0,1
     81c:	01010113          	addi	sp,sp,16
     820:	00008067          	ret
     824:	00000513          	li	a0,0
     828:	00008067          	ret

0000082c <sdcard_writesector>:
     82c:	00000513          	li	a0,0
     830:	00008067          	ret

00000834 <__divsi3>:
     834:	06054063          	bltz	a0,894 <__umodsi3+0x10>
     838:	0605c663          	bltz	a1,8a4 <__umodsi3+0x20>

0000083c <__udivsi3>:
     83c:	00058613          	mv	a2,a1
     840:	00050593          	mv	a1,a0
     844:	fff00513          	li	a0,-1
     848:	02060c63          	beqz	a2,880 <__udivsi3+0x44>
     84c:	00100693          	li	a3,1
     850:	00b67a63          	bgeu	a2,a1,864 <__udivsi3+0x28>
     854:	00c05863          	blez	a2,864 <__udivsi3+0x28>
     858:	00161613          	slli	a2,a2,0x1
     85c:	00169693          	slli	a3,a3,0x1
     860:	feb66ae3          	bltu	a2,a1,854 <__udivsi3+0x18>
     864:	00000513          	li	a0,0
     868:	00c5e663          	bltu	a1,a2,874 <__udivsi3+0x38>
     86c:	40c585b3          	sub	a1,a1,a2
     870:	00d56533          	or	a0,a0,a3
     874:	0016d693          	srli	a3,a3,0x1
     878:	00165613          	srli	a2,a2,0x1
     87c:	fe0696e3          	bnez	a3,868 <__udivsi3+0x2c>
     880:	00008067          	ret

00000884 <__umodsi3>:
     884:	00008293          	mv	t0,ra
     888:	fb5ff0ef          	jal	83c <__udivsi3>
     88c:	00058513          	mv	a0,a1
     890:	00028067          	jr	t0
     894:	40a00533          	neg	a0,a0
     898:	0005d863          	bgez	a1,8a8 <__umodsi3+0x24>
     89c:	40b005b3          	neg	a1,a1
     8a0:	f95ff06f          	j	834 <__divsi3>
     8a4:	40b005b3          	neg	a1,a1
     8a8:	00008293          	mv	t0,ra
     8ac:	f89ff0ef          	jal	834 <__divsi3>
     8b0:	40a00533          	neg	a0,a0
     8b4:	00028067          	jr	t0

000008b8 <__modsi3>:
     8b8:	00008293          	mv	t0,ra
     8bc:	0005ca63          	bltz	a1,8d0 <__modsi3+0x18>
     8c0:	00054c63          	bltz	a0,8d8 <__modsi3+0x20>
     8c4:	f79ff0ef          	jal	83c <__udivsi3>
     8c8:	00058513          	mv	a0,a1
     8cc:	00028067          	jr	t0
     8d0:	40b005b3          	neg	a1,a1
     8d4:	fe0558e3          	bgez	a0,8c4 <__modsi3+0xc>
     8d8:	40a00533          	neg	a0,a0
     8dc:	f61ff0ef          	jal	83c <__udivsi3>
     8e0:	40b00533          	neg	a0,a1
     8e4:	00028067          	jr	t0

000008e8 <memset>:
     8e8:	00c50633          	add	a2,a0,a2
     8ec:	00050793          	mv	a5,a0
     8f0:	00c79463          	bne	a5,a2,8f8 <memset+0x10>
     8f4:	00008067          	ret
     8f8:	00178793          	addi	a5,a5,1
     8fc:	feb78fa3          	sb	a1,-1(a5)
     900:	ff1ff06f          	j	8f0 <memset+0x8>

00000904 <memcpy>:
     904:	00000793          	li	a5,0
     908:	00c79463          	bne	a5,a2,910 <memcpy+0xc>
     90c:	00008067          	ret
     910:	00f58733          	add	a4,a1,a5
     914:	00074683          	lbu	a3,0(a4)
     918:	00f50733          	add	a4,a0,a5
     91c:	00178793          	addi	a5,a5,1
     920:	00d70023          	sb	a3,0(a4)
     924:	fe5ff06f          	j	908 <memcpy+0x4>

00000928 <strlen>:
     928:	00050793          	mv	a5,a0
     92c:	00000513          	li	a0,0
     930:	00a78733          	add	a4,a5,a0
     934:	00074703          	lbu	a4,0(a4)
     938:	00071463          	bnez	a4,940 <strlen+0x18>
     93c:	00008067          	ret
     940:	00150513          	addi	a0,a0,1
     944:	fedff06f          	j	930 <strlen+0x8>

00000948 <strncmp>:
     948:	00000793          	li	a5,0
     94c:	00c79663          	bne	a5,a2,958 <strncmp+0x10>
     950:	00000513          	li	a0,0
     954:	00008067          	ret
     958:	00f50733          	add	a4,a0,a5
     95c:	00074683          	lbu	a3,0(a4)
     960:	00f58733          	add	a4,a1,a5
     964:	00074703          	lbu	a4,0(a4)
     968:	00e6e863          	bltu	a3,a4,978 <strncmp+0x30>
     96c:	00d76a63          	bltu	a4,a3,980 <strncmp+0x38>
     970:	00178793          	addi	a5,a5,1
     974:	fd9ff06f          	j	94c <strncmp+0x4>
     978:	fff00513          	li	a0,-1
     97c:	00008067          	ret
     980:	00100513          	li	a0,1
     984:	00008067          	ret

00000988 <oled_wait>:
     988:	00000013          	nop
     98c:	00000013          	nop
     990:	00000013          	nop
     994:	00000013          	nop
     998:	00000013          	nop
     99c:	00000013          	nop
     9a0:	00000013          	nop
     9a4:	00008067          	ret

000009a8 <oled_init_mode>:
     9a8:	000047b7          	lui	a5,0x4
     9ac:	fac7a703          	lw	a4,-84(a5) # 3fac <OLED_RST>
     9b0:	ff010113          	addi	sp,sp,-16
     9b4:	00912223          	sw	s1,4(sp)
     9b8:	00112623          	sw	ra,12(sp)
     9bc:	00812423          	sw	s0,8(sp)
     9c0:	00072023          	sw	zero,0(a4)
     9c4:	00050493          	mv	s1,a0
     9c8:	00040737          	lui	a4,0x40
     9cc:	00000013          	nop
     9d0:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     9d4:	fe071ce3          	bnez	a4,9cc <oled_init_mode+0x24>
     9d8:	fac7a703          	lw	a4,-84(a5)
     9dc:	00100693          	li	a3,1
     9e0:	00d72023          	sw	a3,0(a4)
     9e4:	00040737          	lui	a4,0x40
     9e8:	00000013          	nop
     9ec:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     9f0:	fe071ce3          	bnez	a4,9e8 <oled_init_mode+0x40>
     9f4:	fac7a783          	lw	a5,-84(a5)
     9f8:	0007a023          	sw	zero,0(a5)
     9fc:	000407b7          	lui	a5,0x40
     a00:	00000013          	nop
     a04:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     a08:	fe079ce3          	bnez	a5,a00 <oled_init_mode+0x58>
     a0c:	00004737          	lui	a4,0x4
     a10:	fb072783          	lw	a5,-80(a4) # 3fb0 <OLED>
     a14:	2af00693          	li	a3,687
     a18:	00d7a023          	sw	a3,0(a5)
     a1c:	000407b7          	lui	a5,0x40
     a20:	00000013          	nop
     a24:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     a28:	fe079ce3          	bnez	a5,a20 <oled_init_mode+0x78>
     a2c:	fb072403          	lw	s0,-80(a4)
     a30:	2a000793          	li	a5,672
     a34:	00f42023          	sw	a5,0(s0)
     a38:	00000097          	auipc	ra,0x0
     a3c:	f50080e7          	jalr	-176(ra) # 988 <oled_wait>
     a40:	4a000793          	li	a5,1184
     a44:	00048463          	beqz	s1,a4c <oled_init_mode+0xa4>
     a48:	42000793          	li	a5,1056
     a4c:	00f42023          	sw	a5,0(s0)
     a50:	00000097          	auipc	ra,0x0
     a54:	f38080e7          	jalr	-200(ra) # 988 <oled_wait>
     a58:	2fd00793          	li	a5,765
     a5c:	00f42023          	sw	a5,0(s0)
     a60:	00000097          	auipc	ra,0x0
     a64:	f28080e7          	jalr	-216(ra) # 988 <oled_wait>
     a68:	4b100793          	li	a5,1201
     a6c:	00f42023          	sw	a5,0(s0)
     a70:	00000097          	auipc	ra,0x0
     a74:	f18080e7          	jalr	-232(ra) # 988 <oled_wait>
     a78:	2a200793          	li	a5,674
     a7c:	00f42023          	sw	a5,0(s0)
     a80:	00000097          	auipc	ra,0x0
     a84:	f08080e7          	jalr	-248(ra) # 988 <oled_wait>
     a88:	40000793          	li	a5,1024
     a8c:	00f42023          	sw	a5,0(s0)
     a90:	00812403          	lw	s0,8(sp)
     a94:	00c12083          	lw	ra,12(sp)
     a98:	00412483          	lw	s1,4(sp)
     a9c:	01010113          	addi	sp,sp,16
     aa0:	00000317          	auipc	t1,0x0
     aa4:	ee830067          	jr	-280(t1) # 988 <oled_wait>

00000aa8 <oled_init>:
     aa8:	00000513          	li	a0,0
     aac:	00000317          	auipc	t1,0x0
     ab0:	efc30067          	jr	-260(t1) # 9a8 <oled_init_mode>

00000ab4 <oled_fullscreen>:
     ab4:	ff010113          	addi	sp,sp,-16
     ab8:	000047b7          	lui	a5,0x4
     abc:	00812423          	sw	s0,8(sp)
     ac0:	fb07a403          	lw	s0,-80(a5) # 3fb0 <OLED>
     ac4:	00112623          	sw	ra,12(sp)
     ac8:	00912223          	sw	s1,4(sp)
     acc:	01212023          	sw	s2,0(sp)
     ad0:	21500793          	li	a5,533
     ad4:	00f42023          	sw	a5,0(s0)
     ad8:	40000913          	li	s2,1024
     adc:	00000097          	auipc	ra,0x0
     ae0:	eac080e7          	jalr	-340(ra) # 988 <oled_wait>
     ae4:	47f00493          	li	s1,1151
     ae8:	01242023          	sw	s2,0(s0)
     aec:	00000097          	auipc	ra,0x0
     af0:	e9c080e7          	jalr	-356(ra) # 988 <oled_wait>
     af4:	00942023          	sw	s1,0(s0)
     af8:	00000097          	auipc	ra,0x0
     afc:	e90080e7          	jalr	-368(ra) # 988 <oled_wait>
     b00:	27500793          	li	a5,629
     b04:	00f42023          	sw	a5,0(s0)
     b08:	00000097          	auipc	ra,0x0
     b0c:	e80080e7          	jalr	-384(ra) # 988 <oled_wait>
     b10:	01242023          	sw	s2,0(s0)
     b14:	00000097          	auipc	ra,0x0
     b18:	e74080e7          	jalr	-396(ra) # 988 <oled_wait>
     b1c:	00942023          	sw	s1,0(s0)
     b20:	00000097          	auipc	ra,0x0
     b24:	e68080e7          	jalr	-408(ra) # 988 <oled_wait>
     b28:	25c00793          	li	a5,604
     b2c:	00f42023          	sw	a5,0(s0)
     b30:	00812403          	lw	s0,8(sp)
     b34:	00c12083          	lw	ra,12(sp)
     b38:	00412483          	lw	s1,4(sp)
     b3c:	00012903          	lw	s2,0(sp)
     b40:	01010113          	addi	sp,sp,16
     b44:	00000317          	auipc	t1,0x0
     b48:	e4430067          	jr	-444(t1) # 988 <oled_wait>

00000b4c <oled_wait>:
     b4c:	00000013          	nop
     b50:	00000013          	nop
     b54:	00000013          	nop
     b58:	00000013          	nop
     b5c:	00000013          	nop
     b60:	00000013          	nop
     b64:	00000013          	nop
     b68:	00008067          	ret

00000b6c <display_framebuffer>:
     b6c:	00004537          	lui	a0,0x4
     b70:	30050513          	addi	a0,a0,768 # 4300 <framebuffer>
     b74:	00008067          	ret

00000b78 <display_set_cursor>:
     b78:	000047b7          	lui	a5,0x4
     b7c:	2ea7a023          	sw	a0,736(a5) # 42e0 <cursor_x>
     b80:	000047b7          	lui	a5,0x4
     b84:	2cb7ae23          	sw	a1,732(a5) # 42dc <cursor_y>
     b88:	00008067          	ret

00000b8c <display_set_front_back_color>:
     b8c:	000047b7          	lui	a5,0x4
     b90:	2ca78ca3          	sb	a0,729(a5) # 42d9 <front_color>
     b94:	000047b7          	lui	a5,0x4
     b98:	2cb78c23          	sb	a1,728(a5) # 42d8 <back_color>
     b9c:	00008067          	ret

00000ba0 <display_putchar>:
     ba0:	00a00793          	li	a5,10
     ba4:	000045b7          	lui	a1,0x4
     ba8:	02f51663          	bne	a0,a5,bd4 <display_putchar+0x34>
     bac:	00004737          	lui	a4,0x4
     bb0:	2dc72783          	lw	a5,732(a4) # 42dc <cursor_y>
     bb4:	2e05a023          	sw	zero,736(a1) # 42e0 <cursor_x>
     bb8:	00878793          	addi	a5,a5,8
     bbc:	2cf72e23          	sw	a5,732(a4)
     bc0:	07f00713          	li	a4,127
     bc4:	00f75663          	bge	a4,a5,bd0 <display_putchar+0x30>
     bc8:	000047b7          	lui	a5,0x4
     bcc:	2c07ae23          	sw	zero,732(a5) # 42dc <cursor_y>
     bd0:	00008067          	ret
     bd4:	ff010113          	addi	sp,sp,-16
     bd8:	00812623          	sw	s0,12(sp)
     bdc:	00912423          	sw	s1,8(sp)
     be0:	01212223          	sw	s2,4(sp)
     be4:	01f00713          	li	a4,31
     be8:	2e05a783          	lw	a5,736(a1)
     bec:	08a75863          	bge	a4,a0,c7c <display_putchar+0xdc>
     bf0:	00004737          	lui	a4,0x4
     bf4:	2d874383          	lbu	t2,728(a4) # 42d8 <back_color>
     bf8:	00004737          	lui	a4,0x4
     bfc:	2d974403          	lbu	s0,729(a4) # 42d9 <front_color>
     c00:	00004737          	lui	a4,0x4
     c04:	2dc72f03          	lw	t5,732(a4) # 42dc <cursor_y>
     c08:	00251693          	slli	a3,a0,0x2
     c0c:	00004737          	lui	a4,0x4
     c10:	00a686b3          	add	a3,a3,a0
     c14:	0c070713          	addi	a4,a4,192 # 40c0 <font>
     c18:	00779e13          	slli	t3,a5,0x7
     c1c:	00004837          	lui	a6,0x4
     c20:	00e686b3          	add	a3,a3,a4
     c24:	280e0493          	addi	s1,t3,640
     c28:	00000613          	li	a2,0
     c2c:	00100293          	li	t0,1
     c30:	30080813          	addi	a6,a6,768 # 4300 <framebuffer>
     c34:	00800913          	li	s2,8
     c38:	00cf0733          	add	a4,t5,a2
     c3c:	00c29fb3          	sll	t6,t0,a2
     c40:	000e0513          	mv	a0,t3
     c44:	00068893          	mv	a7,a3
     c48:	00e80733          	add	a4,a6,a4
     c4c:	f608c303          	lbu	t1,-160(a7)
     c50:	00040e93          	mv	t4,s0
     c54:	01f37333          	and	t1,t1,t6
     c58:	00031463          	bnez	t1,c60 <display_putchar+0xc0>
     c5c:	00038e93          	mv	t4,t2
     c60:	00a70333          	add	t1,a4,a0
     c64:	01d30023          	sb	t4,0(t1)
     c68:	08050513          	addi	a0,a0,128
     c6c:	00188893          	addi	a7,a7,1
     c70:	fc951ee3          	bne	a0,s1,c4c <display_putchar+0xac>
     c74:	00160613          	addi	a2,a2,1 # 4001 <OLED+0x51>
     c78:	fd2610e3          	bne	a2,s2,c38 <display_putchar+0x98>
     c7c:	00578793          	addi	a5,a5,5
     c80:	07f00713          	li	a4,127
     c84:	00f74663          	blt	a4,a5,c90 <display_putchar+0xf0>
     c88:	2ef5a023          	sw	a5,736(a1)
     c8c:	0240006f          	j	cb0 <display_putchar+0x110>
     c90:	000046b7          	lui	a3,0x4
     c94:	2dc6a783          	lw	a5,732(a3) # 42dc <cursor_y>
     c98:	2e05a023          	sw	zero,736(a1)
     c9c:	00878793          	addi	a5,a5,8
     ca0:	2cf6ae23          	sw	a5,732(a3)
     ca4:	00f75663          	bge	a4,a5,cb0 <display_putchar+0x110>
     ca8:	000047b7          	lui	a5,0x4
     cac:	2c07ae23          	sw	zero,732(a5) # 42dc <cursor_y>
     cb0:	00c12403          	lw	s0,12(sp)
     cb4:	00812483          	lw	s1,8(sp)
     cb8:	00412903          	lw	s2,4(sp)
     cbc:	01010113          	addi	sp,sp,16
     cc0:	00008067          	ret

00000cc4 <display_refresh>:
     cc4:	fe010113          	addi	sp,sp,-32
     cc8:	000047b7          	lui	a5,0x4
     ccc:	01212823          	sw	s2,16(sp)
     cd0:	fb07a903          	lw	s2,-80(a5) # 3fb0 <OLED>
     cd4:	01312623          	sw	s3,12(sp)
     cd8:	000049b7          	lui	s3,0x4
     cdc:	00912a23          	sw	s1,20(sp)
     ce0:	01412423          	sw	s4,8(sp)
     ce4:	00112e23          	sw	ra,28(sp)
     ce8:	00812c23          	sw	s0,24(sp)
     cec:	00000493          	li	s1,0
     cf0:	30098993          	addi	s3,s3,768 # 4300 <framebuffer>
     cf4:	00004a37          	lui	s4,0x4
     cf8:	013487b3          	add	a5,s1,s3
     cfc:	0007c403          	lbu	s0,0(a5)
     d00:	00148493          	addi	s1,s1,1
     d04:	00245413          	srli	s0,s0,0x2
     d08:	40046413          	ori	s0,s0,1024
     d0c:	00892023          	sw	s0,0(s2)
     d10:	00000097          	auipc	ra,0x0
     d14:	e3c080e7          	jalr	-452(ra) # b4c <oled_wait>
     d18:	00892023          	sw	s0,0(s2)
     d1c:	00000097          	auipc	ra,0x0
     d20:	e30080e7          	jalr	-464(ra) # b4c <oled_wait>
     d24:	00892023          	sw	s0,0(s2)
     d28:	00000097          	auipc	ra,0x0
     d2c:	e24080e7          	jalr	-476(ra) # b4c <oled_wait>
     d30:	fd4494e3          	bne	s1,s4,cf8 <display_refresh+0x34>
     d34:	01c12083          	lw	ra,28(sp)
     d38:	01812403          	lw	s0,24(sp)
     d3c:	01412483          	lw	s1,20(sp)
     d40:	01012903          	lw	s2,16(sp)
     d44:	00c12983          	lw	s3,12(sp)
     d48:	00812a03          	lw	s4,8(sp)
     d4c:	02010113          	addi	sp,sp,32
     d50:	00008067          	ret

00000d54 <print_string>:
     d54:	ff010113          	addi	sp,sp,-16
     d58:	00812423          	sw	s0,8(sp)
     d5c:	00912223          	sw	s1,4(sp)
     d60:	00112623          	sw	ra,12(sp)
     d64:	00050413          	mv	s0,a0
     d68:	000044b7          	lui	s1,0x4
     d6c:	00044503          	lbu	a0,0(s0)
     d70:	00051c63          	bnez	a0,d88 <print_string+0x34>
     d74:	00c12083          	lw	ra,12(sp)
     d78:	00812403          	lw	s0,8(sp)
     d7c:	00412483          	lw	s1,4(sp)
     d80:	01010113          	addi	sp,sp,16
     d84:	00008067          	ret
     d88:	2e44a783          	lw	a5,740(s1) # 42e4 <f_putchar>
     d8c:	00140413          	addi	s0,s0,1
     d90:	000780e7          	jalr	a5
     d94:	fd9ff06f          	j	d6c <print_string+0x18>

00000d98 <print_dec>:
     d98:	ef010113          	addi	sp,sp,-272
     d9c:	10812423          	sw	s0,264(sp)
     da0:	10912223          	sw	s1,260(sp)
     da4:	10112623          	sw	ra,268(sp)
     da8:	11212023          	sw	s2,256(sp)
     dac:	00050413          	mv	s0,a0
     db0:	000044b7          	lui	s1,0x4
     db4:	08045063          	bgez	s0,e34 <print_dec+0x9c>
     db8:	2e44a783          	lw	a5,740(s1) # 42e4 <f_putchar>
     dbc:	02d00513          	li	a0,45
     dc0:	40800433          	neg	s0,s0
     dc4:	000780e7          	jalr	a5
     dc8:	fedff06f          	j	db4 <print_dec+0x1c>
     dcc:	00040513          	mv	a0,s0
     dd0:	00a00593          	li	a1,10
     dd4:	00000097          	auipc	ra,0x0
     dd8:	a60080e7          	jalr	-1440(ra) # 834 <__divsi3>
     ddc:	00251793          	slli	a5,a0,0x2
     de0:	00f507b3          	add	a5,a0,a5
     de4:	00179793          	slli	a5,a5,0x1
     de8:	40f40433          	sub	s0,s0,a5
     dec:	00148493          	addi	s1,s1,1
     df0:	fe848fa3          	sb	s0,-1(s1)
     df4:	00050413          	mv	s0,a0
     df8:	fc041ae3          	bnez	s0,dcc <print_dec+0x34>
     dfc:	fd2488e3          	beq	s1,s2,dcc <print_dec+0x34>
     e00:	00004437          	lui	s0,0x4
     e04:	fff4c503          	lbu	a0,-1(s1)
     e08:	2e442783          	lw	a5,740(s0) # 42e4 <f_putchar>
     e0c:	fff48493          	addi	s1,s1,-1
     e10:	03050513          	addi	a0,a0,48
     e14:	000780e7          	jalr	a5
     e18:	ff2496e3          	bne	s1,s2,e04 <print_dec+0x6c>
     e1c:	10c12083          	lw	ra,268(sp)
     e20:	10812403          	lw	s0,264(sp)
     e24:	10412483          	lw	s1,260(sp)
     e28:	10012903          	lw	s2,256(sp)
     e2c:	11010113          	addi	sp,sp,272
     e30:	00008067          	ret
     e34:	00010493          	mv	s1,sp
     e38:	00048913          	mv	s2,s1
     e3c:	fbdff06f          	j	df8 <print_dec+0x60>

00000e40 <print_hex_digits>:
     e40:	fe010113          	addi	sp,sp,-32
     e44:	00812c23          	sw	s0,24(sp)
     e48:	01212823          	sw	s2,16(sp)
     e4c:	fff58413          	addi	s0,a1,-1
     e50:	00004937          	lui	s2,0x4
     e54:	00912a23          	sw	s1,20(sp)
     e58:	01312623          	sw	s3,12(sp)
     e5c:	00112e23          	sw	ra,28(sp)
     e60:	00050493          	mv	s1,a0
     e64:	00241413          	slli	s0,s0,0x2
     e68:	07890913          	addi	s2,s2,120 # 4078 <OLED+0xc8>
     e6c:	000049b7          	lui	s3,0x4
     e70:	02045063          	bgez	s0,e90 <print_hex_digits+0x50>
     e74:	01c12083          	lw	ra,28(sp)
     e78:	01812403          	lw	s0,24(sp)
     e7c:	01412483          	lw	s1,20(sp)
     e80:	01012903          	lw	s2,16(sp)
     e84:	00c12983          	lw	s3,12(sp)
     e88:	02010113          	addi	sp,sp,32
     e8c:	00008067          	ret
     e90:	0084d7b3          	srl	a5,s1,s0
     e94:	00f7f793          	andi	a5,a5,15
     e98:	00f907b3          	add	a5,s2,a5
     e9c:	2e49a703          	lw	a4,740(s3) # 42e4 <f_putchar>
     ea0:	0007c503          	lbu	a0,0(a5)
     ea4:	ffc40413          	addi	s0,s0,-4
     ea8:	000700e7          	jalr	a4
     eac:	fc5ff06f          	j	e70 <print_hex_digits+0x30>

00000eb0 <print_hex>:
     eb0:	00800593          	li	a1,8
     eb4:	00000317          	auipc	t1,0x0
     eb8:	f8c30067          	jr	-116(t1) # e40 <print_hex_digits>

00000ebc <printf>:
     ebc:	fb010113          	addi	sp,sp,-80
     ec0:	04f12223          	sw	a5,68(sp)
     ec4:	03410793          	addi	a5,sp,52
     ec8:	02812423          	sw	s0,40(sp)
     ecc:	02912223          	sw	s1,36(sp)
     ed0:	03212023          	sw	s2,32(sp)
     ed4:	01312e23          	sw	s3,28(sp)
     ed8:	01412c23          	sw	s4,24(sp)
     edc:	01512a23          	sw	s5,20(sp)
     ee0:	01612823          	sw	s6,16(sp)
     ee4:	02112623          	sw	ra,44(sp)
     ee8:	00050413          	mv	s0,a0
     eec:	02b12a23          	sw	a1,52(sp)
     ef0:	02c12c23          	sw	a2,56(sp)
     ef4:	02d12e23          	sw	a3,60(sp)
     ef8:	04e12023          	sw	a4,64(sp)
     efc:	05012423          	sw	a6,72(sp)
     f00:	05112623          	sw	a7,76(sp)
     f04:	00f12623          	sw	a5,12(sp)
     f08:	02500913          	li	s2,37
     f0c:	000044b7          	lui	s1,0x4
     f10:	07300993          	li	s3,115
     f14:	07800a13          	li	s4,120
     f18:	06400a93          	li	s5,100
     f1c:	06300b13          	li	s6,99
     f20:	00044503          	lbu	a0,0(s0)
     f24:	02051663          	bnez	a0,f50 <printf+0x94>
     f28:	02c12083          	lw	ra,44(sp)
     f2c:	02812403          	lw	s0,40(sp)
     f30:	02412483          	lw	s1,36(sp)
     f34:	02012903          	lw	s2,32(sp)
     f38:	01c12983          	lw	s3,28(sp)
     f3c:	01812a03          	lw	s4,24(sp)
     f40:	01412a83          	lw	s5,20(sp)
     f44:	01012b03          	lw	s6,16(sp)
     f48:	05010113          	addi	sp,sp,80
     f4c:	00008067          	ret
     f50:	09251863          	bne	a0,s2,fe0 <printf+0x124>
     f54:	00144503          	lbu	a0,1(s0)
     f58:	03351463          	bne	a0,s3,f80 <printf+0xc4>
     f5c:	00c12783          	lw	a5,12(sp)
     f60:	0007a503          	lw	a0,0(a5)
     f64:	00478713          	addi	a4,a5,4
     f68:	00e12623          	sw	a4,12(sp)
     f6c:	00000097          	auipc	ra,0x0
     f70:	de8080e7          	jalr	-536(ra) # d54 <print_string>
     f74:	00140413          	addi	s0,s0,1
     f78:	00140413          	addi	s0,s0,1
     f7c:	fa5ff06f          	j	f20 <printf+0x64>
     f80:	03451063          	bne	a0,s4,fa0 <printf+0xe4>
     f84:	00c12783          	lw	a5,12(sp)
     f88:	0007a503          	lw	a0,0(a5)
     f8c:	00478713          	addi	a4,a5,4
     f90:	00e12623          	sw	a4,12(sp)
     f94:	00000097          	auipc	ra,0x0
     f98:	f1c080e7          	jalr	-228(ra) # eb0 <print_hex>
     f9c:	fd9ff06f          	j	f74 <printf+0xb8>
     fa0:	03551063          	bne	a0,s5,fc0 <printf+0x104>
     fa4:	00c12783          	lw	a5,12(sp)
     fa8:	0007a503          	lw	a0,0(a5)
     fac:	00478713          	addi	a4,a5,4
     fb0:	00e12623          	sw	a4,12(sp)
     fb4:	00000097          	auipc	ra,0x0
     fb8:	de4080e7          	jalr	-540(ra) # d98 <print_dec>
     fbc:	fb9ff06f          	j	f74 <printf+0xb8>
     fc0:	2e44a783          	lw	a5,740(s1) # 42e4 <f_putchar>
     fc4:	01651a63          	bne	a0,s6,fd8 <printf+0x11c>
     fc8:	00c12703          	lw	a4,12(sp)
     fcc:	00072503          	lw	a0,0(a4)
     fd0:	00470693          	addi	a3,a4,4
     fd4:	00d12623          	sw	a3,12(sp)
     fd8:	000780e7          	jalr	a5
     fdc:	f99ff06f          	j	f74 <printf+0xb8>
     fe0:	2e44a783          	lw	a5,740(s1)
     fe4:	000780e7          	jalr	a5
     fe8:	f91ff06f          	j	f78 <printf+0xbc>

00000fec <__mulsi3>:
     fec:	00050793          	mv	a5,a0
     ff0:	00000513          	li	a0,0
     ff4:	00079463          	bnez	a5,ffc <__mulsi3+0x10>
     ff8:	00008067          	ret
     ffc:	0017f713          	andi	a4,a5,1
    1000:	00070463          	beqz	a4,1008 <__mulsi3+0x1c>
    1004:	00b50533          	add	a0,a0,a1
    1008:	0017d793          	srli	a5,a5,0x1
    100c:	00159593          	slli	a1,a1,0x1
    1010:	fe5ff06f          	j	ff4 <__mulsi3+0x8>

00001014 <fat_list_insert_last>:
    1014:	00452783          	lw	a5,4(a0)
    1018:	04079263          	bnez	a5,105c <fat_list_insert_last+0x48>
    101c:	00052783          	lw	a5,0(a0)
    1020:	00079c63          	bnez	a5,1038 <fat_list_insert_last+0x24>
    1024:	00b52023          	sw	a1,0(a0)
    1028:	00b52223          	sw	a1,4(a0)
    102c:	0005a023          	sw	zero,0(a1)
    1030:	0005a223          	sw	zero,4(a1)
    1034:	00008067          	ret
    1038:	0007a703          	lw	a4,0(a5)
    103c:	00f5a223          	sw	a5,4(a1)
    1040:	00e5a023          	sw	a4,0(a1)
    1044:	00071863          	bnez	a4,1054 <fat_list_insert_last+0x40>
    1048:	00b52023          	sw	a1,0(a0)
    104c:	00b7a023          	sw	a1,0(a5)
    1050:	00008067          	ret
    1054:	00b72223          	sw	a1,4(a4)
    1058:	ff5ff06f          	j	104c <fat_list_insert_last+0x38>
    105c:	0047a703          	lw	a4,4(a5)
    1060:	00f5a023          	sw	a5,0(a1)
    1064:	00e5a223          	sw	a4,4(a1)
    1068:	00071863          	bnez	a4,1078 <fat_list_insert_last+0x64>
    106c:	00b52223          	sw	a1,4(a0)
    1070:	00b7a223          	sw	a1,4(a5)
    1074:	00008067          	ret
    1078:	00b72023          	sw	a1,0(a4)
    107c:	ff5ff06f          	j	1070 <fat_list_insert_last+0x5c>

00001080 <FileString_StrCmpNoCase>:
    1080:	00050313          	mv	t1,a0
    1084:	00000793          	li	a5,0
    1088:	01900e13          	li	t3,25
    108c:	00c79663          	bne	a5,a2,1098 <FileString_StrCmpNoCase+0x18>
    1090:	00000513          	li	a0,0
    1094:	00008067          	ret
    1098:	00f30733          	add	a4,t1,a5
    109c:	00074883          	lbu	a7,0(a4)
    10a0:	00f58733          	add	a4,a1,a5
    10a4:	00074803          	lbu	a6,0(a4)
    10a8:	fbf88713          	addi	a4,a7,-65
    10ac:	0ff77713          	zext.b	a4,a4
    10b0:	00088693          	mv	a3,a7
    10b4:	00ee6663          	bltu	t3,a4,10c0 <FileString_StrCmpNoCase+0x40>
    10b8:	02088693          	addi	a3,a7,32
    10bc:	0ff6f693          	zext.b	a3,a3
    10c0:	fbf80513          	addi	a0,a6,-65
    10c4:	0ff57513          	zext.b	a0,a0
    10c8:	00080713          	mv	a4,a6
    10cc:	00ae6663          	bltu	t3,a0,10d8 <FileString_StrCmpNoCase+0x58>
    10d0:	02080713          	addi	a4,a6,32
    10d4:	0ff77713          	zext.b	a4,a4
    10d8:	40e68533          	sub	a0,a3,a4
    10dc:	00e69863          	bne	a3,a4,10ec <FileString_StrCmpNoCase+0x6c>
    10e0:	00088663          	beqz	a7,10ec <FileString_StrCmpNoCase+0x6c>
    10e4:	00178793          	addi	a5,a5,1
    10e8:	fa0812e3          	bnez	a6,108c <FileString_StrCmpNoCase+0xc>
    10ec:	00008067          	ret

000010f0 <FileString_GetExtension>:
    10f0:	00050713          	mv	a4,a0
    10f4:	00050793          	mv	a5,a0
    10f8:	02e00613          	li	a2,46
    10fc:	fff00513          	li	a0,-1
    1100:	0007c683          	lbu	a3,0(a5)
    1104:	00069463          	bnez	a3,110c <FileString_GetExtension+0x1c>
    1108:	00008067          	ret
    110c:	00c69463          	bne	a3,a2,1114 <FileString_GetExtension+0x24>
    1110:	40e78533          	sub	a0,a5,a4
    1114:	00178793          	addi	a5,a5,1
    1118:	fe9ff06f          	j	1100 <FileString_GetExtension+0x10>

0000111c <fatfs_fat_writeback>:
    111c:	00059663          	bnez	a1,1128 <fatfs_fat_writeback+0xc>
    1120:	00000513          	li	a0,0
    1124:	00008067          	ret
    1128:	2045a703          	lw	a4,516(a1)
    112c:	ff010113          	addi	sp,sp,-16
    1130:	00812423          	sw	s0,8(sp)
    1134:	00112623          	sw	ra,12(sp)
    1138:	00058413          	mv	s0,a1
    113c:	00070a63          	beqz	a4,1150 <fatfs_fat_writeback+0x34>
    1140:	03852683          	lw	a3,56(a0)
    1144:	00050793          	mv	a5,a0
    1148:	00069863          	bnez	a3,1158 <fatfs_fat_writeback+0x3c>
    114c:	20042223          	sw	zero,516(s0)
    1150:	00100513          	li	a0,1
    1154:	0380006f          	j	118c <fatfs_fat_writeback+0x70>
    1158:	2005a503          	lw	a0,512(a1)
    115c:	0147a703          	lw	a4,20(a5)
    1160:	0207a583          	lw	a1,32(a5)
    1164:	00100613          	li	a2,1
    1168:	40e507b3          	sub	a5,a0,a4
    116c:	00178793          	addi	a5,a5,1
    1170:	00f5f663          	bgeu	a1,a5,117c <fatfs_fat_writeback+0x60>
    1174:	00b70733          	add	a4,a4,a1
    1178:	40a70633          	sub	a2,a4,a0
    117c:	00040593          	mv	a1,s0
    1180:	000680e7          	jalr	a3
    1184:	fc0514e3          	bnez	a0,114c <fatfs_fat_writeback+0x30>
    1188:	00000513          	li	a0,0
    118c:	00c12083          	lw	ra,12(sp)
    1190:	00812403          	lw	s0,8(sp)
    1194:	01010113          	addi	sp,sp,16
    1198:	00008067          	ret

0000119c <fatfs_fat_read_sector>:
    119c:	fe010113          	addi	sp,sp,-32
    11a0:	01212823          	sw	s2,16(sp)
    11a4:	25452903          	lw	s2,596(a0)
    11a8:	00812c23          	sw	s0,24(sp)
    11ac:	00912a23          	sw	s1,20(sp)
    11b0:	01312623          	sw	s3,12(sp)
    11b4:	00112e23          	sw	ra,28(sp)
    11b8:	00050993          	mv	s3,a0
    11bc:	00058493          	mv	s1,a1
    11c0:	00000413          	li	s0,0
    11c4:	04091063          	bnez	s2,1204 <fatfs_fat_read_sector+0x68>
    11c8:	2549a783          	lw	a5,596(s3)
    11cc:	20f42623          	sw	a5,524(s0)
    11d0:	20442783          	lw	a5,516(s0)
    11d4:	2489aa23          	sw	s0,596(s3)
    11d8:	08079863          	bnez	a5,1268 <fatfs_fat_read_sector+0xcc>
    11dc:	0349a783          	lw	a5,52(s3)
    11e0:	20942023          	sw	s1,512(s0)
    11e4:	00100613          	li	a2,1
    11e8:	00040593          	mv	a1,s0
    11ec:	00048513          	mv	a0,s1
    11f0:	000780e7          	jalr	a5
    11f4:	08051663          	bnez	a0,1280 <fatfs_fat_read_sector+0xe4>
    11f8:	fff00793          	li	a5,-1
    11fc:	20f42023          	sw	a5,512(s0)
    1200:	0480006f          	j	1248 <fatfs_fat_read_sector+0xac>
    1204:	20092783          	lw	a5,512(s2)
    1208:	00f4e663          	bltu	s1,a5,1214 <fatfs_fat_read_sector+0x78>
    120c:	00178713          	addi	a4,a5,1
    1210:	02e4e463          	bltu	s1,a4,1238 <fatfs_fat_read_sector+0x9c>
    1214:	20c92783          	lw	a5,524(s2)
    1218:	00079663          	bnez	a5,1224 <fatfs_fat_read_sector+0x88>
    121c:	00040a63          	beqz	s0,1230 <fatfs_fat_read_sector+0x94>
    1220:	20042623          	sw	zero,524(s0)
    1224:	00090413          	mv	s0,s2
    1228:	20c92903          	lw	s2,524(s2)
    122c:	f99ff06f          	j	11c4 <fatfs_fat_read_sector+0x28>
    1230:	2409aa23          	sw	zero,596(s3)
    1234:	ff1ff06f          	j	1224 <fatfs_fat_read_sector+0x88>
    1238:	40f484b3          	sub	s1,s1,a5
    123c:	00949493          	slli	s1,s1,0x9
    1240:	009904b3          	add	s1,s2,s1
    1244:	20992423          	sw	s1,520(s2)
    1248:	01c12083          	lw	ra,28(sp)
    124c:	01812403          	lw	s0,24(sp)
    1250:	01412483          	lw	s1,20(sp)
    1254:	00c12983          	lw	s3,12(sp)
    1258:	00090513          	mv	a0,s2
    125c:	01012903          	lw	s2,16(sp)
    1260:	02010113          	addi	sp,sp,32
    1264:	00008067          	ret
    1268:	00040593          	mv	a1,s0
    126c:	00098513          	mv	a0,s3
    1270:	00000097          	auipc	ra,0x0
    1274:	eac080e7          	jalr	-340(ra) # 111c <fatfs_fat_writeback>
    1278:	f60512e3          	bnez	a0,11dc <fatfs_fat_read_sector+0x40>
    127c:	fcdff06f          	j	1248 <fatfs_fat_read_sector+0xac>
    1280:	20842423          	sw	s0,520(s0)
    1284:	00040913          	mv	s2,s0
    1288:	fc1ff06f          	j	1248 <fatfs_fat_read_sector+0xac>

0000128c <_allocate_file>:
    128c:	ff010113          	addi	sp,sp,-16
    1290:	000047b7          	lui	a5,0x4
    1294:	00812423          	sw	s0,8(sp)
    1298:	2e87a403          	lw	s0,744(a5) # 42e8 <_free_file_list>
    129c:	00112623          	sw	ra,12(sp)
    12a0:	02040e63          	beqz	s0,12dc <_allocate_file+0x50>
    12a4:	00042703          	lw	a4,0(s0)
    12a8:	00442683          	lw	a3,4(s0)
    12ac:	2e878793          	addi	a5,a5,744
    12b0:	04071063          	bnez	a4,12f0 <_allocate_file+0x64>
    12b4:	00d7a023          	sw	a3,0(a5)
    12b8:	00442683          	lw	a3,4(s0)
    12bc:	02069e63          	bnez	a3,12f8 <_allocate_file+0x6c>
    12c0:	00e7a223          	sw	a4,4(a5)
    12c4:	00004537          	lui	a0,0x4
    12c8:	00040593          	mv	a1,s0
    12cc:	2f050513          	addi	a0,a0,752 # 42f0 <_open_file_list>
    12d0:	00000097          	auipc	ra,0x0
    12d4:	d44080e7          	jalr	-700(ra) # 1014 <fat_list_insert_last>
    12d8:	bc440413          	addi	s0,s0,-1084
    12dc:	00c12083          	lw	ra,12(sp)
    12e0:	00040513          	mv	a0,s0
    12e4:	00812403          	lw	s0,8(sp)
    12e8:	01010113          	addi	sp,sp,16
    12ec:	00008067          	ret
    12f0:	00d72223          	sw	a3,4(a4)
    12f4:	fc5ff06f          	j	12b8 <_allocate_file+0x2c>
    12f8:	00e6a023          	sw	a4,0(a3)
    12fc:	fc9ff06f          	j	12c4 <_allocate_file+0x38>

00001300 <_free_file>:
    1300:	43c52783          	lw	a5,1084(a0)
    1304:	44052703          	lw	a4,1088(a0)
    1308:	43c50593          	addi	a1,a0,1084
    130c:	02079663          	bnez	a5,1338 <_free_file+0x38>
    1310:	000046b7          	lui	a3,0x4
    1314:	2ee6a823          	sw	a4,752(a3) # 42f0 <_open_file_list>
    1318:	44052703          	lw	a4,1088(a0)
    131c:	02071263          	bnez	a4,1340 <_free_file+0x40>
    1320:	00004737          	lui	a4,0x4
    1324:	2ef72a23          	sw	a5,756(a4) # 42f4 <_open_file_list+0x4>
    1328:	00004537          	lui	a0,0x4
    132c:	2e850513          	addi	a0,a0,744 # 42e8 <_free_file_list>
    1330:	00000317          	auipc	t1,0x0
    1334:	ce430067          	jr	-796(t1) # 1014 <fat_list_insert_last>
    1338:	00e7a223          	sw	a4,4(a5)
    133c:	fddff06f          	j	1318 <_free_file+0x18>
    1340:	00f72023          	sw	a5,0(a4)
    1344:	fe5ff06f          	j	1328 <_free_file+0x28>

00001348 <fatfs_lba_of_cluster>:
    1348:	ff010113          	addi	sp,sp,-16
    134c:	00812423          	sw	s0,8(sp)
    1350:	00112623          	sw	ra,12(sp)
    1354:	00050413          	mv	s0,a0
    1358:	00058513          	mv	a0,a1
    135c:	00044583          	lbu	a1,0(s0)
    1360:	ffe50513          	addi	a0,a0,-2
    1364:	00000097          	auipc	ra,0x0
    1368:	c88080e7          	jalr	-888(ra) # fec <__mulsi3>
    136c:	00442783          	lw	a5,4(s0)
    1370:	00f50533          	add	a0,a0,a5
    1374:	03042783          	lw	a5,48(s0)
    1378:	00079863          	bnez	a5,1388 <fatfs_lba_of_cluster+0x40>
    137c:	02845783          	lhu	a5,40(s0)
    1380:	4047d793          	srai	a5,a5,0x4
    1384:	00f50533          	add	a0,a0,a5
    1388:	00c12083          	lw	ra,12(sp)
    138c:	00812403          	lw	s0,8(sp)
    1390:	01010113          	addi	sp,sp,16
    1394:	00008067          	ret

00001398 <fatfs_sector_read>:
    1398:	03452783          	lw	a5,52(a0)
    139c:	00058713          	mv	a4,a1
    13a0:	00070513          	mv	a0,a4
    13a4:	00060593          	mv	a1,a2
    13a8:	00068613          	mv	a2,a3
    13ac:	00078067          	jr	a5

000013b0 <fatfs_sector_write>:
    13b0:	03852783          	lw	a5,56(a0)
    13b4:	00058713          	mv	a4,a1
    13b8:	00070513          	mv	a0,a4
    13bc:	00060593          	mv	a1,a2
    13c0:	00068613          	mv	a2,a3
    13c4:	00078067          	jr	a5

000013c8 <fatfs_write_sector>:
    13c8:	03852783          	lw	a5,56(a0)
    13cc:	0a078863          	beqz	a5,147c <fatfs_write_sector+0xb4>
    13d0:	fe010113          	addi	sp,sp,-32
    13d4:	01212823          	sw	s2,16(sp)
    13d8:	00068913          	mv	s2,a3
    13dc:	03052683          	lw	a3,48(a0)
    13e0:	00812c23          	sw	s0,24(sp)
    13e4:	00912a23          	sw	s1,20(sp)
    13e8:	00112e23          	sw	ra,28(sp)
    13ec:	00d5e733          	or	a4,a1,a3
    13f0:	00050413          	mv	s0,a0
    13f4:	00060493          	mv	s1,a2
    13f8:	04071063          	bnez	a4,1438 <fatfs_write_sector+0x70>
    13fc:	01052703          	lw	a4,16(a0)
    1400:	06e67063          	bgeu	a2,a4,1460 <fatfs_write_sector+0x98>
    1404:	01c52503          	lw	a0,28(a0)
    1408:	00c42703          	lw	a4,12(s0)
    140c:	00e50533          	add	a0,a0,a4
    1410:	00c50533          	add	a0,a0,a2
    1414:	02090e63          	beqz	s2,1450 <fatfs_write_sector+0x88>
    1418:	00100613          	li	a2,1
    141c:	00090593          	mv	a1,s2
    1420:	01812403          	lw	s0,24(sp)
    1424:	01c12083          	lw	ra,28(sp)
    1428:	01412483          	lw	s1,20(sp)
    142c:	01012903          	lw	s2,16(sp)
    1430:	02010113          	addi	sp,sp,32
    1434:	00078067          	jr	a5
    1438:	00f12623          	sw	a5,12(sp)
    143c:	00000097          	auipc	ra,0x0
    1440:	f0c080e7          	jalr	-244(ra) # 1348 <fatfs_lba_of_cluster>
    1444:	00c12783          	lw	a5,12(sp)
    1448:	00a48533          	add	a0,s1,a0
    144c:	fc9ff06f          	j	1414 <fatfs_write_sector+0x4c>
    1450:	24a42223          	sw	a0,580(s0)
    1454:	00100613          	li	a2,1
    1458:	04440593          	addi	a1,s0,68
    145c:	fc5ff06f          	j	1420 <fatfs_write_sector+0x58>
    1460:	01c12083          	lw	ra,28(sp)
    1464:	01812403          	lw	s0,24(sp)
    1468:	01412483          	lw	s1,20(sp)
    146c:	01012903          	lw	s2,16(sp)
    1470:	00000513          	li	a0,0
    1474:	02010113          	addi	sp,sp,32
    1478:	00008067          	ret
    147c:	00000513          	li	a0,0
    1480:	00008067          	ret

00001484 <fl_init>:
    1484:	ff010113          	addi	sp,sp,-16
    1488:	00812423          	sw	s0,8(sp)
    148c:	00004437          	lui	s0,0x4
    1490:	00112623          	sw	ra,12(sp)
    1494:	2e840793          	addi	a5,s0,744 # 42e8 <_free_file_list>
    1498:	0007a223          	sw	zero,4(a5)
    149c:	0007a023          	sw	zero,0(a5)
    14a0:	000095b7          	lui	a1,0x9
    14a4:	000047b7          	lui	a5,0x4
    14a8:	2f078793          	addi	a5,a5,752 # 42f0 <_open_file_list>
    14ac:	2e840513          	addi	a0,s0,744
    14b0:	ba458593          	addi	a1,a1,-1116 # 8ba4 <_files+0x43c>
    14b4:	0007a223          	sw	zero,4(a5)
    14b8:	0007a023          	sw	zero,0(a5)
    14bc:	00000097          	auipc	ra,0x0
    14c0:	b58080e7          	jalr	-1192(ra) # 1014 <fat_list_insert_last>
    14c4:	000095b7          	lui	a1,0x9
    14c8:	2e840513          	addi	a0,s0,744
    14cc:	fe858593          	addi	a1,a1,-24 # 8fe8 <_files+0x880>
    14d0:	00000097          	auipc	ra,0x0
    14d4:	b44080e7          	jalr	-1212(ra) # 1014 <fat_list_insert_last>
    14d8:	00c12083          	lw	ra,12(sp)
    14dc:	00812403          	lw	s0,8(sp)
    14e0:	000047b7          	lui	a5,0x4
    14e4:	00100713          	li	a4,1
    14e8:	2ee7ae23          	sw	a4,764(a5) # 42fc <_filelib_init>
    14ec:	01010113          	addi	sp,sp,16
    14f0:	00008067          	ret

000014f4 <fatfs_lfn_cache_entry>:
    14f4:	0005c783          	lbu	a5,0(a1)
    14f8:	01300693          	li	a3,19
    14fc:	01f7f793          	andi	a5,a5,31
    1500:	fff78713          	addi	a4,a5,-1
    1504:	0ff77613          	zext.b	a2,a4
    1508:	0ac6ea63          	bltu	a3,a2,15bc <fatfs_lfn_cache_entry+0xc8>
    150c:	10554683          	lbu	a3,261(a0)
    1510:	00069463          	bnez	a3,1518 <fatfs_lfn_cache_entry+0x24>
    1514:	10f502a3          	sb	a5,261(a0)
    1518:	00171793          	slli	a5,a4,0x1
    151c:	00e787b3          	add	a5,a5,a4
    1520:	0015c683          	lbu	a3,1(a1)
    1524:	00279793          	slli	a5,a5,0x2
    1528:	00e787b3          	add	a5,a5,a4
    152c:	00f50533          	add	a0,a0,a5
    1530:	00d50023          	sb	a3,0(a0)
    1534:	0035c783          	lbu	a5,3(a1)
    1538:	0ff00713          	li	a4,255
    153c:	02000693          	li	a3,32
    1540:	00f500a3          	sb	a5,1(a0)
    1544:	0055c783          	lbu	a5,5(a1)
    1548:	00f50123          	sb	a5,2(a0)
    154c:	0075c783          	lbu	a5,7(a1)
    1550:	00f501a3          	sb	a5,3(a0)
    1554:	0095c783          	lbu	a5,9(a1)
    1558:	00f50223          	sb	a5,4(a0)
    155c:	00e5c783          	lbu	a5,14(a1)
    1560:	00f502a3          	sb	a5,5(a0)
    1564:	0105c783          	lbu	a5,16(a1)
    1568:	00f50323          	sb	a5,6(a0)
    156c:	0125c783          	lbu	a5,18(a1)
    1570:	00f503a3          	sb	a5,7(a0)
    1574:	0145c783          	lbu	a5,20(a1)
    1578:	00f50423          	sb	a5,8(a0)
    157c:	0165c783          	lbu	a5,22(a1)
    1580:	00f504a3          	sb	a5,9(a0)
    1584:	0185c783          	lbu	a5,24(a1)
    1588:	00f50523          	sb	a5,10(a0)
    158c:	01c5c783          	lbu	a5,28(a1)
    1590:	00f505a3          	sb	a5,11(a0)
    1594:	01e5c783          	lbu	a5,30(a1)
    1598:	00f50623          	sb	a5,12(a0)
    159c:	00d00793          	li	a5,13
    15a0:	00054603          	lbu	a2,0(a0)
    15a4:	00e61463          	bne	a2,a4,15ac <fatfs_lfn_cache_entry+0xb8>
    15a8:	00d50023          	sb	a3,0(a0)
    15ac:	fff78793          	addi	a5,a5,-1
    15b0:	0ff7f793          	zext.b	a5,a5
    15b4:	00150513          	addi	a0,a0,1
    15b8:	fe0794e3          	bnez	a5,15a0 <fatfs_lfn_cache_entry+0xac>
    15bc:	00008067          	ret

000015c0 <fatfs_lfn_cache_get>:
    15c0:	10554703          	lbu	a4,261(a0)
    15c4:	01400793          	li	a5,20
    15c8:	00f71663          	bne	a4,a5,15d4 <fatfs_lfn_cache_get+0x14>
    15cc:	10050223          	sb	zero,260(a0)
    15d0:	00008067          	ret
    15d4:	02070063          	beqz	a4,15f4 <fatfs_lfn_cache_get+0x34>
    15d8:	00171793          	slli	a5,a4,0x1
    15dc:	00e787b3          	add	a5,a5,a4
    15e0:	00279793          	slli	a5,a5,0x2
    15e4:	00e787b3          	add	a5,a5,a4
    15e8:	00f507b3          	add	a5,a0,a5
    15ec:	00078023          	sb	zero,0(a5)
    15f0:	00008067          	ret
    15f4:	00050023          	sb	zero,0(a0)
    15f8:	00008067          	ret

000015fc <fatfs_entry_lfn_text>:
    15fc:	00b54503          	lbu	a0,11(a0)
    1600:	00f57513          	andi	a0,a0,15
    1604:	ff150513          	addi	a0,a0,-15
    1608:	00153513          	seqz	a0,a0
    160c:	00008067          	ret

00001610 <fatfs_entry_lfn_invalid>:
    1610:	00054703          	lbu	a4,0(a0)
    1614:	00050793          	mv	a5,a0
    1618:	02070463          	beqz	a4,1640 <fatfs_entry_lfn_invalid+0x30>
    161c:	0e500693          	li	a3,229
    1620:	00100513          	li	a0,1
    1624:	02d70063          	beq	a4,a3,1644 <fatfs_entry_lfn_invalid+0x34>
    1628:	00b7c783          	lbu	a5,11(a5)
    162c:	00800713          	li	a4,8
    1630:	00e78a63          	beq	a5,a4,1644 <fatfs_entry_lfn_invalid+0x34>
    1634:	0067f793          	andi	a5,a5,6
    1638:	00f03533          	snez	a0,a5
    163c:	00008067          	ret
    1640:	00100513          	li	a0,1
    1644:	00008067          	ret

00001648 <fatfs_entry_lfn_exists>:
    1648:	00b5c783          	lbu	a5,11(a1)
    164c:	00f00693          	li	a3,15
    1650:	00050713          	mv	a4,a0
    1654:	02d78a63          	beq	a5,a3,1688 <fatfs_entry_lfn_exists+0x40>
    1658:	0005c683          	lbu	a3,0(a1)
    165c:	00000513          	li	a0,0
    1660:	02068663          	beqz	a3,168c <fatfs_entry_lfn_exists+0x44>
    1664:	0e500613          	li	a2,229
    1668:	02c68263          	beq	a3,a2,168c <fatfs_entry_lfn_exists+0x44>
    166c:	00800693          	li	a3,8
    1670:	00d78e63          	beq	a5,a3,168c <fatfs_entry_lfn_exists+0x44>
    1674:	0067f793          	andi	a5,a5,6
    1678:	00079a63          	bnez	a5,168c <fatfs_entry_lfn_exists+0x44>
    167c:	10574503          	lbu	a0,261(a4)
    1680:	00a03533          	snez	a0,a0
    1684:	00008067          	ret
    1688:	00000513          	li	a0,0
    168c:	00008067          	ret

00001690 <fatfs_entry_sfn_only>:
    1690:	00b54783          	lbu	a5,11(a0)
    1694:	00f00713          	li	a4,15
    1698:	02e78663          	beq	a5,a4,16c4 <fatfs_entry_sfn_only+0x34>
    169c:	00054703          	lbu	a4,0(a0)
    16a0:	00000513          	li	a0,0
    16a4:	02070263          	beqz	a4,16c8 <fatfs_entry_sfn_only+0x38>
    16a8:	0e500693          	li	a3,229
    16ac:	00d70e63          	beq	a4,a3,16c8 <fatfs_entry_sfn_only+0x38>
    16b0:	00800713          	li	a4,8
    16b4:	00e78a63          	beq	a5,a4,16c8 <fatfs_entry_sfn_only+0x38>
    16b8:	0067f793          	andi	a5,a5,6
    16bc:	0017b513          	seqz	a0,a5
    16c0:	00008067          	ret
    16c4:	00000513          	li	a0,0
    16c8:	00008067          	ret

000016cc <fatfs_entry_is_dir>:
    16cc:	00b54503          	lbu	a0,11(a0)
    16d0:	00455513          	srli	a0,a0,0x4
    16d4:	00157513          	andi	a0,a0,1
    16d8:	00008067          	ret

000016dc <fatfs_entry_is_file>:
    16dc:	00b54503          	lbu	a0,11(a0)
    16e0:	00555513          	srli	a0,a0,0x5
    16e4:	00157513          	andi	a0,a0,1
    16e8:	00008067          	ret

000016ec <fatfs_lfn_entries_required>:
    16ec:	ff010113          	addi	sp,sp,-16
    16f0:	00112623          	sw	ra,12(sp)
    16f4:	fffff097          	auipc	ra,0xfffff
    16f8:	234080e7          	jalr	564(ra) # 928 <strlen>
    16fc:	00050a63          	beqz	a0,1710 <fatfs_lfn_entries_required+0x24>
    1700:	00d00593          	li	a1,13
    1704:	00c50513          	addi	a0,a0,12
    1708:	fffff097          	auipc	ra,0xfffff
    170c:	12c080e7          	jalr	300(ra) # 834 <__divsi3>
    1710:	00c12083          	lw	ra,12(sp)
    1714:	01010113          	addi	sp,sp,16
    1718:	00008067          	ret

0000171c <fatfs_filename_to_lfn>:
    171c:	fa010113          	addi	sp,sp,-96
    1720:	04912a23          	sw	s1,84(sp)
    1724:	00058493          	mv	s1,a1
    1728:	000045b7          	lui	a1,0x4
    172c:	2a058593          	addi	a1,a1,672 # 42a0 <font+0x1e0>
    1730:	05212823          	sw	s2,80(sp)
    1734:	05312623          	sw	s3,76(sp)
    1738:	00060913          	mv	s2,a2
    173c:	00050993          	mv	s3,a0
    1740:	03400613          	li	a2,52
    1744:	00c10513          	addi	a0,sp,12
    1748:	04112e23          	sw	ra,92(sp)
    174c:	04812c23          	sw	s0,88(sp)
    1750:	05412423          	sw	s4,72(sp)
    1754:	05512223          	sw	s5,68(sp)
    1758:	05612023          	sw	s6,64(sp)
    175c:	00068b13          	mv	s6,a3
    1760:	fffff097          	auipc	ra,0xfffff
    1764:	1a4080e7          	jalr	420(ra) # 904 <memcpy>
    1768:	00098513          	mv	a0,s3
    176c:	fffff097          	auipc	ra,0xfffff
    1770:	1bc080e7          	jalr	444(ra) # 928 <strlen>
    1774:	00050a93          	mv	s5,a0
    1778:	00098513          	mv	a0,s3
    177c:	00000097          	auipc	ra,0x0
    1780:	f70080e7          	jalr	-144(ra) # 16ec <fatfs_lfn_entries_required>
    1784:	00191793          	slli	a5,s2,0x1
    1788:	012787b3          	add	a5,a5,s2
    178c:	00279793          	slli	a5,a5,0x2
    1790:	00050a13          	mv	s4,a0
    1794:	02000613          	li	a2,32
    1798:	00000593          	li	a1,0
    179c:	00048513          	mv	a0,s1
    17a0:	01278433          	add	s0,a5,s2
    17a4:	fffff097          	auipc	ra,0xfffff
    17a8:	144080e7          	jalr	324(ra) # 8e8 <memset>
    17ac:	00190793          	addi	a5,s2,1
    17b0:	fffa0a13          	addi	s4,s4,-1 # 3fff <OLED+0x4f>
    17b4:	0ff7f793          	zext.b	a5,a5
    17b8:	012a1463          	bne	s4,s2,17c0 <fatfs_filename_to_lfn+0xa4>
    17bc:	0407e793          	ori	a5,a5,64
    17c0:	00f48023          	sb	a5,0(s1)
    17c4:	00f00793          	li	a5,15
    17c8:	00f485a3          	sb	a5,11(s1)
    17cc:	016486a3          	sb	s6,13(s1)
    17d0:	00c10713          	addi	a4,sp,12
    17d4:	00040793          	mv	a5,s0
    17d8:	fff00613          	li	a2,-1
    17dc:	00072683          	lw	a3,0(a4)
    17e0:	00d486b3          	add	a3,s1,a3
    17e4:	0557d463          	bge	a5,s5,182c <fatfs_filename_to_lfn+0x110>
    17e8:	00f985b3          	add	a1,s3,a5
    17ec:	0005c583          	lbu	a1,0(a1)
    17f0:	00b68023          	sb	a1,0(a3)
    17f4:	00470713          	addi	a4,a4,4
    17f8:	04010693          	addi	a3,sp,64
    17fc:	00178793          	addi	a5,a5,1
    1800:	fcd71ee3          	bne	a4,a3,17dc <fatfs_filename_to_lfn+0xc0>
    1804:	05c12083          	lw	ra,92(sp)
    1808:	05812403          	lw	s0,88(sp)
    180c:	05412483          	lw	s1,84(sp)
    1810:	05012903          	lw	s2,80(sp)
    1814:	04c12983          	lw	s3,76(sp)
    1818:	04812a03          	lw	s4,72(sp)
    181c:	04412a83          	lw	s5,68(sp)
    1820:	04012b03          	lw	s6,64(sp)
    1824:	06010113          	addi	sp,sp,96
    1828:	00008067          	ret
    182c:	01579663          	bne	a5,s5,1838 <fatfs_filename_to_lfn+0x11c>
    1830:	00068023          	sb	zero,0(a3)
    1834:	fc1ff06f          	j	17f4 <fatfs_filename_to_lfn+0xd8>
    1838:	00c68023          	sb	a2,0(a3)
    183c:	00c680a3          	sb	a2,1(a3)
    1840:	fb5ff06f          	j	17f4 <fatfs_filename_to_lfn+0xd8>

00001844 <fatfs_sfn_create_entry>:
    1844:	00000793          	li	a5,0
    1848:	00b00813          	li	a6,11
    184c:	00f508b3          	add	a7,a0,a5
    1850:	0008c303          	lbu	t1,0(a7)
    1854:	00f688b3          	add	a7,a3,a5
    1858:	00178793          	addi	a5,a5,1
    185c:	00688023          	sb	t1,0(a7)
    1860:	ff0796e3          	bne	a5,a6,184c <fatfs_sfn_create_entry+0x8>
    1864:	02000793          	li	a5,32
    1868:	00f68823          	sb	a5,16(a3)
    186c:	00f68923          	sb	a5,18(a3)
    1870:	00f68c23          	sb	a5,24(a3)
    1874:	000686a3          	sb	zero,13(a3)
    1878:	00068723          	sb	zero,14(a3)
    187c:	000687a3          	sb	zero,15(a3)
    1880:	000688a3          	sb	zero,17(a3)
    1884:	000689a3          	sb	zero,19(a3)
    1888:	00068b23          	sb	zero,22(a3)
    188c:	00068ba3          	sb	zero,23(a3)
    1890:	00068ca3          	sb	zero,25(a3)
    1894:	01000793          	li	a5,16
    1898:	00071463          	bnez	a4,18a0 <fatfs_sfn_create_entry+0x5c>
    189c:	02000793          	li	a5,32
    18a0:	00f685a3          	sb	a5,11(a3)
    18a4:	01065793          	srli	a5,a2,0x10
    18a8:	00f68a23          	sb	a5,20(a3)
    18ac:	0087d793          	srli	a5,a5,0x8
    18b0:	00f68aa3          	sb	a5,21(a3)
    18b4:	01061793          	slli	a5,a2,0x10
    18b8:	0107d793          	srli	a5,a5,0x10
    18bc:	0087d793          	srli	a5,a5,0x8
    18c0:	00f68da3          	sb	a5,27(a3)
    18c4:	0085d793          	srli	a5,a1,0x8
    18c8:	00b68e23          	sb	a1,28(a3)
    18cc:	00f68ea3          	sb	a5,29(a3)
    18d0:	0105d793          	srli	a5,a1,0x10
    18d4:	0185d593          	srli	a1,a1,0x18
    18d8:	00068623          	sb	zero,12(a3)
    18dc:	00c68d23          	sb	a2,26(a3)
    18e0:	00f68f23          	sb	a5,30(a3)
    18e4:	00b68fa3          	sb	a1,31(a3)
    18e8:	00008067          	ret

000018ec <fatfs_lfn_create_sfn>:
    18ec:	0005c703          	lbu	a4,0(a1)
    18f0:	02e00793          	li	a5,46
    18f4:	16f70663          	beq	a4,a5,1a60 <fatfs_lfn_create_sfn+0x174>
    18f8:	fe010113          	addi	sp,sp,-32
    18fc:	00912a23          	sw	s1,20(sp)
    1900:	00050493          	mv	s1,a0
    1904:	00058513          	mv	a0,a1
    1908:	00112e23          	sw	ra,28(sp)
    190c:	00812c23          	sw	s0,24(sp)
    1910:	01212823          	sw	s2,16(sp)
    1914:	00058413          	mv	s0,a1
    1918:	fffff097          	auipc	ra,0xfffff
    191c:	010080e7          	jalr	16(ra) # 928 <strlen>
    1920:	00b00613          	li	a2,11
    1924:	02000593          	li	a1,32
    1928:	00050913          	mv	s2,a0
    192c:	00048513          	mv	a0,s1
    1930:	fffff097          	auipc	ra,0xfffff
    1934:	fb8080e7          	jalr	-72(ra) # 8e8 <memset>
    1938:	00300613          	li	a2,3
    193c:	02000593          	li	a1,32
    1940:	00c10513          	addi	a0,sp,12
    1944:	fffff097          	auipc	ra,0xfffff
    1948:	fa4080e7          	jalr	-92(ra) # 8e8 <memset>
    194c:	fff00713          	li	a4,-1
    1950:	00000793          	li	a5,0
    1954:	02e00693          	li	a3,46
    1958:	0d27c263          	blt	a5,s2,1a1c <fatfs_lfn_create_sfn+0x130>
    195c:	fff00793          	li	a5,-1
    1960:	0ef70863          	beq	a4,a5,1a50 <fatfs_lfn_create_sfn+0x164>
    1964:	00170793          	addi	a5,a4,1
    1968:	00c10693          	addi	a3,sp,12
    196c:	00470613          	addi	a2,a4,4
    1970:	0cf61263          	bne	a2,a5,1a34 <fatfs_lfn_create_sfn+0x148>
    1974:	00000613          	li	a2,0
    1978:	00000693          	li	a3,0
    197c:	02000513          	li	a0,32
    1980:	02e00813          	li	a6,46
    1984:	01900893          	li	a7,25
    1988:	00800313          	li	t1,8
    198c:	02e6dc63          	bge	a3,a4,19c4 <fatfs_lfn_create_sfn+0xd8>
    1990:	00d407b3          	add	a5,s0,a3
    1994:	0007c783          	lbu	a5,0(a5)
    1998:	0ca78063          	beq	a5,a0,1a58 <fatfs_lfn_create_sfn+0x16c>
    199c:	0b078e63          	beq	a5,a6,1a58 <fatfs_lfn_create_sfn+0x16c>
    19a0:	f9f78593          	addi	a1,a5,-97
    19a4:	0ff5f593          	zext.b	a1,a1
    19a8:	00c48e33          	add	t3,s1,a2
    19ac:	00160613          	addi	a2,a2,1
    19b0:	00b8e663          	bltu	a7,a1,19bc <fatfs_lfn_create_sfn+0xd0>
    19b4:	fe078793          	addi	a5,a5,-32
    19b8:	0ff7f793          	zext.b	a5,a5
    19bc:	00fe0023          	sb	a5,0(t3)
    19c0:	08661c63          	bne	a2,t1,1a58 <fatfs_lfn_create_sfn+0x16c>
    19c4:	00c10793          	addi	a5,sp,12
    19c8:	00800693          	li	a3,8
    19cc:	01900513          	li	a0,25
    19d0:	00b00593          	li	a1,11
    19d4:	0007c703          	lbu	a4,0(a5)
    19d8:	f9f70613          	addi	a2,a4,-97
    19dc:	0ff67613          	zext.b	a2,a2
    19e0:	00c56663          	bltu	a0,a2,19ec <fatfs_lfn_create_sfn+0x100>
    19e4:	fe070713          	addi	a4,a4,-32
    19e8:	0ff77713          	zext.b	a4,a4
    19ec:	00d48633          	add	a2,s1,a3
    19f0:	00e60023          	sb	a4,0(a2)
    19f4:	00168693          	addi	a3,a3,1
    19f8:	00178793          	addi	a5,a5,1
    19fc:	fcb69ce3          	bne	a3,a1,19d4 <fatfs_lfn_create_sfn+0xe8>
    1a00:	01c12083          	lw	ra,28(sp)
    1a04:	01812403          	lw	s0,24(sp)
    1a08:	01412483          	lw	s1,20(sp)
    1a0c:	01012903          	lw	s2,16(sp)
    1a10:	00100513          	li	a0,1
    1a14:	02010113          	addi	sp,sp,32
    1a18:	00008067          	ret
    1a1c:	00f40633          	add	a2,s0,a5
    1a20:	00064603          	lbu	a2,0(a2)
    1a24:	00d61463          	bne	a2,a3,1a2c <fatfs_lfn_create_sfn+0x140>
    1a28:	00078713          	mv	a4,a5
    1a2c:	00178793          	addi	a5,a5,1
    1a30:	f29ff06f          	j	1958 <fatfs_lfn_create_sfn+0x6c>
    1a34:	0127d863          	bge	a5,s2,1a44 <fatfs_lfn_create_sfn+0x158>
    1a38:	00f405b3          	add	a1,s0,a5
    1a3c:	0005c583          	lbu	a1,0(a1)
    1a40:	00b68023          	sb	a1,0(a3)
    1a44:	00178793          	addi	a5,a5,1
    1a48:	00168693          	addi	a3,a3,1
    1a4c:	f25ff06f          	j	1970 <fatfs_lfn_create_sfn+0x84>
    1a50:	00090713          	mv	a4,s2
    1a54:	f21ff06f          	j	1974 <fatfs_lfn_create_sfn+0x88>
    1a58:	00168693          	addi	a3,a3,1
    1a5c:	f31ff06f          	j	198c <fatfs_lfn_create_sfn+0xa0>
    1a60:	00000513          	li	a0,0
    1a64:	00008067          	ret

00001a68 <fatfs_lfn_generate_tail>:
    1a68:	000187b7          	lui	a5,0x18
    1a6c:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1a70:	16c7e463          	bltu	a5,a2,1bd8 <fatfs_lfn_generate_tail+0x170>
    1a74:	fa010113          	addi	sp,sp,-96
    1a78:	04812c23          	sw	s0,88(sp)
    1a7c:	04912a23          	sw	s1,84(sp)
    1a80:	05412423          	sw	s4,72(sp)
    1a84:	00050493          	mv	s1,a0
    1a88:	00058a13          	mv	s4,a1
    1a8c:	00060413          	mv	s0,a2
    1a90:	00000593          	li	a1,0
    1a94:	00c00613          	li	a2,12
    1a98:	00410513          	addi	a0,sp,4
    1a9c:	04112e23          	sw	ra,92(sp)
    1aa0:	05312623          	sw	s3,76(sp)
    1aa4:	05512223          	sw	s5,68(sp)
    1aa8:	03712e23          	sw	s7,60(sp)
    1aac:	05212823          	sw	s2,80(sp)
    1ab0:	05612023          	sw	s6,64(sp)
    1ab4:	fffff097          	auipc	ra,0xfffff
    1ab8:	e34080e7          	jalr	-460(ra) # 8e8 <memset>
    1abc:	000045b7          	lui	a1,0x4
    1ac0:	07e00793          	li	a5,126
    1ac4:	01100613          	li	a2,17
    1ac8:	07858593          	addi	a1,a1,120 # 4078 <OLED+0xc8>
    1acc:	01c10513          	addi	a0,sp,28
    1ad0:	01010993          	addi	s3,sp,16
    1ad4:	00f10223          	sb	a5,4(sp)
    1ad8:	00098a93          	mv	s5,s3
    1adc:	fffff097          	auipc	ra,0xfffff
    1ae0:	e28080e7          	jalr	-472(ra) # 904 <memcpy>
    1ae4:	00900b93          	li	s7,9
    1ae8:	00a00593          	li	a1,10
    1aec:	00040513          	mv	a0,s0
    1af0:	fffff097          	auipc	ra,0xfffff
    1af4:	d94080e7          	jalr	-620(ra) # 884 <__umodsi3>
    1af8:	03050793          	addi	a5,a0,48
    1afc:	00278533          	add	a0,a5,sp
    1b00:	fec54783          	lbu	a5,-20(a0)
    1b04:	00098913          	mv	s2,s3
    1b08:	00040513          	mv	a0,s0
    1b0c:	00a00593          	li	a1,10
    1b10:	00f98023          	sb	a5,0(s3)
    1b14:	00040b13          	mv	s6,s0
    1b18:	fffff097          	auipc	ra,0xfffff
    1b1c:	d24080e7          	jalr	-732(ra) # 83c <__udivsi3>
    1b20:	00198993          	addi	s3,s3,1
    1b24:	00050413          	mv	s0,a0
    1b28:	fd6be0e3          	bltu	s7,s6,1ae8 <fatfs_lfn_generate_tail+0x80>
    1b2c:	00098023          	sb	zero,0(s3)
    1b30:	00410713          	addi	a4,sp,4
    1b34:	00090793          	mv	a5,s2
    1b38:	00170713          	addi	a4,a4,1
    1b3c:	0957f663          	bgeu	a5,s5,1bc8 <fatfs_lfn_generate_tail+0x160>
    1b40:	00f10713          	addi	a4,sp,15
    1b44:	00000793          	li	a5,0
    1b48:	00e96663          	bltu	s2,a4,1b54 <fatfs_lfn_generate_tail+0xec>
    1b4c:	41590933          	sub	s2,s2,s5
    1b50:	00190793          	addi	a5,s2,1
    1b54:	03078793          	addi	a5,a5,48
    1b58:	002787b3          	add	a5,a5,sp
    1b5c:	000a0593          	mv	a1,s4
    1b60:	fc078aa3          	sb	zero,-43(a5)
    1b64:	00b00613          	li	a2,11
    1b68:	00048513          	mv	a0,s1
    1b6c:	fffff097          	auipc	ra,0xfffff
    1b70:	d98080e7          	jalr	-616(ra) # 904 <memcpy>
    1b74:	00410513          	addi	a0,sp,4
    1b78:	fffff097          	auipc	ra,0xfffff
    1b7c:	db0080e7          	jalr	-592(ra) # 928 <strlen>
    1b80:	40a484b3          	sub	s1,s1,a0
    1b84:	00050613          	mv	a2,a0
    1b88:	00410593          	addi	a1,sp,4
    1b8c:	00848513          	addi	a0,s1,8
    1b90:	fffff097          	auipc	ra,0xfffff
    1b94:	d74080e7          	jalr	-652(ra) # 904 <memcpy>
    1b98:	05c12083          	lw	ra,92(sp)
    1b9c:	05812403          	lw	s0,88(sp)
    1ba0:	05412483          	lw	s1,84(sp)
    1ba4:	05012903          	lw	s2,80(sp)
    1ba8:	04c12983          	lw	s3,76(sp)
    1bac:	04812a03          	lw	s4,72(sp)
    1bb0:	04412a83          	lw	s5,68(sp)
    1bb4:	04012b03          	lw	s6,64(sp)
    1bb8:	03c12b83          	lw	s7,60(sp)
    1bbc:	00100513          	li	a0,1
    1bc0:	06010113          	addi	sp,sp,96
    1bc4:	00008067          	ret
    1bc8:	0007c683          	lbu	a3,0(a5)
    1bcc:	fff78793          	addi	a5,a5,-1
    1bd0:	00d70023          	sb	a3,0(a4)
    1bd4:	f65ff06f          	j	1b38 <fatfs_lfn_generate_tail+0xd0>
    1bd8:	00000513          	li	a0,0
    1bdc:	00008067          	ret

00001be0 <fatfs_total_path_levels>:
    1be0:	00050793          	mv	a5,a0
    1be4:	06050463          	beqz	a0,1c4c <fatfs_total_path_levels+0x6c>
    1be8:	00054703          	lbu	a4,0(a0)
    1bec:	02f00693          	li	a3,47
    1bf0:	00d71863          	bne	a4,a3,1c00 <fatfs_total_path_levels+0x20>
    1bf4:	00150793          	addi	a5,a0,1
    1bf8:	00000513          	li	a0,0
    1bfc:	0400006f          	j	1c3c <fatfs_total_path_levels+0x5c>
    1c00:	00154683          	lbu	a3,1(a0)
    1c04:	03a00713          	li	a4,58
    1c08:	00e68a63          	beq	a3,a4,1c1c <fatfs_total_path_levels+0x3c>
    1c0c:	00254683          	lbu	a3,2(a0)
    1c10:	05c00713          	li	a4,92
    1c14:	fff00513          	li	a0,-1
    1c18:	02e69c63          	bne	a3,a4,1c50 <fatfs_total_path_levels+0x70>
    1c1c:	00378793          	addi	a5,a5,3
    1c20:	05c00713          	li	a4,92
    1c24:	fd5ff06f          	j	1bf8 <fatfs_total_path_levels+0x18>
    1c28:	00178793          	addi	a5,a5,1
    1c2c:	00e68663          	beq	a3,a4,1c38 <fatfs_total_path_levels+0x58>
    1c30:	0007c683          	lbu	a3,0(a5)
    1c34:	fe069ae3          	bnez	a3,1c28 <fatfs_total_path_levels+0x48>
    1c38:	00150513          	addi	a0,a0,1
    1c3c:	0007c683          	lbu	a3,0(a5)
    1c40:	fe0698e3          	bnez	a3,1c30 <fatfs_total_path_levels+0x50>
    1c44:	fff50513          	addi	a0,a0,-1
    1c48:	00008067          	ret
    1c4c:	fff00513          	li	a0,-1
    1c50:	00008067          	ret

00001c54 <fatfs_get_substring>:
    1c54:	0c050c63          	beqz	a0,1d2c <fatfs_get_substring+0xd8>
    1c58:	fe010113          	addi	sp,sp,-32
    1c5c:	00912a23          	sw	s1,20(sp)
    1c60:	00112e23          	sw	ra,28(sp)
    1c64:	00812c23          	sw	s0,24(sp)
    1c68:	01212823          	sw	s2,16(sp)
    1c6c:	01312623          	sw	s3,12(sp)
    1c70:	01412423          	sw	s4,8(sp)
    1c74:	00050793          	mv	a5,a0
    1c78:	00068493          	mv	s1,a3
    1c7c:	fff00513          	li	a0,-1
    1c80:	06d05a63          	blez	a3,1cf4 <fatfs_get_substring+0xa0>
    1c84:	0007c983          	lbu	s3,0(a5)
    1c88:	02f00713          	li	a4,47
    1c8c:	00058a13          	mv	s4,a1
    1c90:	00060913          	mv	s2,a2
    1c94:	00178413          	addi	s0,a5,1
    1c98:	02e98463          	beq	s3,a4,1cc0 <fatfs_get_substring+0x6c>
    1c9c:	0017c683          	lbu	a3,1(a5)
    1ca0:	03a00713          	li	a4,58
    1ca4:	00e68a63          	beq	a3,a4,1cb8 <fatfs_get_substring+0x64>
    1ca8:	0027c683          	lbu	a3,2(a5)
    1cac:	05c00713          	li	a4,92
    1cb0:	fff00513          	li	a0,-1
    1cb4:	04e69063          	bne	a3,a4,1cf4 <fatfs_get_substring+0xa0>
    1cb8:	00378413          	addi	s0,a5,3
    1cbc:	05c00993          	li	s3,92
    1cc0:	00040513          	mv	a0,s0
    1cc4:	fffff097          	auipc	ra,0xfffff
    1cc8:	c64080e7          	jalr	-924(ra) # 928 <strlen>
    1ccc:	00000713          	li	a4,0
    1cd0:	00000693          	li	a3,0
    1cd4:	00000793          	li	a5,0
    1cd8:	fff48493          	addi	s1,s1,-1
    1cdc:	00e905b3          	add	a1,s2,a4
    1ce0:	02a7ca63          	blt	a5,a0,1d14 <fatfs_get_substring+0xc0>
    1ce4:	00058023          	sb	zero,0(a1)
    1ce8:	00094503          	lbu	a0,0(s2)
    1cec:	00153513          	seqz	a0,a0
    1cf0:	40a00533          	neg	a0,a0
    1cf4:	01c12083          	lw	ra,28(sp)
    1cf8:	01812403          	lw	s0,24(sp)
    1cfc:	01412483          	lw	s1,20(sp)
    1d00:	01012903          	lw	s2,16(sp)
    1d04:	00c12983          	lw	s3,12(sp)
    1d08:	00812a03          	lw	s4,8(sp)
    1d0c:	02010113          	addi	sp,sp,32
    1d10:	00008067          	ret
    1d14:	00f40633          	add	a2,s0,a5
    1d18:	00064603          	lbu	a2,0(a2)
    1d1c:	01361c63          	bne	a2,s3,1d34 <fatfs_get_substring+0xe0>
    1d20:	00168693          	addi	a3,a3,1
    1d24:	00178793          	addi	a5,a5,1
    1d28:	fb5ff06f          	j	1cdc <fatfs_get_substring+0x88>
    1d2c:	fff00513          	li	a0,-1
    1d30:	00008067          	ret
    1d34:	ff4698e3          	bne	a3,s4,1d24 <fatfs_get_substring+0xd0>
    1d38:	fe9756e3          	bge	a4,s1,1d24 <fatfs_get_substring+0xd0>
    1d3c:	00170713          	addi	a4,a4,1
    1d40:	00c58023          	sb	a2,0(a1)
    1d44:	fe1ff06f          	j	1d24 <fatfs_get_substring+0xd0>

00001d48 <fatfs_split_path>:
    1d48:	fd010113          	addi	sp,sp,-48
    1d4c:	02912223          	sw	s1,36(sp)
    1d50:	01312e23          	sw	s3,28(sp)
    1d54:	01412c23          	sw	s4,24(sp)
    1d58:	01512a23          	sw	s5,20(sp)
    1d5c:	02112623          	sw	ra,44(sp)
    1d60:	00068a93          	mv	s5,a3
    1d64:	02812423          	sw	s0,40(sp)
    1d68:	03212023          	sw	s2,32(sp)
    1d6c:	00050993          	mv	s3,a0
    1d70:	00058493          	mv	s1,a1
    1d74:	00060a13          	mv	s4,a2
    1d78:	00e12623          	sw	a4,12(sp)
    1d7c:	00000097          	auipc	ra,0x0
    1d80:	e64080e7          	jalr	-412(ra) # 1be0 <fatfs_total_path_levels>
    1d84:	fff00793          	li	a5,-1
    1d88:	00c12683          	lw	a3,12(sp)
    1d8c:	02f51863          	bne	a0,a5,1dbc <fatfs_split_path+0x74>
    1d90:	fff00913          	li	s2,-1
    1d94:	02c12083          	lw	ra,44(sp)
    1d98:	02812403          	lw	s0,40(sp)
    1d9c:	02412483          	lw	s1,36(sp)
    1da0:	01c12983          	lw	s3,28(sp)
    1da4:	01812a03          	lw	s4,24(sp)
    1da8:	01412a83          	lw	s5,20(sp)
    1dac:	00090513          	mv	a0,s2
    1db0:	02012903          	lw	s2,32(sp)
    1db4:	03010113          	addi	sp,sp,48
    1db8:	00008067          	ret
    1dbc:	00050593          	mv	a1,a0
    1dc0:	00050413          	mv	s0,a0
    1dc4:	000a8613          	mv	a2,s5
    1dc8:	00098513          	mv	a0,s3
    1dcc:	00000097          	auipc	ra,0x0
    1dd0:	e88080e7          	jalr	-376(ra) # 1c54 <fatfs_get_substring>
    1dd4:	00050913          	mv	s2,a0
    1dd8:	fa051ce3          	bnez	a0,1d90 <fatfs_split_path+0x48>
    1ddc:	00041663          	bnez	s0,1de8 <fatfs_split_path+0xa0>
    1de0:	00048023          	sb	zero,0(s1)
    1de4:	fb1ff06f          	j	1d94 <fatfs_split_path+0x4c>
    1de8:	00098513          	mv	a0,s3
    1dec:	fffff097          	auipc	ra,0xfffff
    1df0:	b3c080e7          	jalr	-1220(ra) # 928 <strlen>
    1df4:	00050413          	mv	s0,a0
    1df8:	000a8513          	mv	a0,s5
    1dfc:	fffff097          	auipc	ra,0xfffff
    1e00:	b2c080e7          	jalr	-1236(ra) # 928 <strlen>
    1e04:	40a40433          	sub	s0,s0,a0
    1e08:	008a5463          	bge	s4,s0,1e10 <fatfs_split_path+0xc8>
    1e0c:	000a0413          	mv	s0,s4
    1e10:	00048513          	mv	a0,s1
    1e14:	00040613          	mv	a2,s0
    1e18:	00098593          	mv	a1,s3
    1e1c:	008484b3          	add	s1,s1,s0
    1e20:	fffff097          	auipc	ra,0xfffff
    1e24:	ae4080e7          	jalr	-1308(ra) # 904 <memcpy>
    1e28:	fe048fa3          	sb	zero,-1(s1)
    1e2c:	f69ff06f          	j	1d94 <fatfs_split_path+0x4c>

00001e30 <fatfs_compare_names>:
    1e30:	fd010113          	addi	sp,sp,-48
    1e34:	02112623          	sw	ra,44(sp)
    1e38:	02812423          	sw	s0,40(sp)
    1e3c:	02912223          	sw	s1,36(sp)
    1e40:	03212023          	sw	s2,32(sp)
    1e44:	01312e23          	sw	s3,28(sp)
    1e48:	00058913          	mv	s2,a1
    1e4c:	01412c23          	sw	s4,24(sp)
    1e50:	01512a23          	sw	s5,20(sp)
    1e54:	01612823          	sw	s6,16(sp)
    1e58:	00050a13          	mv	s4,a0
    1e5c:	fffff097          	auipc	ra,0xfffff
    1e60:	294080e7          	jalr	660(ra) # 10f0 <FileString_GetExtension>
    1e64:	00050493          	mv	s1,a0
    1e68:	00090513          	mv	a0,s2
    1e6c:	fffff097          	auipc	ra,0xfffff
    1e70:	284080e7          	jalr	644(ra) # 10f0 <FileString_GetExtension>
    1e74:	fff00793          	li	a5,-1
    1e78:	00050413          	mv	s0,a0
    1e7c:	00000993          	li	s3,0
    1e80:	08f49a63          	bne	s1,a5,1f14 <fatfs_compare_names+0xe4>
    1e84:	0c951e63          	bne	a0,s1,1f60 <fatfs_compare_names+0x130>
    1e88:	000a0513          	mv	a0,s4
    1e8c:	fffff097          	auipc	ra,0xfffff
    1e90:	a9c080e7          	jalr	-1380(ra) # 928 <strlen>
    1e94:	00050493          	mv	s1,a0
    1e98:	00090513          	mv	a0,s2
    1e9c:	fffff097          	auipc	ra,0xfffff
    1ea0:	a8c080e7          	jalr	-1396(ra) # 928 <strlen>
    1ea4:	00050413          	mv	s0,a0
    1ea8:	fff48793          	addi	a5,s1,-1
    1eac:	00fa07b3          	add	a5,s4,a5
    1eb0:	40978733          	sub	a4,a5,s1
    1eb4:	02000613          	li	a2,32
    1eb8:	00078693          	mv	a3,a5
    1ebc:	00e78863          	beq	a5,a4,1ecc <fatfs_compare_names+0x9c>
    1ec0:	0007c583          	lbu	a1,0(a5)
    1ec4:	fff78793          	addi	a5,a5,-1
    1ec8:	0cc58263          	beq	a1,a2,1f8c <fatfs_compare_names+0x15c>
    1ecc:	fff40793          	addi	a5,s0,-1
    1ed0:	00f907b3          	add	a5,s2,a5
    1ed4:	40878733          	sub	a4,a5,s0
    1ed8:	02000613          	li	a2,32
    1edc:	00078693          	mv	a3,a5
    1ee0:	00e78863          	beq	a5,a4,1ef0 <fatfs_compare_names+0xc0>
    1ee4:	0007c583          	lbu	a1,0(a5)
    1ee8:	fff78793          	addi	a5,a5,-1
    1eec:	0ac58463          	beq	a1,a2,1f94 <fatfs_compare_names+0x164>
    1ef0:	00000993          	li	s3,0
    1ef4:	06941663          	bne	s0,s1,1f60 <fatfs_compare_names+0x130>
    1ef8:	00040613          	mv	a2,s0
    1efc:	00090593          	mv	a1,s2
    1f00:	000a0513          	mv	a0,s4
    1f04:	fffff097          	auipc	ra,0xfffff
    1f08:	17c080e7          	jalr	380(ra) # 1080 <FileString_StrCmpNoCase>
    1f0c:	00153993          	seqz	s3,a0
    1f10:	0500006f          	j	1f60 <fatfs_compare_names+0x130>
    1f14:	04f50663          	beq	a0,a5,1f60 <fatfs_compare_names+0x130>
    1f18:	00148a93          	addi	s5,s1,1
    1f1c:	015a0ab3          	add	s5,s4,s5
    1f20:	00150b13          	addi	s6,a0,1
    1f24:	000a8513          	mv	a0,s5
    1f28:	fffff097          	auipc	ra,0xfffff
    1f2c:	a00080e7          	jalr	-1536(ra) # 928 <strlen>
    1f30:	01690b33          	add	s6,s2,s6
    1f34:	00a12623          	sw	a0,12(sp)
    1f38:	000b0513          	mv	a0,s6
    1f3c:	fffff097          	auipc	ra,0xfffff
    1f40:	9ec080e7          	jalr	-1556(ra) # 928 <strlen>
    1f44:	00c12603          	lw	a2,12(sp)
    1f48:	00a61c63          	bne	a2,a0,1f60 <fatfs_compare_names+0x130>
    1f4c:	000b0593          	mv	a1,s6
    1f50:	000a8513          	mv	a0,s5
    1f54:	fffff097          	auipc	ra,0xfffff
    1f58:	12c080e7          	jalr	300(ra) # 1080 <FileString_StrCmpNoCase>
    1f5c:	f40506e3          	beqz	a0,1ea8 <fatfs_compare_names+0x78>
    1f60:	02c12083          	lw	ra,44(sp)
    1f64:	02812403          	lw	s0,40(sp)
    1f68:	02412483          	lw	s1,36(sp)
    1f6c:	02012903          	lw	s2,32(sp)
    1f70:	01812a03          	lw	s4,24(sp)
    1f74:	01412a83          	lw	s5,20(sp)
    1f78:	01012b03          	lw	s6,16(sp)
    1f7c:	00098513          	mv	a0,s3
    1f80:	01c12983          	lw	s3,28(sp)
    1f84:	03010113          	addi	sp,sp,48
    1f88:	00008067          	ret
    1f8c:	414684b3          	sub	s1,a3,s4
    1f90:	f29ff06f          	j	1eb8 <fatfs_compare_names+0x88>
    1f94:	41268433          	sub	s0,a3,s2
    1f98:	f45ff06f          	j	1edc <fatfs_compare_names+0xac>

00001f9c <_check_file_open>:
    1f9c:	fe010113          	addi	sp,sp,-32
    1fa0:	000047b7          	lui	a5,0x4
    1fa4:	00812c23          	sw	s0,24(sp)
    1fa8:	2f07a403          	lw	s0,752(a5) # 42f0 <_open_file_list>
    1fac:	00912a23          	sw	s1,20(sp)
    1fb0:	01212823          	sw	s2,16(sp)
    1fb4:	01312623          	sw	s3,12(sp)
    1fb8:	00112e23          	sw	ra,28(sp)
    1fbc:	00050493          	mv	s1,a0
    1fc0:	01450913          	addi	s2,a0,20
    1fc4:	11850993          	addi	s3,a0,280
    1fc8:	02041263          	bnez	s0,1fec <_check_file_open+0x50>
    1fcc:	00000513          	li	a0,0
    1fd0:	01c12083          	lw	ra,28(sp)
    1fd4:	01812403          	lw	s0,24(sp)
    1fd8:	01412483          	lw	s1,20(sp)
    1fdc:	01012903          	lw	s2,16(sp)
    1fe0:	00c12983          	lw	s3,12(sp)
    1fe4:	02010113          	addi	sp,sp,32
    1fe8:	00008067          	ret
    1fec:	bc440793          	addi	a5,s0,-1084
    1ff0:	02f48663          	beq	s1,a5,201c <_check_file_open+0x80>
    1ff4:	00090593          	mv	a1,s2
    1ff8:	bd840513          	addi	a0,s0,-1064
    1ffc:	00000097          	auipc	ra,0x0
    2000:	e34080e7          	jalr	-460(ra) # 1e30 <fatfs_compare_names>
    2004:	00050c63          	beqz	a0,201c <_check_file_open+0x80>
    2008:	00098593          	mv	a1,s3
    200c:	cdc40513          	addi	a0,s0,-804
    2010:	00000097          	auipc	ra,0x0
    2014:	e20080e7          	jalr	-480(ra) # 1e30 <fatfs_compare_names>
    2018:	00051663          	bnez	a0,2024 <_check_file_open+0x88>
    201c:	00442403          	lw	s0,4(s0)
    2020:	fa9ff06f          	j	1fc8 <_check_file_open+0x2c>
    2024:	00100513          	li	a0,1
    2028:	fa9ff06f          	j	1fd0 <_check_file_open+0x34>

0000202c <fatfs_fat_init>:
    202c:	ff010113          	addi	sp,sp,-16
    2030:	00812423          	sw	s0,8(sp)
    2034:	00912223          	sw	s1,4(sp)
    2038:	00112623          	sw	ra,12(sp)
    203c:	fff00793          	li	a5,-1
    2040:	25850493          	addi	s1,a0,600
    2044:	00050413          	mv	s0,a0
    2048:	44f52c23          	sw	a5,1112(a0)
    204c:	24052a23          	sw	zero,596(a0)
    2050:	44052e23          	sw	zero,1116(a0)
    2054:	20000613          	li	a2,512
    2058:	00048513          	mv	a0,s1
    205c:	00000593          	li	a1,0
    2060:	fffff097          	auipc	ra,0xfffff
    2064:	888080e7          	jalr	-1912(ra) # 8e8 <memset>
    2068:	25442783          	lw	a5,596(s0)
    206c:	00c12083          	lw	ra,12(sp)
    2070:	24942a23          	sw	s1,596(s0)
    2074:	46042023          	sw	zero,1120(s0)
    2078:	46f42223          	sw	a5,1124(s0)
    207c:	00812403          	lw	s0,8(sp)
    2080:	00412483          	lw	s1,4(sp)
    2084:	01010113          	addi	sp,sp,16
    2088:	00008067          	ret

0000208c <fatfs_init>:
    208c:	fd010113          	addi	sp,sp,-48
    2090:	02812423          	sw	s0,40(sp)
    2094:	02112623          	sw	ra,44(sp)
    2098:	02912223          	sw	s1,36(sp)
    209c:	03212023          	sw	s2,32(sp)
    20a0:	01312e23          	sw	s3,28(sp)
    20a4:	fff00793          	li	a5,-1
    20a8:	24f52223          	sw	a5,580(a0)
    20ac:	24052423          	sw	zero,584(a0)
    20b0:	02052223          	sw	zero,36(a0)
    20b4:	00050413          	mv	s0,a0
    20b8:	00000097          	auipc	ra,0x0
    20bc:	f74080e7          	jalr	-140(ra) # 202c <fatfs_fat_init>
    20c0:	03442783          	lw	a5,52(s0)
    20c4:	02079263          	bnez	a5,20e8 <fatfs_init+0x5c>
    20c8:	fff00513          	li	a0,-1
    20cc:	02c12083          	lw	ra,44(sp)
    20d0:	02812403          	lw	s0,40(sp)
    20d4:	02412483          	lw	s1,36(sp)
    20d8:	02012903          	lw	s2,32(sp)
    20dc:	01c12983          	lw	s3,28(sp)
    20e0:	03010113          	addi	sp,sp,48
    20e4:	00008067          	ret
    20e8:	04440593          	addi	a1,s0,68
    20ec:	00100613          	li	a2,1
    20f0:	00000513          	li	a0,0
    20f4:	00b12623          	sw	a1,12(sp)
    20f8:	000780e7          	jalr	a5
    20fc:	fc0506e3          	beqz	a0,20c8 <fatfs_init+0x3c>
    2100:	24042703          	lw	a4,576(s0)
    2104:	ffff07b7          	lui	a5,0xffff0
    2108:	00c12583          	lw	a1,12(sp)
    210c:	00e7f7b3          	and	a5,a5,a4
    2110:	aa550737          	lui	a4,0xaa550
    2114:	00e78663          	beq	a5,a4,2120 <fatfs_init+0x94>
    2118:	ffd00513          	li	a0,-3
    211c:	fb1ff06f          	j	20cc <fatfs_init+0x40>
    2120:	24245703          	lhu	a4,578(s0)
    2124:	0000b7b7          	lui	a5,0xb
    2128:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x22ed>
    212c:	ffc00513          	li	a0,-4
    2130:	f8f71ee3          	bne	a4,a5,20cc <fatfs_init+0x40>
    2134:	20644783          	lbu	a5,518(s0)
    2138:	00600713          	li	a4,6
    213c:	02f76463          	bltu	a4,a5,2164 <fatfs_init+0xd8>
    2140:	00400713          	li	a4,4
    2144:	00f76663          	bltu	a4,a5,2150 <fatfs_init+0xc4>
    2148:	00000513          	li	a0,0
    214c:	02078663          	beqz	a5,2178 <fatfs_init+0xec>
    2150:	20c45503          	lhu	a0,524(s0)
    2154:	20a45783          	lhu	a5,522(s0)
    2158:	01051513          	slli	a0,a0,0x10
    215c:	00f56533          	or	a0,a0,a5
    2160:	0180006f          	j	2178 <fatfs_init+0xec>
    2164:	00c00713          	li	a4,12
    2168:	12f76a63          	bltu	a4,a5,229c <fatfs_init+0x210>
    216c:	00a00713          	li	a4,10
    2170:	00000513          	li	a0,0
    2174:	fcf76ee3          	bltu	a4,a5,2150 <fatfs_init+0xc4>
    2178:	03442783          	lw	a5,52(s0)
    217c:	00a42e23          	sw	a0,28(s0)
    2180:	00100613          	li	a2,1
    2184:	000780e7          	jalr	a5
    2188:	f40500e3          	beqz	a0,20c8 <fatfs_init+0x3c>
    218c:	05044783          	lbu	a5,80(s0)
    2190:	04f44703          	lbu	a4,79(s0)
    2194:	ffe00513          	li	a0,-2
    2198:	00879793          	slli	a5,a5,0x8
    219c:	00e7e7b3          	or	a5,a5,a4
    21a0:	20000713          	li	a4,512
    21a4:	f2e794e3          	bne	a5,a4,20cc <fatfs_init+0x40>
    21a8:	05644483          	lbu	s1,86(s0)
    21ac:	05544783          	lbu	a5,85(s0)
    21b0:	05144983          	lbu	s3,81(s0)
    21b4:	00849493          	slli	s1,s1,0x8
    21b8:	05a45583          	lhu	a1,90(s0)
    21bc:	00f4e4b3          	or	s1,s1,a5
    21c0:	01340023          	sb	s3,0(s0)
    21c4:	02941423          	sh	s1,40(s0)
    21c8:	05245903          	lhu	s2,82(s0)
    21cc:	05444503          	lbu	a0,84(s0)
    21d0:	00059463          	bnez	a1,21d8 <fatfs_init+0x14c>
    21d4:	06842583          	lw	a1,104(s0)
    21d8:	07042783          	lw	a5,112(s0)
    21dc:	02b42023          	sw	a1,32(s0)
    21e0:	00549493          	slli	s1,s1,0x5
    21e4:	00f42423          	sw	a5,8(s0)
    21e8:	07445783          	lhu	a5,116(s0)
    21ec:	1ff48493          	addi	s1,s1,511
    21f0:	4094d493          	srai	s1,s1,0x9
    21f4:	00f41c23          	sh	a5,24(s0)
    21f8:	fffff097          	auipc	ra,0xfffff
    21fc:	df4080e7          	jalr	-524(ra) # fec <__mulsi3>
    2200:	00a907b3          	add	a5,s2,a0
    2204:	00f42623          	sw	a5,12(s0)
    2208:	01c42783          	lw	a5,28(s0)
    220c:	24245703          	lhu	a4,578(s0)
    2210:	00942823          	sw	s1,16(s0)
    2214:	00f907b3          	add	a5,s2,a5
    2218:	00f42a23          	sw	a5,20(s0)
    221c:	00f507b3          	add	a5,a0,a5
    2220:	00f42223          	sw	a5,4(s0)
    2224:	0000b7b7          	lui	a5,0xb
    2228:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x22ed>
    222c:	eef716e3          	bne	a4,a5,2118 <fatfs_init+0x8c>
    2230:	05844783          	lbu	a5,88(s0)
    2234:	05744703          	lbu	a4,87(s0)
    2238:	00879793          	slli	a5,a5,0x8
    223c:	00e7e7b3          	or	a5,a5,a4
    2240:	00079463          	bnez	a5,2248 <fatfs_init+0x1bc>
    2244:	06442783          	lw	a5,100(s0)
    2248:	00990933          	add	s2,s2,s1
    224c:	00a90533          	add	a0,s2,a0
    2250:	40a787b3          	sub	a5,a5,a0
    2254:	ffb00513          	li	a0,-5
    2258:	e6098ae3          	beqz	s3,20cc <fatfs_init+0x40>
    225c:	00078513          	mv	a0,a5
    2260:	00098593          	mv	a1,s3
    2264:	ffffe097          	auipc	ra,0xffffe
    2268:	5d8080e7          	jalr	1496(ra) # 83c <__udivsi3>
    226c:	00001737          	lui	a4,0x1
    2270:	00050793          	mv	a5,a0
    2274:	ff470713          	addi	a4,a4,-12 # ff4 <__mulsi3+0x8>
    2278:	ffb00513          	li	a0,-5
    227c:	e4f778e3          	bgeu	a4,a5,20cc <fatfs_init+0x40>
    2280:	00010737          	lui	a4,0x10
    2284:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x788c>
    2288:	02f76663          	bltu	a4,a5,22b4 <fatfs_init+0x228>
    228c:	00042423          	sw	zero,8(s0)
    2290:	02042823          	sw	zero,48(s0)
    2294:	00000513          	li	a0,0
    2298:	e35ff06f          	j	20cc <fatfs_init+0x40>
    229c:	ff278793          	addi	a5,a5,-14
    22a0:	0ff7f793          	zext.b	a5,a5
    22a4:	00100713          	li	a4,1
    22a8:	00000513          	li	a0,0
    22ac:	eaf772e3          	bgeu	a4,a5,2150 <fatfs_init+0xc4>
    22b0:	ec9ff06f          	j	2178 <fatfs_init+0xec>
    22b4:	00100793          	li	a5,1
    22b8:	02f42823          	sw	a5,48(s0)
    22bc:	fd9ff06f          	j	2294 <fatfs_init+0x208>

000022c0 <fl_attach_media>:
    22c0:	000047b7          	lui	a5,0x4
    22c4:	2fc7a783          	lw	a5,764(a5) # 42fc <_filelib_init>
    22c8:	ff010113          	addi	sp,sp,-16
    22cc:	00812423          	sw	s0,8(sp)
    22d0:	00912223          	sw	s1,4(sp)
    22d4:	00112623          	sw	ra,12(sp)
    22d8:	00050493          	mv	s1,a0
    22dc:	00058413          	mv	s0,a1
    22e0:	00079663          	bnez	a5,22ec <fl_attach_media+0x2c>
    22e4:	fffff097          	auipc	ra,0xfffff
    22e8:	1a0080e7          	jalr	416(ra) # 1484 <fl_init>
    22ec:	00008537          	lui	a0,0x8
    22f0:	30050793          	addi	a5,a0,768 # 8300 <_fs>
    22f4:	30050513          	addi	a0,a0,768
    22f8:	0287ac23          	sw	s0,56(a5)
    22fc:	0297aa23          	sw	s1,52(a5)
    2300:	00000097          	auipc	ra,0x0
    2304:	d8c080e7          	jalr	-628(ra) # 208c <fatfs_init>
    2308:	00050413          	mv	s0,a0
    230c:	02050863          	beqz	a0,233c <fl_attach_media+0x7c>
    2310:	00050593          	mv	a1,a0
    2314:	00004537          	lui	a0,0x4
    2318:	08c50513          	addi	a0,a0,140 # 408c <OLED+0xdc>
    231c:	fffff097          	auipc	ra,0xfffff
    2320:	ba0080e7          	jalr	-1120(ra) # ebc <printf>
    2324:	00c12083          	lw	ra,12(sp)
    2328:	00040513          	mv	a0,s0
    232c:	00812403          	lw	s0,8(sp)
    2330:	00412483          	lw	s1,4(sp)
    2334:	01010113          	addi	sp,sp,16
    2338:	00008067          	ret
    233c:	000047b7          	lui	a5,0x4
    2340:	00100713          	li	a4,1
    2344:	2ee7ac23          	sw	a4,760(a5) # 42f8 <_filelib_valid>
    2348:	fddff06f          	j	2324 <fl_attach_media+0x64>

0000234c <fatfs_fat_purge>:
    234c:	ff010113          	addi	sp,sp,-16
    2350:	00812423          	sw	s0,8(sp)
    2354:	25452403          	lw	s0,596(a0)
    2358:	00912223          	sw	s1,4(sp)
    235c:	00112623          	sw	ra,12(sp)
    2360:	00050493          	mv	s1,a0
    2364:	00041663          	bnez	s0,2370 <fatfs_fat_purge+0x24>
    2368:	00100513          	li	a0,1
    236c:	0280006f          	j	2394 <fatfs_fat_purge+0x48>
    2370:	20442783          	lw	a5,516(s0)
    2374:	00079663          	bnez	a5,2380 <fatfs_fat_purge+0x34>
    2378:	20c42403          	lw	s0,524(s0)
    237c:	fe9ff06f          	j	2364 <fatfs_fat_purge+0x18>
    2380:	00040593          	mv	a1,s0
    2384:	00048513          	mv	a0,s1
    2388:	fffff097          	auipc	ra,0xfffff
    238c:	d94080e7          	jalr	-620(ra) # 111c <fatfs_fat_writeback>
    2390:	fe0514e3          	bnez	a0,2378 <fatfs_fat_purge+0x2c>
    2394:	00c12083          	lw	ra,12(sp)
    2398:	00812403          	lw	s0,8(sp)
    239c:	00412483          	lw	s1,4(sp)
    23a0:	01010113          	addi	sp,sp,16
    23a4:	00008067          	ret

000023a8 <fatfs_find_next_cluster>:
    23a8:	ff010113          	addi	sp,sp,-16
    23ac:	00812423          	sw	s0,8(sp)
    23b0:	01212023          	sw	s2,0(sp)
    23b4:	00112623          	sw	ra,12(sp)
    23b8:	00912223          	sw	s1,4(sp)
    23bc:	00050913          	mv	s2,a0
    23c0:	00200413          	li	s0,2
    23c4:	00058463          	beqz	a1,23cc <fatfs_find_next_cluster+0x24>
    23c8:	00058413          	mv	s0,a1
    23cc:	03092783          	lw	a5,48(s2)
    23d0:	00745493          	srli	s1,s0,0x7
    23d4:	00079463          	bnez	a5,23dc <fatfs_find_next_cluster+0x34>
    23d8:	00845493          	srli	s1,s0,0x8
    23dc:	01492583          	lw	a1,20(s2)
    23e0:	00090513          	mv	a0,s2
    23e4:	00b485b3          	add	a1,s1,a1
    23e8:	fffff097          	auipc	ra,0xfffff
    23ec:	db4080e7          	jalr	-588(ra) # 119c <fatfs_fat_read_sector>
    23f0:	00050793          	mv	a5,a0
    23f4:	fff00513          	li	a0,-1
    23f8:	04078a63          	beqz	a5,244c <fatfs_find_next_cluster+0xa4>
    23fc:	03092703          	lw	a4,48(s2)
    2400:	2087a783          	lw	a5,520(a5)
    2404:	06071063          	bnez	a4,2464 <fatfs_find_next_cluster+0xbc>
    2408:	00849493          	slli	s1,s1,0x8
    240c:	40940433          	sub	s0,s0,s1
    2410:	00010737          	lui	a4,0x10
    2414:	00141413          	slli	s0,s0,0x1
    2418:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x7896>
    241c:	00e47433          	and	s0,s0,a4
    2420:	008787b3          	add	a5,a5,s0
    2424:	0017c503          	lbu	a0,1(a5)
    2428:	0007c783          	lbu	a5,0(a5)
    242c:	00851513          	slli	a0,a0,0x8
    2430:	00f50533          	add	a0,a0,a5
    2434:	ffff07b7          	lui	a5,0xffff0
    2438:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    243c:	00f507b3          	add	a5,a0,a5
    2440:	00700713          	li	a4,7
    2444:	00f76463          	bltu	a4,a5,244c <fatfs_find_next_cluster+0xa4>
    2448:	fff00513          	li	a0,-1
    244c:	00c12083          	lw	ra,12(sp)
    2450:	00812403          	lw	s0,8(sp)
    2454:	00412483          	lw	s1,4(sp)
    2458:	00012903          	lw	s2,0(sp)
    245c:	01010113          	addi	sp,sp,16
    2460:	00008067          	ret
    2464:	00749493          	slli	s1,s1,0x7
    2468:	40940433          	sub	s0,s0,s1
    246c:	00010737          	lui	a4,0x10
    2470:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x7894>
    2474:	00241413          	slli	s0,s0,0x2
    2478:	00e47433          	and	s0,s0,a4
    247c:	008787b3          	add	a5,a5,s0
    2480:	0037c503          	lbu	a0,3(a5)
    2484:	0027c703          	lbu	a4,2(a5)
    2488:	01851513          	slli	a0,a0,0x18
    248c:	01071713          	slli	a4,a4,0x10
    2490:	00e50533          	add	a0,a0,a4
    2494:	0007c703          	lbu	a4,0(a5)
    2498:	0017c783          	lbu	a5,1(a5)
    249c:	00e50533          	add	a0,a0,a4
    24a0:	00879793          	slli	a5,a5,0x8
    24a4:	00f50533          	add	a0,a0,a5
    24a8:	00451513          	slli	a0,a0,0x4
    24ac:	00455513          	srli	a0,a0,0x4
    24b0:	f00007b7          	lui	a5,0xf0000
    24b4:	f85ff06f          	j	2438 <fatfs_find_next_cluster+0x90>

000024b8 <fatfs_sector_reader>:
    24b8:	03052783          	lw	a5,48(a0)
    24bc:	fd010113          	addi	sp,sp,-48
    24c0:	02812423          	sw	s0,40(sp)
    24c4:	03212023          	sw	s2,32(sp)
    24c8:	01312e23          	sw	s3,28(sp)
    24cc:	02112623          	sw	ra,44(sp)
    24d0:	02912223          	sw	s1,36(sp)
    24d4:	01412c23          	sw	s4,24(sp)
    24d8:	01512a23          	sw	s5,20(sp)
    24dc:	00f5e7b3          	or	a5,a1,a5
    24e0:	00050413          	mv	s0,a0
    24e4:	00060913          	mv	s2,a2
    24e8:	00068993          	mv	s3,a3
    24ec:	06079c63          	bnez	a5,2564 <fatfs_sector_reader+0xac>
    24f0:	01052783          	lw	a5,16(a0)
    24f4:	02f66663          	bltu	a2,a5,2520 <fatfs_sector_reader+0x68>
    24f8:	00000513          	li	a0,0
    24fc:	02c12083          	lw	ra,44(sp)
    2500:	02812403          	lw	s0,40(sp)
    2504:	02412483          	lw	s1,36(sp)
    2508:	02012903          	lw	s2,32(sp)
    250c:	01c12983          	lw	s3,28(sp)
    2510:	01812a03          	lw	s4,24(sp)
    2514:	01412a83          	lw	s5,20(sp)
    2518:	03010113          	addi	sp,sp,48
    251c:	00008067          	ret
    2520:	01c52503          	lw	a0,28(a0)
    2524:	00c42783          	lw	a5,12(s0)
    2528:	00f50533          	add	a0,a0,a5
    252c:	01250533          	add	a0,a0,s2
    2530:	0a098263          	beqz	s3,25d4 <fatfs_sector_reader+0x11c>
    2534:	03442783          	lw	a5,52(s0)
    2538:	00100613          	li	a2,1
    253c:	00098593          	mv	a1,s3
    2540:	02812403          	lw	s0,40(sp)
    2544:	02c12083          	lw	ra,44(sp)
    2548:	02412483          	lw	s1,36(sp)
    254c:	02012903          	lw	s2,32(sp)
    2550:	01c12983          	lw	s3,28(sp)
    2554:	01812a03          	lw	s4,24(sp)
    2558:	01412a83          	lw	s5,20(sp)
    255c:	03010113          	addi	sp,sp,48
    2560:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2564:	00058493          	mv	s1,a1
    2568:	00054583          	lbu	a1,0(a0)
    256c:	00060513          	mv	a0,a2
    2570:	00000a93          	li	s5,0
    2574:	00b12623          	sw	a1,12(sp)
    2578:	ffffe097          	auipc	ra,0xffffe
    257c:	2c4080e7          	jalr	708(ra) # 83c <__udivsi3>
    2580:	00c12583          	lw	a1,12(sp)
    2584:	00050a13          	mv	s4,a0
    2588:	00090513          	mv	a0,s2
    258c:	ffffe097          	auipc	ra,0xffffe
    2590:	2f8080e7          	jalr	760(ra) # 884 <__umodsi3>
    2594:	00050913          	mv	s2,a0
    2598:	034a9063          	bne	s5,s4,25b8 <fatfs_sector_reader+0x100>
    259c:	fff00793          	li	a5,-1
    25a0:	f4f48ce3          	beq	s1,a5,24f8 <fatfs_sector_reader+0x40>
    25a4:	00048593          	mv	a1,s1
    25a8:	00040513          	mv	a0,s0
    25ac:	fffff097          	auipc	ra,0xfffff
    25b0:	d9c080e7          	jalr	-612(ra) # 1348 <fatfs_lba_of_cluster>
    25b4:	f79ff06f          	j	252c <fatfs_sector_reader+0x74>
    25b8:	00048593          	mv	a1,s1
    25bc:	00040513          	mv	a0,s0
    25c0:	00000097          	auipc	ra,0x0
    25c4:	de8080e7          	jalr	-536(ra) # 23a8 <fatfs_find_next_cluster>
    25c8:	00050493          	mv	s1,a0
    25cc:	001a8a93          	addi	s5,s5,1
    25d0:	fc9ff06f          	j	2598 <fatfs_sector_reader+0xe0>
    25d4:	24442783          	lw	a5,580(s0)
    25d8:	00a78c63          	beq	a5,a0,25f0 <fatfs_sector_reader+0x138>
    25dc:	03442783          	lw	a5,52(s0)
    25e0:	24a42223          	sw	a0,580(s0)
    25e4:	00100613          	li	a2,1
    25e8:	04440593          	addi	a1,s0,68
    25ec:	f55ff06f          	j	2540 <fatfs_sector_reader+0x88>
    25f0:	00100513          	li	a0,1
    25f4:	f09ff06f          	j	24fc <fatfs_sector_reader+0x44>

000025f8 <fatfs_get_file_entry>:
    25f8:	eb010113          	addi	sp,sp,-336
    25fc:	14812423          	sw	s0,328(sp)
    2600:	01810413          	addi	s0,sp,24
    2604:	14912223          	sw	s1,324(sp)
    2608:	15212023          	sw	s2,320(sp)
    260c:	13312e23          	sw	s3,316(sp)
    2610:	13412c23          	sw	s4,312(sp)
    2614:	13512a23          	sw	s5,308(sp)
    2618:	13612823          	sw	s6,304(sp)
    261c:	14112623          	sw	ra,332(sp)
    2620:	13712623          	sw	s7,300(sp)
    2624:	13812423          	sw	s8,296(sp)
    2628:	13912223          	sw	s9,292(sp)
    262c:	13a12023          	sw	s10,288(sp)
    2630:	00050493          	mv	s1,a0
    2634:	00058a93          	mv	s5,a1
    2638:	00060913          	mv	s2,a2
    263c:	00068993          	mv	s3,a3
    2640:	10010ea3          	sb	zero,285(sp)
    2644:	11c10a13          	addi	s4,sp,284
    2648:	00040b13          	mv	s6,s0
    264c:	00040513          	mv	a0,s0
    2650:	00d00613          	li	a2,13
    2654:	00000593          	li	a1,0
    2658:	00d40413          	addi	s0,s0,13
    265c:	ffffe097          	auipc	ra,0xffffe
    2660:	28c080e7          	jalr	652(ra) # 8e8 <memset>
    2664:	ff4414e3          	bne	s0,s4,264c <fatfs_get_file_entry+0x54>
    2668:	00000a13          	li	s4,0
    266c:	24448c13          	addi	s8,s1,580
    2670:	00800c93          	li	s9,8
    2674:	02000b93          	li	s7,32
    2678:	02e00d13          	li	s10,46
    267c:	00000693          	li	a3,0
    2680:	000a0613          	mv	a2,s4
    2684:	000a8593          	mv	a1,s5
    2688:	00048513          	mv	a0,s1
    268c:	00000097          	auipc	ra,0x0
    2690:	e2c080e7          	jalr	-468(ra) # 24b8 <fatfs_sector_reader>
    2694:	16050463          	beqz	a0,27fc <fatfs_get_file_entry+0x204>
    2698:	04448413          	addi	s0,s1,68
    269c:	00040513          	mv	a0,s0
    26a0:	fffff097          	auipc	ra,0xfffff
    26a4:	f5c080e7          	jalr	-164(ra) # 15fc <fatfs_entry_lfn_text>
    26a8:	02050263          	beqz	a0,26cc <fatfs_get_file_entry+0xd4>
    26ac:	00040593          	mv	a1,s0
    26b0:	000b0513          	mv	a0,s6
    26b4:	fffff097          	auipc	ra,0xfffff
    26b8:	e40080e7          	jalr	-448(ra) # 14f4 <fatfs_lfn_cache_entry>
    26bc:	02040413          	addi	s0,s0,32
    26c0:	fd841ee3          	bne	s0,s8,269c <fatfs_get_file_entry+0xa4>
    26c4:	001a0a13          	addi	s4,s4,1
    26c8:	fb5ff06f          	j	267c <fatfs_get_file_entry+0x84>
    26cc:	00040513          	mv	a0,s0
    26d0:	fffff097          	auipc	ra,0xfffff
    26d4:	f40080e7          	jalr	-192(ra) # 1610 <fatfs_entry_lfn_invalid>
    26d8:	00050663          	beqz	a0,26e4 <fatfs_get_file_entry+0xec>
    26dc:	10010ea3          	sb	zero,285(sp)
    26e0:	fddff06f          	j	26bc <fatfs_get_file_entry+0xc4>
    26e4:	00040593          	mv	a1,s0
    26e8:	000b0513          	mv	a0,s6
    26ec:	fffff097          	auipc	ra,0xfffff
    26f0:	f5c080e7          	jalr	-164(ra) # 1648 <fatfs_entry_lfn_exists>
    26f4:	06050863          	beqz	a0,2764 <fatfs_get_file_entry+0x16c>
    26f8:	000b0513          	mv	a0,s6
    26fc:	fffff097          	auipc	ra,0xfffff
    2700:	ec4080e7          	jalr	-316(ra) # 15c0 <fatfs_lfn_cache_get>
    2704:	00090593          	mv	a1,s2
    2708:	fffff097          	auipc	ra,0xfffff
    270c:	728080e7          	jalr	1832(ra) # 1e30 <fatfs_compare_names>
    2710:	fc0506e3          	beqz	a0,26dc <fatfs_get_file_entry+0xe4>
    2714:	02000613          	li	a2,32
    2718:	00040593          	mv	a1,s0
    271c:	00098513          	mv	a0,s3
    2720:	ffffe097          	auipc	ra,0xffffe
    2724:	1e4080e7          	jalr	484(ra) # 904 <memcpy>
    2728:	00100513          	li	a0,1
    272c:	14c12083          	lw	ra,332(sp)
    2730:	14812403          	lw	s0,328(sp)
    2734:	14412483          	lw	s1,324(sp)
    2738:	14012903          	lw	s2,320(sp)
    273c:	13c12983          	lw	s3,316(sp)
    2740:	13812a03          	lw	s4,312(sp)
    2744:	13412a83          	lw	s5,308(sp)
    2748:	13012b03          	lw	s6,304(sp)
    274c:	12c12b83          	lw	s7,300(sp)
    2750:	12812c03          	lw	s8,296(sp)
    2754:	12412c83          	lw	s9,292(sp)
    2758:	12012d03          	lw	s10,288(sp)
    275c:	15010113          	addi	sp,sp,336
    2760:	00008067          	ret
    2764:	00040513          	mv	a0,s0
    2768:	fffff097          	auipc	ra,0xfffff
    276c:	f28080e7          	jalr	-216(ra) # 1690 <fatfs_entry_sfn_only>
    2770:	f40506e3          	beqz	a0,26bc <fatfs_get_file_entry+0xc4>
    2774:	00d00613          	li	a2,13
    2778:	00000593          	li	a1,0
    277c:	00810513          	addi	a0,sp,8
    2780:	ffffe097          	auipc	ra,0xffffe
    2784:	168080e7          	jalr	360(ra) # 8e8 <memset>
    2788:	00000793          	li	a5,0
    278c:	00f406b3          	add	a3,s0,a5
    2790:	0006c683          	lbu	a3,0(a3)
    2794:	00810713          	addi	a4,sp,8
    2798:	00f70733          	add	a4,a4,a5
    279c:	00d70023          	sb	a3,0(a4)
    27a0:	00178793          	addi	a5,a5,1
    27a4:	ff9794e3          	bne	a5,s9,278c <fatfs_get_file_entry+0x194>
    27a8:	00844783          	lbu	a5,8(s0)
    27ac:	00944683          	lbu	a3,9(s0)
    27b0:	00100713          	li	a4,1
    27b4:	00f108a3          	sb	a5,17(sp)
    27b8:	00d10923          	sb	a3,18(sp)
    27bc:	01769663          	bne	a3,s7,27c8 <fatfs_get_file_entry+0x1d0>
    27c0:	fe078793          	addi	a5,a5,-32
    27c4:	00f03733          	snez	a4,a5
    27c8:	00a44783          	lbu	a5,10(s0)
    27cc:	00f109a3          	sb	a5,19(sp)
    27d0:	01779663          	bne	a5,s7,27dc <fatfs_get_file_entry+0x1e4>
    27d4:	02000793          	li	a5,32
    27d8:	00070a63          	beqz	a4,27ec <fatfs_get_file_entry+0x1f4>
    27dc:	00814703          	lbu	a4,8(sp)
    27e0:	02e00793          	li	a5,46
    27e4:	01a71463          	bne	a4,s10,27ec <fatfs_get_file_entry+0x1f4>
    27e8:	02000793          	li	a5,32
    27ec:	00f10823          	sb	a5,16(sp)
    27f0:	00090593          	mv	a1,s2
    27f4:	00810513          	addi	a0,sp,8
    27f8:	f11ff06f          	j	2708 <fatfs_get_file_entry+0x110>
    27fc:	00000513          	li	a0,0
    2800:	f2dff06f          	j	272c <fatfs_get_file_entry+0x134>

00002804 <_open_directory>:
    2804:	eb010113          	addi	sp,sp,-336
    2808:	13512a23          	sw	s5,308(sp)
    280c:	00008ab7          	lui	s5,0x8
    2810:	300a8793          	addi	a5,s5,768 # 8300 <_fs>
    2814:	14812423          	sw	s0,328(sp)
    2818:	14912223          	sw	s1,324(sp)
    281c:	15212023          	sw	s2,320(sp)
    2820:	13312e23          	sw	s3,316(sp)
    2824:	13412c23          	sw	s4,312(sp)
    2828:	13612823          	sw	s6,304(sp)
    282c:	0087a403          	lw	s0,8(a5)
    2830:	14112623          	sw	ra,332(sp)
    2834:	00050a13          	mv	s4,a0
    2838:	00058913          	mv	s2,a1
    283c:	fffff097          	auipc	ra,0xfffff
    2840:	3a4080e7          	jalr	932(ra) # 1be0 <fatfs_total_path_levels>
    2844:	00050993          	mv	s3,a0
    2848:	00000493          	li	s1,0
    284c:	fff00b13          	li	s6,-1
    2850:	0099d863          	bge	s3,s1,2860 <_open_directory+0x5c>
    2854:	00892023          	sw	s0,0(s2)
    2858:	00100513          	li	a0,1
    285c:	0240006f          	j	2880 <_open_directory+0x7c>
    2860:	10400693          	li	a3,260
    2864:	02c10613          	addi	a2,sp,44
    2868:	00048593          	mv	a1,s1
    286c:	000a0513          	mv	a0,s4
    2870:	fffff097          	auipc	ra,0xfffff
    2874:	3e4080e7          	jalr	996(ra) # 1c54 <fatfs_get_substring>
    2878:	03651863          	bne	a0,s6,28a8 <_open_directory+0xa4>
    287c:	00000513          	li	a0,0
    2880:	14c12083          	lw	ra,332(sp)
    2884:	14812403          	lw	s0,328(sp)
    2888:	14412483          	lw	s1,324(sp)
    288c:	14012903          	lw	s2,320(sp)
    2890:	13c12983          	lw	s3,316(sp)
    2894:	13812a03          	lw	s4,312(sp)
    2898:	13412a83          	lw	s5,308(sp)
    289c:	13012b03          	lw	s6,304(sp)
    28a0:	15010113          	addi	sp,sp,336
    28a4:	00008067          	ret
    28a8:	00c10693          	addi	a3,sp,12
    28ac:	02c10613          	addi	a2,sp,44
    28b0:	00040593          	mv	a1,s0
    28b4:	300a8513          	addi	a0,s5,768
    28b8:	00000097          	auipc	ra,0x0
    28bc:	d40080e7          	jalr	-704(ra) # 25f8 <fatfs_get_file_entry>
    28c0:	fa050ee3          	beqz	a0,287c <_open_directory+0x78>
    28c4:	00c10513          	addi	a0,sp,12
    28c8:	fffff097          	auipc	ra,0xfffff
    28cc:	e04080e7          	jalr	-508(ra) # 16cc <fatfs_entry_is_dir>
    28d0:	fa0506e3          	beqz	a0,287c <_open_directory+0x78>
    28d4:	02015403          	lhu	s0,32(sp)
    28d8:	02615783          	lhu	a5,38(sp)
    28dc:	00148493          	addi	s1,s1,1
    28e0:	01041413          	slli	s0,s0,0x10
    28e4:	00f40433          	add	s0,s0,a5
    28e8:	f69ff06f          	j	2850 <_open_directory+0x4c>

000028ec <_open_file>:
    28ec:	fc010113          	addi	sp,sp,-64
    28f0:	03312623          	sw	s3,44(sp)
    28f4:	02112e23          	sw	ra,60(sp)
    28f8:	02812c23          	sw	s0,56(sp)
    28fc:	02912a23          	sw	s1,52(sp)
    2900:	03212823          	sw	s2,48(sp)
    2904:	00050993          	mv	s3,a0
    2908:	fffff097          	auipc	ra,0xfffff
    290c:	984080e7          	jalr	-1660(ra) # 128c <_allocate_file>
    2910:	06050463          	beqz	a0,2978 <_open_file+0x8c>
    2914:	01450913          	addi	s2,a0,20
    2918:	00050413          	mv	s0,a0
    291c:	10400613          	li	a2,260
    2920:	00000593          	li	a1,0
    2924:	00090513          	mv	a0,s2
    2928:	ffffe097          	auipc	ra,0xffffe
    292c:	fc0080e7          	jalr	-64(ra) # 8e8 <memset>
    2930:	11840493          	addi	s1,s0,280
    2934:	10400613          	li	a2,260
    2938:	00000593          	li	a1,0
    293c:	00048513          	mv	a0,s1
    2940:	ffffe097          	auipc	ra,0xffffe
    2944:	fa8080e7          	jalr	-88(ra) # 8e8 <memset>
    2948:	10400713          	li	a4,260
    294c:	00048693          	mv	a3,s1
    2950:	10400613          	li	a2,260
    2954:	00090593          	mv	a1,s2
    2958:	00098513          	mv	a0,s3
    295c:	fffff097          	auipc	ra,0xfffff
    2960:	3ec080e7          	jalr	1004(ra) # 1d48 <fatfs_split_path>
    2964:	fff00793          	li	a5,-1
    2968:	02f51a63          	bne	a0,a5,299c <_open_file+0xb0>
    296c:	00040513          	mv	a0,s0
    2970:	fffff097          	auipc	ra,0xfffff
    2974:	990080e7          	jalr	-1648(ra) # 1300 <_free_file>
    2978:	00000413          	li	s0,0
    297c:	03c12083          	lw	ra,60(sp)
    2980:	00040513          	mv	a0,s0
    2984:	03812403          	lw	s0,56(sp)
    2988:	03412483          	lw	s1,52(sp)
    298c:	03012903          	lw	s2,48(sp)
    2990:	02c12983          	lw	s3,44(sp)
    2994:	04010113          	addi	sp,sp,64
    2998:	00008067          	ret
    299c:	00040513          	mv	a0,s0
    29a0:	fffff097          	auipc	ra,0xfffff
    29a4:	5fc080e7          	jalr	1532(ra) # 1f9c <_check_file_open>
    29a8:	fc0512e3          	bnez	a0,296c <_open_file+0x80>
    29ac:	01444783          	lbu	a5,20(s0)
    29b0:	08079e63          	bnez	a5,2a4c <_open_file+0x160>
    29b4:	000087b7          	lui	a5,0x8
    29b8:	3087a783          	lw	a5,776(a5) # 8308 <_fs+0x8>
    29bc:	00f42023          	sw	a5,0(s0)
    29c0:	00042583          	lw	a1,0(s0)
    29c4:	00048613          	mv	a2,s1
    29c8:	000084b7          	lui	s1,0x8
    29cc:	00010693          	mv	a3,sp
    29d0:	30048513          	addi	a0,s1,768 # 8300 <_fs>
    29d4:	00000097          	auipc	ra,0x0
    29d8:	c24080e7          	jalr	-988(ra) # 25f8 <fatfs_get_file_entry>
    29dc:	f80508e3          	beqz	a0,296c <_open_file+0x80>
    29e0:	00010513          	mv	a0,sp
    29e4:	fffff097          	auipc	ra,0xfffff
    29e8:	cf8080e7          	jalr	-776(ra) # 16dc <fatfs_entry_is_file>
    29ec:	f80500e3          	beqz	a0,296c <_open_file+0x80>
    29f0:	00b00613          	li	a2,11
    29f4:	00010593          	mv	a1,sp
    29f8:	21c40513          	addi	a0,s0,540
    29fc:	ffffe097          	auipc	ra,0xffffe
    2a00:	f08080e7          	jalr	-248(ra) # 904 <memcpy>
    2a04:	01c12783          	lw	a5,28(sp)
    2a08:	01a15703          	lhu	a4,26(sp)
    2a0c:	00042423          	sw	zero,8(s0)
    2a10:	00f42623          	sw	a5,12(s0)
    2a14:	01415783          	lhu	a5,20(sp)
    2a18:	42042a23          	sw	zero,1076(s0)
    2a1c:	00042823          	sw	zero,16(s0)
    2a20:	01079793          	slli	a5,a5,0x10
    2a24:	00e787b3          	add	a5,a5,a4
    2a28:	00f42223          	sw	a5,4(s0)
    2a2c:	fff00793          	li	a5,-1
    2a30:	42f42823          	sw	a5,1072(s0)
    2a34:	22f42423          	sw	a5,552(s0)
    2a38:	22f42623          	sw	a5,556(s0)
    2a3c:	30048513          	addi	a0,s1,768
    2a40:	00000097          	auipc	ra,0x0
    2a44:	90c080e7          	jalr	-1780(ra) # 234c <fatfs_fat_purge>
    2a48:	f35ff06f          	j	297c <_open_file+0x90>
    2a4c:	00040593          	mv	a1,s0
    2a50:	00090513          	mv	a0,s2
    2a54:	00000097          	auipc	ra,0x0
    2a58:	db0080e7          	jalr	-592(ra) # 2804 <_open_directory>
    2a5c:	f60512e3          	bnez	a0,29c0 <_open_file+0xd4>
    2a60:	f0dff06f          	j	296c <_open_file+0x80>

00002a64 <fatfs_sfn_exists>:
    2a64:	fe010113          	addi	sp,sp,-32
    2a68:	00912a23          	sw	s1,20(sp)
    2a6c:	01212823          	sw	s2,16(sp)
    2a70:	01312623          	sw	s3,12(sp)
    2a74:	01412423          	sw	s4,8(sp)
    2a78:	01512223          	sw	s5,4(sp)
    2a7c:	00112e23          	sw	ra,28(sp)
    2a80:	00812c23          	sw	s0,24(sp)
    2a84:	00050493          	mv	s1,a0
    2a88:	00058993          	mv	s3,a1
    2a8c:	00060a13          	mv	s4,a2
    2a90:	00000913          	li	s2,0
    2a94:	24450a93          	addi	s5,a0,580
    2a98:	00000693          	li	a3,0
    2a9c:	00090613          	mv	a2,s2
    2aa0:	00098593          	mv	a1,s3
    2aa4:	00048513          	mv	a0,s1
    2aa8:	00000097          	auipc	ra,0x0
    2aac:	a10080e7          	jalr	-1520(ra) # 24b8 <fatfs_sector_reader>
    2ab0:	06050263          	beqz	a0,2b14 <fatfs_sfn_exists+0xb0>
    2ab4:	04448413          	addi	s0,s1,68
    2ab8:	00040513          	mv	a0,s0
    2abc:	fffff097          	auipc	ra,0xfffff
    2ac0:	b40080e7          	jalr	-1216(ra) # 15fc <fatfs_entry_lfn_text>
    2ac4:	02051e63          	bnez	a0,2b00 <fatfs_sfn_exists+0x9c>
    2ac8:	00040513          	mv	a0,s0
    2acc:	fffff097          	auipc	ra,0xfffff
    2ad0:	b44080e7          	jalr	-1212(ra) # 1610 <fatfs_entry_lfn_invalid>
    2ad4:	02051663          	bnez	a0,2b00 <fatfs_sfn_exists+0x9c>
    2ad8:	00040513          	mv	a0,s0
    2adc:	fffff097          	auipc	ra,0xfffff
    2ae0:	bb4080e7          	jalr	-1100(ra) # 1690 <fatfs_entry_sfn_only>
    2ae4:	00050e63          	beqz	a0,2b00 <fatfs_sfn_exists+0x9c>
    2ae8:	00b00613          	li	a2,11
    2aec:	000a0593          	mv	a1,s4
    2af0:	00040513          	mv	a0,s0
    2af4:	ffffe097          	auipc	ra,0xffffe
    2af8:	e54080e7          	jalr	-428(ra) # 948 <strncmp>
    2afc:	00050a63          	beqz	a0,2b10 <fatfs_sfn_exists+0xac>
    2b00:	02040413          	addi	s0,s0,32
    2b04:	fb541ae3          	bne	s0,s5,2ab8 <fatfs_sfn_exists+0x54>
    2b08:	00190913          	addi	s2,s2,1
    2b0c:	f8dff06f          	j	2a98 <fatfs_sfn_exists+0x34>
    2b10:	00100513          	li	a0,1
    2b14:	01c12083          	lw	ra,28(sp)
    2b18:	01812403          	lw	s0,24(sp)
    2b1c:	01412483          	lw	s1,20(sp)
    2b20:	01012903          	lw	s2,16(sp)
    2b24:	00c12983          	lw	s3,12(sp)
    2b28:	00812a03          	lw	s4,8(sp)
    2b2c:	00412a83          	lw	s5,4(sp)
    2b30:	02010113          	addi	sp,sp,32
    2b34:	00008067          	ret

00002b38 <fatfs_update_file_length>:
    2b38:	03852783          	lw	a5,56(a0)
    2b3c:	14078e63          	beqz	a5,2c98 <fatfs_update_file_length+0x160>
    2b40:	fd010113          	addi	sp,sp,-48
    2b44:	02912223          	sw	s1,36(sp)
    2b48:	03212023          	sw	s2,32(sp)
    2b4c:	01312e23          	sw	s3,28(sp)
    2b50:	01412c23          	sw	s4,24(sp)
    2b54:	01512a23          	sw	s5,20(sp)
    2b58:	01612823          	sw	s6,16(sp)
    2b5c:	01712623          	sw	s7,12(sp)
    2b60:	02112623          	sw	ra,44(sp)
    2b64:	02812423          	sw	s0,40(sp)
    2b68:	00050493          	mv	s1,a0
    2b6c:	00058a13          	mv	s4,a1
    2b70:	00060a93          	mv	s5,a2
    2b74:	00068913          	mv	s2,a3
    2b78:	00000993          	li	s3,0
    2b7c:	04450b93          	addi	s7,a0,68
    2b80:	24450b13          	addi	s6,a0,580
    2b84:	00000693          	li	a3,0
    2b88:	00098613          	mv	a2,s3
    2b8c:	000a0593          	mv	a1,s4
    2b90:	00048513          	mv	a0,s1
    2b94:	00000097          	auipc	ra,0x0
    2b98:	924080e7          	jalr	-1756(ra) # 24b8 <fatfs_sector_reader>
    2b9c:	0c050663          	beqz	a0,2c68 <fatfs_update_file_length+0x130>
    2ba0:	000b8413          	mv	s0,s7
    2ba4:	00040513          	mv	a0,s0
    2ba8:	fffff097          	auipc	ra,0xfffff
    2bac:	a54080e7          	jalr	-1452(ra) # 15fc <fatfs_entry_lfn_text>
    2bb0:	0a051463          	bnez	a0,2c58 <fatfs_update_file_length+0x120>
    2bb4:	00040513          	mv	a0,s0
    2bb8:	fffff097          	auipc	ra,0xfffff
    2bbc:	a58080e7          	jalr	-1448(ra) # 1610 <fatfs_entry_lfn_invalid>
    2bc0:	08051c63          	bnez	a0,2c58 <fatfs_update_file_length+0x120>
    2bc4:	00040513          	mv	a0,s0
    2bc8:	fffff097          	auipc	ra,0xfffff
    2bcc:	ac8080e7          	jalr	-1336(ra) # 1690 <fatfs_entry_sfn_only>
    2bd0:	08050463          	beqz	a0,2c58 <fatfs_update_file_length+0x120>
    2bd4:	00b00613          	li	a2,11
    2bd8:	000a8593          	mv	a1,s5
    2bdc:	00040513          	mv	a0,s0
    2be0:	ffffe097          	auipc	ra,0xffffe
    2be4:	d68080e7          	jalr	-664(ra) # 948 <strncmp>
    2be8:	06051863          	bnez	a0,2c58 <fatfs_update_file_length+0x120>
    2bec:	00895793          	srli	a5,s2,0x8
    2bf0:	01240e23          	sb	s2,28(s0)
    2bf4:	00f40ea3          	sb	a5,29(s0)
    2bf8:	01095793          	srli	a5,s2,0x10
    2bfc:	01895913          	srli	s2,s2,0x18
    2c00:	00f40f23          	sb	a5,30(s0)
    2c04:	01240fa3          	sb	s2,31(s0)
    2c08:	00040593          	mv	a1,s0
    2c0c:	02000613          	li	a2,32
    2c10:	00040513          	mv	a0,s0
    2c14:	ffffe097          	auipc	ra,0xffffe
    2c18:	cf0080e7          	jalr	-784(ra) # 904 <memcpy>
    2c1c:	02812403          	lw	s0,40(sp)
    2c20:	0384a783          	lw	a5,56(s1)
    2c24:	2444a503          	lw	a0,580(s1)
    2c28:	02c12083          	lw	ra,44(sp)
    2c2c:	02412483          	lw	s1,36(sp)
    2c30:	02012903          	lw	s2,32(sp)
    2c34:	01c12983          	lw	s3,28(sp)
    2c38:	01812a03          	lw	s4,24(sp)
    2c3c:	01412a83          	lw	s5,20(sp)
    2c40:	01012b03          	lw	s6,16(sp)
    2c44:	000b8593          	mv	a1,s7
    2c48:	00c12b83          	lw	s7,12(sp)
    2c4c:	00100613          	li	a2,1
    2c50:	03010113          	addi	sp,sp,48
    2c54:	00078067          	jr	a5
    2c58:	02040413          	addi	s0,s0,32
    2c5c:	f56414e3          	bne	s0,s6,2ba4 <fatfs_update_file_length+0x6c>
    2c60:	00198993          	addi	s3,s3,1
    2c64:	f21ff06f          	j	2b84 <fatfs_update_file_length+0x4c>
    2c68:	02c12083          	lw	ra,44(sp)
    2c6c:	02812403          	lw	s0,40(sp)
    2c70:	02412483          	lw	s1,36(sp)
    2c74:	02012903          	lw	s2,32(sp)
    2c78:	01c12983          	lw	s3,28(sp)
    2c7c:	01812a03          	lw	s4,24(sp)
    2c80:	01412a83          	lw	s5,20(sp)
    2c84:	01012b03          	lw	s6,16(sp)
    2c88:	00c12b83          	lw	s7,12(sp)
    2c8c:	00000513          	li	a0,0
    2c90:	03010113          	addi	sp,sp,48
    2c94:	00008067          	ret
    2c98:	00000513          	li	a0,0
    2c9c:	00008067          	ret

00002ca0 <_read_sectors>:
    2ca0:	fd010113          	addi	sp,sp,-48
    2ca4:	01612823          	sw	s6,16(sp)
    2ca8:	00008b37          	lui	s6,0x8
    2cac:	01512a23          	sw	s5,20(sp)
    2cb0:	300b4a83          	lbu	s5,768(s6) # 8300 <_fs>
    2cb4:	01412c23          	sw	s4,24(sp)
    2cb8:	00058a13          	mv	s4,a1
    2cbc:	02912223          	sw	s1,36(sp)
    2cc0:	000a8593          	mv	a1,s5
    2cc4:	00050493          	mv	s1,a0
    2cc8:	000a0513          	mv	a0,s4
    2ccc:	02112623          	sw	ra,44(sp)
    2cd0:	02812423          	sw	s0,40(sp)
    2cd4:	03212023          	sw	s2,32(sp)
    2cd8:	00068413          	mv	s0,a3
    2cdc:	01712623          	sw	s7,12(sp)
    2ce0:	01812423          	sw	s8,8(sp)
    2ce4:	01312e23          	sw	s3,28(sp)
    2ce8:	00060c13          	mv	s8,a2
    2cec:	ffffe097          	auipc	ra,0xffffe
    2cf0:	b50080e7          	jalr	-1200(ra) # 83c <__udivsi3>
    2cf4:	00050913          	mv	s2,a0
    2cf8:	000a8593          	mv	a1,s5
    2cfc:	000a0513          	mv	a0,s4
    2d00:	ffffe097          	auipc	ra,0xffffe
    2d04:	b84080e7          	jalr	-1148(ra) # 884 <__umodsi3>
    2d08:	00a407b3          	add	a5,s0,a0
    2d0c:	00050b93          	mv	s7,a0
    2d10:	00fafe63          	bgeu	s5,a5,2d2c <_read_sectors+0x8c>
    2d14:	00090593          	mv	a1,s2
    2d18:	000a8513          	mv	a0,s5
    2d1c:	ffffe097          	auipc	ra,0xffffe
    2d20:	2d0080e7          	jalr	720(ra) # fec <__mulsi3>
    2d24:	414a87b3          	sub	a5,s5,s4
    2d28:	00f50433          	add	s0,a0,a5
    2d2c:	2284a983          	lw	s3,552(s1)
    2d30:	07299863          	bne	s3,s2,2da0 <_read_sectors+0x100>
    2d34:	22c4a583          	lw	a1,556(s1)
    2d38:	fff00793          	li	a5,-1
    2d3c:	02f58663          	beq	a1,a5,2d68 <_read_sectors+0xc8>
    2d40:	300b0513          	addi	a0,s6,768
    2d44:	ffffe097          	auipc	ra,0xffffe
    2d48:	604080e7          	jalr	1540(ra) # 1348 <fatfs_lba_of_cluster>
    2d4c:	017505b3          	add	a1,a0,s7
    2d50:	00040693          	mv	a3,s0
    2d54:	000c0613          	mv	a2,s8
    2d58:	300b0513          	addi	a0,s6,768
    2d5c:	ffffe097          	auipc	ra,0xffffe
    2d60:	63c080e7          	jalr	1596(ra) # 1398 <fatfs_sector_read>
    2d64:	00051463          	bnez	a0,2d6c <_read_sectors+0xcc>
    2d68:	00000413          	li	s0,0
    2d6c:	02c12083          	lw	ra,44(sp)
    2d70:	00040513          	mv	a0,s0
    2d74:	02812403          	lw	s0,40(sp)
    2d78:	02412483          	lw	s1,36(sp)
    2d7c:	02012903          	lw	s2,32(sp)
    2d80:	01c12983          	lw	s3,28(sp)
    2d84:	01812a03          	lw	s4,24(sp)
    2d88:	01412a83          	lw	s5,20(sp)
    2d8c:	01012b03          	lw	s6,16(sp)
    2d90:	00c12b83          	lw	s7,12(sp)
    2d94:	00812c03          	lw	s8,8(sp)
    2d98:	03010113          	addi	sp,sp,48
    2d9c:	00008067          	ret
    2da0:	035a6463          	bltu	s4,s5,2dc8 <_read_sectors+0x128>
    2da4:	00198793          	addi	a5,s3,1
    2da8:	03279063          	bne	a5,s2,2dc8 <_read_sectors+0x128>
    2dac:	22c4a583          	lw	a1,556(s1)
    2db0:	0329e263          	bltu	s3,s2,2dd4 <_read_sectors+0x134>
    2db4:	fff00793          	li	a5,-1
    2db8:	faf588e3          	beq	a1,a5,2d68 <_read_sectors+0xc8>
    2dbc:	22b4a623          	sw	a1,556(s1)
    2dc0:	2324a423          	sw	s2,552(s1)
    2dc4:	f7dff06f          	j	2d40 <_read_sectors+0xa0>
    2dc8:	0044a583          	lw	a1,4(s1)
    2dcc:	00000993          	li	s3,0
    2dd0:	fe1ff06f          	j	2db0 <_read_sectors+0x110>
    2dd4:	300b0513          	addi	a0,s6,768
    2dd8:	fffff097          	auipc	ra,0xfffff
    2ddc:	5d0080e7          	jalr	1488(ra) # 23a8 <fatfs_find_next_cluster>
    2de0:	00050593          	mv	a1,a0
    2de4:	00198993          	addi	s3,s3,1
    2de8:	fc9ff06f          	j	2db0 <_read_sectors+0x110>

00002dec <fatfs_set_fs_info_next_free_cluster>:
    2dec:	03052783          	lw	a5,48(a0)
    2df0:	0a078863          	beqz	a5,2ea0 <fatfs_set_fs_info_next_free_cluster+0xb4>
    2df4:	ff010113          	addi	sp,sp,-16
    2df8:	01c52783          	lw	a5,28(a0)
    2dfc:	01212023          	sw	s2,0(sp)
    2e00:	00058913          	mv	s2,a1
    2e04:	01855583          	lhu	a1,24(a0)
    2e08:	00812423          	sw	s0,8(sp)
    2e0c:	00912223          	sw	s1,4(sp)
    2e10:	00f585b3          	add	a1,a1,a5
    2e14:	00112623          	sw	ra,12(sp)
    2e18:	00050493          	mv	s1,a0
    2e1c:	ffffe097          	auipc	ra,0xffffe
    2e20:	380080e7          	jalr	896(ra) # 119c <fatfs_fat_read_sector>
    2e24:	00050413          	mv	s0,a0
    2e28:	06050063          	beqz	a0,2e88 <fatfs_set_fs_info_next_free_cluster+0x9c>
    2e2c:	20852783          	lw	a5,520(a0)
    2e30:	00895713          	srli	a4,s2,0x8
    2e34:	1f278623          	sb	s2,492(a5)
    2e38:	20852783          	lw	a5,520(a0)
    2e3c:	1ee786a3          	sb	a4,493(a5)
    2e40:	20852783          	lw	a5,520(a0)
    2e44:	01095713          	srli	a4,s2,0x10
    2e48:	1ee78723          	sb	a4,494(a5)
    2e4c:	20852783          	lw	a5,520(a0)
    2e50:	01895713          	srli	a4,s2,0x18
    2e54:	1ee787a3          	sb	a4,495(a5)
    2e58:	00100793          	li	a5,1
    2e5c:	20f52223          	sw	a5,516(a0)
    2e60:	0384a783          	lw	a5,56(s1)
    2e64:	0324a223          	sw	s2,36(s1)
    2e68:	00078a63          	beqz	a5,2e7c <fatfs_set_fs_info_next_free_cluster+0x90>
    2e6c:	00050593          	mv	a1,a0
    2e70:	20052503          	lw	a0,512(a0)
    2e74:	00100613          	li	a2,1
    2e78:	000780e7          	jalr	a5
    2e7c:	fff00793          	li	a5,-1
    2e80:	20f42023          	sw	a5,512(s0)
    2e84:	20042223          	sw	zero,516(s0)
    2e88:	00c12083          	lw	ra,12(sp)
    2e8c:	00812403          	lw	s0,8(sp)
    2e90:	00412483          	lw	s1,4(sp)
    2e94:	00012903          	lw	s2,0(sp)
    2e98:	01010113          	addi	sp,sp,16
    2e9c:	00008067          	ret
    2ea0:	00008067          	ret

00002ea4 <fatfs_find_blank_cluster>:
    2ea4:	fe010113          	addi	sp,sp,-32
    2ea8:	01312623          	sw	s3,12(sp)
    2eac:	01512223          	sw	s5,4(sp)
    2eb0:	000109b7          	lui	s3,0x10
    2eb4:	10000ab7          	lui	s5,0x10000
    2eb8:	00912a23          	sw	s1,20(sp)
    2ebc:	01212823          	sw	s2,16(sp)
    2ec0:	01412423          	sw	s4,8(sp)
    2ec4:	00112e23          	sw	ra,28(sp)
    2ec8:	00812c23          	sw	s0,24(sp)
    2ecc:	00050913          	mv	s2,a0
    2ed0:	00058493          	mv	s1,a1
    2ed4:	00060a13          	mv	s4,a2
    2ed8:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x7897>
    2edc:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    2ee0:	03092783          	lw	a5,48(s2)
    2ee4:	0074d413          	srli	s0,s1,0x7
    2ee8:	00079463          	bnez	a5,2ef0 <fatfs_find_blank_cluster+0x4c>
    2eec:	0084d413          	srli	s0,s1,0x8
    2ef0:	02092783          	lw	a5,32(s2)
    2ef4:	0cf47463          	bgeu	s0,a5,2fbc <fatfs_find_blank_cluster+0x118>
    2ef8:	01492583          	lw	a1,20(s2)
    2efc:	00090513          	mv	a0,s2
    2f00:	00b405b3          	add	a1,s0,a1
    2f04:	ffffe097          	auipc	ra,0xffffe
    2f08:	298080e7          	jalr	664(ra) # 119c <fatfs_fat_read_sector>
    2f0c:	0a050863          	beqz	a0,2fbc <fatfs_find_blank_cluster+0x118>
    2f10:	03092783          	lw	a5,48(s2)
    2f14:	20852703          	lw	a4,520(a0)
    2f18:	04079c63          	bnez	a5,2f70 <fatfs_find_blank_cluster+0xcc>
    2f1c:	00841413          	slli	s0,s0,0x8
    2f20:	40848433          	sub	s0,s1,s0
    2f24:	00141413          	slli	s0,s0,0x1
    2f28:	01347433          	and	s0,s0,s3
    2f2c:	00870733          	add	a4,a4,s0
    2f30:	00174783          	lbu	a5,1(a4)
    2f34:	00074703          	lbu	a4,0(a4)
    2f38:	00879793          	slli	a5,a5,0x8
    2f3c:	00e787b3          	add	a5,a5,a4
    2f40:	06079a63          	bnez	a5,2fb4 <fatfs_find_blank_cluster+0x110>
    2f44:	009a2023          	sw	s1,0(s4)
    2f48:	00100513          	li	a0,1
    2f4c:	01c12083          	lw	ra,28(sp)
    2f50:	01812403          	lw	s0,24(sp)
    2f54:	01412483          	lw	s1,20(sp)
    2f58:	01012903          	lw	s2,16(sp)
    2f5c:	00c12983          	lw	s3,12(sp)
    2f60:	00812a03          	lw	s4,8(sp)
    2f64:	00412a83          	lw	s5,4(sp)
    2f68:	02010113          	addi	sp,sp,32
    2f6c:	00008067          	ret
    2f70:	00741413          	slli	s0,s0,0x7
    2f74:	40848433          	sub	s0,s1,s0
    2f78:	00241413          	slli	s0,s0,0x2
    2f7c:	01347433          	and	s0,s0,s3
    2f80:	00870733          	add	a4,a4,s0
    2f84:	00374783          	lbu	a5,3(a4)
    2f88:	00274683          	lbu	a3,2(a4)
    2f8c:	01879793          	slli	a5,a5,0x18
    2f90:	01069693          	slli	a3,a3,0x10
    2f94:	00d787b3          	add	a5,a5,a3
    2f98:	00074683          	lbu	a3,0(a4)
    2f9c:	00174703          	lbu	a4,1(a4)
    2fa0:	00d787b3          	add	a5,a5,a3
    2fa4:	00871713          	slli	a4,a4,0x8
    2fa8:	00e787b3          	add	a5,a5,a4
    2fac:	0157f7b3          	and	a5,a5,s5
    2fb0:	f91ff06f          	j	2f40 <fatfs_find_blank_cluster+0x9c>
    2fb4:	00148493          	addi	s1,s1,1
    2fb8:	f29ff06f          	j	2ee0 <fatfs_find_blank_cluster+0x3c>
    2fbc:	00000513          	li	a0,0
    2fc0:	f8dff06f          	j	2f4c <fatfs_find_blank_cluster+0xa8>

00002fc4 <fatfs_fat_set_cluster>:
    2fc4:	03052783          	lw	a5,48(a0)
    2fc8:	fe010113          	addi	sp,sp,-32
    2fcc:	00812c23          	sw	s0,24(sp)
    2fd0:	00912a23          	sw	s1,20(sp)
    2fd4:	01212823          	sw	s2,16(sp)
    2fd8:	01312623          	sw	s3,12(sp)
    2fdc:	00112e23          	sw	ra,28(sp)
    2fe0:	00050993          	mv	s3,a0
    2fe4:	00058413          	mv	s0,a1
    2fe8:	00060493          	mv	s1,a2
    2fec:	0085d913          	srli	s2,a1,0x8
    2ff0:	00078463          	beqz	a5,2ff8 <fatfs_fat_set_cluster+0x34>
    2ff4:	0075d913          	srli	s2,a1,0x7
    2ff8:	0149a583          	lw	a1,20(s3)
    2ffc:	00098513          	mv	a0,s3
    3000:	00b905b3          	add	a1,s2,a1
    3004:	ffffe097          	auipc	ra,0xffffe
    3008:	198080e7          	jalr	408(ra) # 119c <fatfs_fat_read_sector>
    300c:	00050693          	mv	a3,a0
    3010:	00000513          	li	a0,0
    3014:	04068c63          	beqz	a3,306c <fatfs_fat_set_cluster+0xa8>
    3018:	0309a703          	lw	a4,48(s3)
    301c:	2086a783          	lw	a5,520(a3)
    3020:	0ff4f613          	zext.b	a2,s1
    3024:	06071263          	bnez	a4,3088 <fatfs_fat_set_cluster+0xc4>
    3028:	00891913          	slli	s2,s2,0x8
    302c:	41240433          	sub	s0,s0,s2
    3030:	00010737          	lui	a4,0x10
    3034:	00141413          	slli	s0,s0,0x1
    3038:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x7896>
    303c:	00e47433          	and	s0,s0,a4
    3040:	008787b3          	add	a5,a5,s0
    3044:	00c78023          	sb	a2,0(a5)
    3048:	2086a783          	lw	a5,520(a3)
    304c:	01049493          	slli	s1,s1,0x10
    3050:	0104d493          	srli	s1,s1,0x10
    3054:	008787b3          	add	a5,a5,s0
    3058:	0084d493          	srli	s1,s1,0x8
    305c:	009780a3          	sb	s1,1(a5)
    3060:	00100793          	li	a5,1
    3064:	20f6a223          	sw	a5,516(a3)
    3068:	00100513          	li	a0,1
    306c:	01c12083          	lw	ra,28(sp)
    3070:	01812403          	lw	s0,24(sp)
    3074:	01412483          	lw	s1,20(sp)
    3078:	01012903          	lw	s2,16(sp)
    307c:	00c12983          	lw	s3,12(sp)
    3080:	02010113          	addi	sp,sp,32
    3084:	00008067          	ret
    3088:	00791913          	slli	s2,s2,0x7
    308c:	41240433          	sub	s0,s0,s2
    3090:	00010737          	lui	a4,0x10
    3094:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x7894>
    3098:	00241413          	slli	s0,s0,0x2
    309c:	00e47433          	and	s0,s0,a4
    30a0:	008787b3          	add	a5,a5,s0
    30a4:	00c78023          	sb	a2,0(a5)
    30a8:	2086a783          	lw	a5,520(a3)
    30ac:	0084d713          	srli	a4,s1,0x8
    30b0:	008787b3          	add	a5,a5,s0
    30b4:	00e780a3          	sb	a4,1(a5)
    30b8:	2086a783          	lw	a5,520(a3)
    30bc:	0104d713          	srli	a4,s1,0x10
    30c0:	0184d493          	srli	s1,s1,0x18
    30c4:	008787b3          	add	a5,a5,s0
    30c8:	00e78123          	sb	a4,2(a5)
    30cc:	2086a783          	lw	a5,520(a3)
    30d0:	008787b3          	add	a5,a5,s0
    30d4:	009781a3          	sb	s1,3(a5)
    30d8:	f89ff06f          	j	3060 <fatfs_fat_set_cluster+0x9c>

000030dc <fatfs_free_cluster_chain>:
    30dc:	fe010113          	addi	sp,sp,-32
    30e0:	00812c23          	sw	s0,24(sp)
    30e4:	01212823          	sw	s2,16(sp)
    30e8:	00112e23          	sw	ra,28(sp)
    30ec:	00912a23          	sw	s1,20(sp)
    30f0:	00050413          	mv	s0,a0
    30f4:	ffd00913          	li	s2,-3
    30f8:	fff58793          	addi	a5,a1,-1
    30fc:	02f97063          	bgeu	s2,a5,311c <fatfs_free_cluster_chain+0x40>
    3100:	01c12083          	lw	ra,28(sp)
    3104:	01812403          	lw	s0,24(sp)
    3108:	01412483          	lw	s1,20(sp)
    310c:	01012903          	lw	s2,16(sp)
    3110:	00100513          	li	a0,1
    3114:	02010113          	addi	sp,sp,32
    3118:	00008067          	ret
    311c:	00040513          	mv	a0,s0
    3120:	00b12623          	sw	a1,12(sp)
    3124:	fffff097          	auipc	ra,0xfffff
    3128:	284080e7          	jalr	644(ra) # 23a8 <fatfs_find_next_cluster>
    312c:	00c12583          	lw	a1,12(sp)
    3130:	00050493          	mv	s1,a0
    3134:	00000613          	li	a2,0
    3138:	00040513          	mv	a0,s0
    313c:	00000097          	auipc	ra,0x0
    3140:	e88080e7          	jalr	-376(ra) # 2fc4 <fatfs_fat_set_cluster>
    3144:	00048593          	mv	a1,s1
    3148:	fb1ff06f          	j	30f8 <fatfs_free_cluster_chain+0x1c>

0000314c <fatfs_fat_add_cluster_to_chain>:
    314c:	fff00793          	li	a5,-1
    3150:	02f59463          	bne	a1,a5,3178 <fatfs_fat_add_cluster_to_chain+0x2c>
    3154:	00000513          	li	a0,0
    3158:	00008067          	ret
    315c:	00000513          	li	a0,0
    3160:	01c12083          	lw	ra,28(sp)
    3164:	01812403          	lw	s0,24(sp)
    3168:	01412483          	lw	s1,20(sp)
    316c:	01012903          	lw	s2,16(sp)
    3170:	02010113          	addi	sp,sp,32
    3174:	00008067          	ret
    3178:	fe010113          	addi	sp,sp,-32
    317c:	00812c23          	sw	s0,24(sp)
    3180:	00912a23          	sw	s1,20(sp)
    3184:	01212823          	sw	s2,16(sp)
    3188:	00050413          	mv	s0,a0
    318c:	00112e23          	sw	ra,28(sp)
    3190:	00058513          	mv	a0,a1
    3194:	00060493          	mv	s1,a2
    3198:	fff00913          	li	s2,-1
    319c:	00050593          	mv	a1,a0
    31a0:	00a12623          	sw	a0,12(sp)
    31a4:	00040513          	mv	a0,s0
    31a8:	fffff097          	auipc	ra,0xfffff
    31ac:	200080e7          	jalr	512(ra) # 23a8 <fatfs_find_next_cluster>
    31b0:	fa0506e3          	beqz	a0,315c <fatfs_fat_add_cluster_to_chain+0x10>
    31b4:	00c12583          	lw	a1,12(sp)
    31b8:	ff2512e3          	bne	a0,s2,319c <fatfs_fat_add_cluster_to_chain+0x50>
    31bc:	00048613          	mv	a2,s1
    31c0:	00040513          	mv	a0,s0
    31c4:	00000097          	auipc	ra,0x0
    31c8:	e00080e7          	jalr	-512(ra) # 2fc4 <fatfs_fat_set_cluster>
    31cc:	fff00613          	li	a2,-1
    31d0:	00048593          	mv	a1,s1
    31d4:	00040513          	mv	a0,s0
    31d8:	00000097          	auipc	ra,0x0
    31dc:	dec080e7          	jalr	-532(ra) # 2fc4 <fatfs_fat_set_cluster>
    31e0:	00100513          	li	a0,1
    31e4:	f7dff06f          	j	3160 <fatfs_fat_add_cluster_to_chain+0x14>

000031e8 <fatfs_add_free_space>:
    31e8:	02452703          	lw	a4,36(a0)
    31ec:	fd010113          	addi	sp,sp,-48
    31f0:	02812423          	sw	s0,40(sp)
    31f4:	03212023          	sw	s2,32(sp)
    31f8:	01412c23          	sw	s4,24(sp)
    31fc:	01512a23          	sw	s5,20(sp)
    3200:	02112623          	sw	ra,44(sp)
    3204:	02912223          	sw	s1,36(sp)
    3208:	01312e23          	sw	s3,28(sp)
    320c:	fff00793          	li	a5,-1
    3210:	0005aa83          	lw	s5,0(a1)
    3214:	00050413          	mv	s0,a0
    3218:	00058913          	mv	s2,a1
    321c:	00060a13          	mv	s4,a2
    3220:	00f70863          	beq	a4,a5,3230 <fatfs_add_free_space+0x48>
    3224:	fff00593          	li	a1,-1
    3228:	00000097          	auipc	ra,0x0
    322c:	bc4080e7          	jalr	-1084(ra) # 2dec <fatfs_set_fs_info_next_free_cluster>
    3230:	00000493          	li	s1,0
    3234:	03449663          	bne	s1,s4,3260 <fatfs_add_free_space+0x78>
    3238:	00100513          	li	a0,1
    323c:	02c12083          	lw	ra,44(sp)
    3240:	02812403          	lw	s0,40(sp)
    3244:	02412483          	lw	s1,36(sp)
    3248:	02012903          	lw	s2,32(sp)
    324c:	01c12983          	lw	s3,28(sp)
    3250:	01812a03          	lw	s4,24(sp)
    3254:	01412a83          	lw	s5,20(sp)
    3258:	03010113          	addi	sp,sp,48
    325c:	00008067          	ret
    3260:	00842583          	lw	a1,8(s0)
    3264:	00c10613          	addi	a2,sp,12
    3268:	00040513          	mv	a0,s0
    326c:	00000097          	auipc	ra,0x0
    3270:	c38080e7          	jalr	-968(ra) # 2ea4 <fatfs_find_blank_cluster>
    3274:	fc0504e3          	beqz	a0,323c <fatfs_add_free_space+0x54>
    3278:	00c12983          	lw	s3,12(sp)
    327c:	000a8593          	mv	a1,s5
    3280:	00040513          	mv	a0,s0
    3284:	00098613          	mv	a2,s3
    3288:	00000097          	auipc	ra,0x0
    328c:	d3c080e7          	jalr	-708(ra) # 2fc4 <fatfs_fat_set_cluster>
    3290:	fff00613          	li	a2,-1
    3294:	00098593          	mv	a1,s3
    3298:	00040513          	mv	a0,s0
    329c:	00000097          	auipc	ra,0x0
    32a0:	d28080e7          	jalr	-728(ra) # 2fc4 <fatfs_fat_set_cluster>
    32a4:	00049463          	bnez	s1,32ac <fatfs_add_free_space+0xc4>
    32a8:	01392023          	sw	s3,0(s2)
    32ac:	00148493          	addi	s1,s1,1
    32b0:	00098a93          	mv	s5,s3
    32b4:	f81ff06f          	j	3234 <fatfs_add_free_space+0x4c>

000032b8 <_write_sectors>:
    32b8:	fb010113          	addi	sp,sp,-80
    32bc:	03312e23          	sw	s3,60(sp)
    32c0:	000089b7          	lui	s3,0x8
    32c4:	03612823          	sw	s6,48(sp)
    32c8:	3009cb03          	lbu	s6,768(s3) # 8300 <_fs>
    32cc:	03512a23          	sw	s5,52(sp)
    32d0:	00058a93          	mv	s5,a1
    32d4:	fff00793          	li	a5,-1
    32d8:	04812423          	sw	s0,72(sp)
    32dc:	000b0593          	mv	a1,s6
    32e0:	00050413          	mv	s0,a0
    32e4:	000a8513          	mv	a0,s5
    32e8:	00f12e23          	sw	a5,28(sp)
    32ec:	04112623          	sw	ra,76(sp)
    32f0:	04912223          	sw	s1,68(sp)
    32f4:	05212023          	sw	s2,64(sp)
    32f8:	03712623          	sw	s7,44(sp)
    32fc:	03812423          	sw	s8,40(sp)
    3300:	00068b93          	mv	s7,a3
    3304:	03912223          	sw	s9,36(sp)
    3308:	03a12023          	sw	s10,32(sp)
    330c:	00060c93          	mv	s9,a2
    3310:	03412c23          	sw	s4,56(sp)
    3314:	ffffd097          	auipc	ra,0xffffd
    3318:	528080e7          	jalr	1320(ra) # 83c <__udivsi3>
    331c:	00050493          	mv	s1,a0
    3320:	000b0593          	mv	a1,s6
    3324:	000a8513          	mv	a0,s5
    3328:	ffffd097          	auipc	ra,0xffffd
    332c:	55c080e7          	jalr	1372(ra) # 884 <__umodsi3>
    3330:	00ab87b3          	add	a5,s7,a0
    3334:	00050c13          	mv	s8,a0
    3338:	30098d13          	addi	s10,s3,768
    333c:	000b8913          	mv	s2,s7
    3340:	00fb7e63          	bgeu	s6,a5,335c <_write_sectors+0xa4>
    3344:	00048593          	mv	a1,s1
    3348:	000b0513          	mv	a0,s6
    334c:	ffffe097          	auipc	ra,0xffffe
    3350:	ca0080e7          	jalr	-864(ra) # fec <__mulsi3>
    3354:	415b07b3          	sub	a5,s6,s5
    3358:	00f50933          	add	s2,a0,a5
    335c:	22842a03          	lw	s4,552(s0)
    3360:	029a1a63          	bne	s4,s1,3394 <_write_sectors+0xdc>
    3364:	22c42583          	lw	a1,556(s0)
    3368:	30098513          	addi	a0,s3,768
    336c:	ffffe097          	auipc	ra,0xffffe
    3370:	fdc080e7          	jalr	-36(ra) # 1348 <fatfs_lba_of_cluster>
    3374:	018505b3          	add	a1,a0,s8
    3378:	00090693          	mv	a3,s2
    337c:	000c8613          	mv	a2,s9
    3380:	30098513          	addi	a0,s3,768
    3384:	ffffe097          	auipc	ra,0xffffe
    3388:	02c080e7          	jalr	44(ra) # 13b0 <fatfs_sector_write>
    338c:	04050a63          	beqz	a0,33e0 <_write_sectors+0x128>
    3390:	0540006f          	j	33e4 <_write_sectors+0x12c>
    3394:	096ae663          	bltu	s5,s6,3420 <_write_sectors+0x168>
    3398:	001a0793          	addi	a5,s4,1
    339c:	08979263          	bne	a5,s1,3420 <_write_sectors+0x168>
    33a0:	22c42583          	lw	a1,556(s0)
    33a4:	fff00a93          	li	s5,-1
    33a8:	089a6263          	bltu	s4,s1,342c <_write_sectors+0x174>
    33ac:	fff00793          	li	a5,-1
    33b0:	0af59463          	bne	a1,a5,3458 <_write_sectors+0x1a0>
    33b4:	000d4583          	lbu	a1,0(s10)
    33b8:	fff58513          	addi	a0,a1,-1
    33bc:	01750533          	add	a0,a0,s7
    33c0:	ffffd097          	auipc	ra,0xffffd
    33c4:	47c080e7          	jalr	1148(ra) # 83c <__udivsi3>
    33c8:	00050613          	mv	a2,a0
    33cc:	01c10593          	addi	a1,sp,28
    33d0:	30098513          	addi	a0,s3,768
    33d4:	00000097          	auipc	ra,0x0
    33d8:	e14080e7          	jalr	-492(ra) # 31e8 <fatfs_add_free_space>
    33dc:	06051c63          	bnez	a0,3454 <_write_sectors+0x19c>
    33e0:	00000913          	li	s2,0
    33e4:	04c12083          	lw	ra,76(sp)
    33e8:	04812403          	lw	s0,72(sp)
    33ec:	04412483          	lw	s1,68(sp)
    33f0:	03c12983          	lw	s3,60(sp)
    33f4:	03812a03          	lw	s4,56(sp)
    33f8:	03412a83          	lw	s5,52(sp)
    33fc:	03012b03          	lw	s6,48(sp)
    3400:	02c12b83          	lw	s7,44(sp)
    3404:	02812c03          	lw	s8,40(sp)
    3408:	02412c83          	lw	s9,36(sp)
    340c:	02012d03          	lw	s10,32(sp)
    3410:	00090513          	mv	a0,s2
    3414:	04012903          	lw	s2,64(sp)
    3418:	05010113          	addi	sp,sp,80
    341c:	00008067          	ret
    3420:	00442583          	lw	a1,4(s0)
    3424:	00000a13          	li	s4,0
    3428:	f7dff06f          	j	33a4 <_write_sectors+0xec>
    342c:	30098513          	addi	a0,s3,768
    3430:	00b12623          	sw	a1,12(sp)
    3434:	fffff097          	auipc	ra,0xfffff
    3438:	f74080e7          	jalr	-140(ra) # 23a8 <fatfs_find_next_cluster>
    343c:	00c12583          	lw	a1,12(sp)
    3440:	00b12e23          	sw	a1,28(sp)
    3444:	f75508e3          	beq	a0,s5,33b4 <_write_sectors+0xfc>
    3448:	001a0a13          	addi	s4,s4,1
    344c:	00050593          	mv	a1,a0
    3450:	f59ff06f          	j	33a8 <_write_sectors+0xf0>
    3454:	01c12583          	lw	a1,28(sp)
    3458:	22b42623          	sw	a1,556(s0)
    345c:	22942423          	sw	s1,552(s0)
    3460:	f09ff06f          	j	3368 <_write_sectors+0xb0>

00003464 <fl_fflush>:
    3464:	000047b7          	lui	a5,0x4
    3468:	2fc7a783          	lw	a5,764(a5) # 42fc <_filelib_init>
    346c:	ff010113          	addi	sp,sp,-16
    3470:	00812423          	sw	s0,8(sp)
    3474:	00112623          	sw	ra,12(sp)
    3478:	00912223          	sw	s1,4(sp)
    347c:	00050413          	mv	s0,a0
    3480:	00079663          	bnez	a5,348c <fl_fflush+0x28>
    3484:	ffffe097          	auipc	ra,0xffffe
    3488:	000080e7          	jalr	ra # 1484 <fl_init>
    348c:	04040863          	beqz	s0,34dc <fl_fflush+0x78>
    3490:	000087b7          	lui	a5,0x8
    3494:	30078713          	addi	a4,a5,768 # 8300 <_fs>
    3498:	03c72703          	lw	a4,60(a4)
    349c:	30078493          	addi	s1,a5,768
    34a0:	00070463          	beqz	a4,34a8 <fl_fflush+0x44>
    34a4:	000700e7          	jalr	a4
    34a8:	43442783          	lw	a5,1076(s0)
    34ac:	02078263          	beqz	a5,34d0 <fl_fflush+0x6c>
    34b0:	43042583          	lw	a1,1072(s0)
    34b4:	00100693          	li	a3,1
    34b8:	23040613          	addi	a2,s0,560
    34bc:	00040513          	mv	a0,s0
    34c0:	00000097          	auipc	ra,0x0
    34c4:	df8080e7          	jalr	-520(ra) # 32b8 <_write_sectors>
    34c8:	00050463          	beqz	a0,34d0 <fl_fflush+0x6c>
    34cc:	42042a23          	sw	zero,1076(s0)
    34d0:	0404a783          	lw	a5,64(s1)
    34d4:	00078463          	beqz	a5,34dc <fl_fflush+0x78>
    34d8:	000780e7          	jalr	a5
    34dc:	00c12083          	lw	ra,12(sp)
    34e0:	00812403          	lw	s0,8(sp)
    34e4:	00412483          	lw	s1,4(sp)
    34e8:	00000513          	li	a0,0
    34ec:	01010113          	addi	sp,sp,16
    34f0:	00008067          	ret

000034f4 <fl_fclose>:
    34f4:	000047b7          	lui	a5,0x4
    34f8:	2fc7a783          	lw	a5,764(a5) # 42fc <_filelib_init>
    34fc:	ff010113          	addi	sp,sp,-16
    3500:	00812423          	sw	s0,8(sp)
    3504:	00112623          	sw	ra,12(sp)
    3508:	00912223          	sw	s1,4(sp)
    350c:	01212023          	sw	s2,0(sp)
    3510:	00050413          	mv	s0,a0
    3514:	00079663          	bnez	a5,3520 <fl_fclose+0x2c>
    3518:	ffffe097          	auipc	ra,0xffffe
    351c:	f6c080e7          	jalr	-148(ra) # 1484 <fl_init>
    3520:	08040e63          	beqz	s0,35bc <fl_fclose+0xc8>
    3524:	000084b7          	lui	s1,0x8
    3528:	30048793          	addi	a5,s1,768 # 8300 <_fs>
    352c:	03c7a783          	lw	a5,60(a5)
    3530:	30048913          	addi	s2,s1,768
    3534:	00078463          	beqz	a5,353c <fl_fclose+0x48>
    3538:	000780e7          	jalr	a5
    353c:	00040513          	mv	a0,s0
    3540:	00000097          	auipc	ra,0x0
    3544:	f24080e7          	jalr	-220(ra) # 3464 <fl_fflush>
    3548:	01042783          	lw	a5,16(s0)
    354c:	00078e63          	beqz	a5,3568 <fl_fclose+0x74>
    3550:	00c42683          	lw	a3,12(s0)
    3554:	00042583          	lw	a1,0(s0)
    3558:	21c40613          	addi	a2,s0,540
    355c:	30048513          	addi	a0,s1,768
    3560:	fffff097          	auipc	ra,0xfffff
    3564:	5d8080e7          	jalr	1496(ra) # 2b38 <fatfs_update_file_length>
    3568:	fff00793          	li	a5,-1
    356c:	42f42823          	sw	a5,1072(s0)
    3570:	00040513          	mv	a0,s0
    3574:	00042423          	sw	zero,8(s0)
    3578:	00042623          	sw	zero,12(s0)
    357c:	00042223          	sw	zero,4(s0)
    3580:	42042a23          	sw	zero,1076(s0)
    3584:	00042823          	sw	zero,16(s0)
    3588:	ffffe097          	auipc	ra,0xffffe
    358c:	d78080e7          	jalr	-648(ra) # 1300 <_free_file>
    3590:	30048513          	addi	a0,s1,768
    3594:	fffff097          	auipc	ra,0xfffff
    3598:	db8080e7          	jalr	-584(ra) # 234c <fatfs_fat_purge>
    359c:	04092783          	lw	a5,64(s2)
    35a0:	00078e63          	beqz	a5,35bc <fl_fclose+0xc8>
    35a4:	00812403          	lw	s0,8(sp)
    35a8:	00c12083          	lw	ra,12(sp)
    35ac:	00412483          	lw	s1,4(sp)
    35b0:	00012903          	lw	s2,0(sp)
    35b4:	01010113          	addi	sp,sp,16
    35b8:	00078067          	jr	a5
    35bc:	00c12083          	lw	ra,12(sp)
    35c0:	00812403          	lw	s0,8(sp)
    35c4:	00412483          	lw	s1,4(sp)
    35c8:	00012903          	lw	s2,0(sp)
    35cc:	01010113          	addi	sp,sp,16
    35d0:	00008067          	ret

000035d4 <fl_fread>:
    35d4:	fd010113          	addi	sp,sp,-48
    35d8:	01612823          	sw	s6,16(sp)
    35dc:	00050b13          	mv	s6,a0
    35e0:	00058513          	mv	a0,a1
    35e4:	00060593          	mv	a1,a2
    35e8:	02812423          	sw	s0,40(sp)
    35ec:	02912223          	sw	s1,36(sp)
    35f0:	02112623          	sw	ra,44(sp)
    35f4:	03212023          	sw	s2,32(sp)
    35f8:	01312e23          	sw	s3,28(sp)
    35fc:	01412c23          	sw	s4,24(sp)
    3600:	01512a23          	sw	s5,20(sp)
    3604:	01712623          	sw	s7,12(sp)
    3608:	01812423          	sw	s8,8(sp)
    360c:	01912223          	sw	s9,4(sp)
    3610:	00068413          	mv	s0,a3
    3614:	ffffe097          	auipc	ra,0xffffe
    3618:	9d8080e7          	jalr	-1576(ra) # fec <__mulsi3>
    361c:	000047b7          	lui	a5,0x4
    3620:	2fc7a783          	lw	a5,764(a5) # 42fc <_filelib_init>
    3624:	00050493          	mv	s1,a0
    3628:	00079663          	bnez	a5,3634 <fl_fread+0x60>
    362c:	ffffe097          	auipc	ra,0xffffe
    3630:	e58080e7          	jalr	-424(ra) # 1484 <fl_init>
    3634:	120b0e63          	beqz	s6,3770 <fl_fread+0x19c>
    3638:	12040c63          	beqz	s0,3770 <fl_fread+0x19c>
    363c:	43844783          	lbu	a5,1080(s0)
    3640:	0017f793          	andi	a5,a5,1
    3644:	12078663          	beqz	a5,3770 <fl_fread+0x19c>
    3648:	0a048e63          	beqz	s1,3704 <fl_fread+0x130>
    364c:	00842583          	lw	a1,8(s0)
    3650:	00c42783          	lw	a5,12(s0)
    3654:	10f5fe63          	bgeu	a1,a5,3770 <fl_fread+0x19c>
    3658:	00b48733          	add	a4,s1,a1
    365c:	00e7f463          	bgeu	a5,a4,3664 <fl_fread+0x90>
    3660:	40b784b3          	sub	s1,a5,a1
    3664:	0095da13          	srli	s4,a1,0x9
    3668:	1ff5f913          	andi	s2,a1,511
    366c:	00000993          	li	s3,0
    3670:	23040b93          	addi	s7,s0,560
    3674:	20000c13          	li	s8,512
    3678:	1ff00c93          	li	s9,511
    367c:	0899d263          	bge	s3,s1,3700 <fl_fread+0x12c>
    3680:	04091463          	bnez	s2,36c8 <fl_fread+0xf4>
    3684:	413486b3          	sub	a3,s1,s3
    3688:	04dcd063          	bge	s9,a3,36c8 <fl_fread+0xf4>
    368c:	4096d693          	srai	a3,a3,0x9
    3690:	013b0633          	add	a2,s6,s3
    3694:	000a0593          	mv	a1,s4
    3698:	00040513          	mv	a0,s0
    369c:	fffff097          	auipc	ra,0xfffff
    36a0:	604080e7          	jalr	1540(ra) # 2ca0 <_read_sectors>
    36a4:	04050e63          	beqz	a0,3700 <fl_fread+0x12c>
    36a8:	00951a93          	slli	s5,a0,0x9
    36ac:	00aa0a33          	add	s4,s4,a0
    36b0:	00842783          	lw	a5,8(s0)
    36b4:	015989b3          	add	s3,s3,s5
    36b8:	00000913          	li	s2,0
    36bc:	015787b3          	add	a5,a5,s5
    36c0:	00f42423          	sw	a5,8(s0)
    36c4:	fb9ff06f          	j	367c <fl_fread+0xa8>
    36c8:	43042783          	lw	a5,1072(s0)
    36cc:	07478c63          	beq	a5,s4,3744 <fl_fread+0x170>
    36d0:	43442783          	lw	a5,1076(s0)
    36d4:	00078863          	beqz	a5,36e4 <fl_fread+0x110>
    36d8:	00040513          	mv	a0,s0
    36dc:	00000097          	auipc	ra,0x0
    36e0:	d88080e7          	jalr	-632(ra) # 3464 <fl_fflush>
    36e4:	00100693          	li	a3,1
    36e8:	000b8613          	mv	a2,s7
    36ec:	000a0593          	mv	a1,s4
    36f0:	00040513          	mv	a0,s0
    36f4:	fffff097          	auipc	ra,0xfffff
    36f8:	5ac080e7          	jalr	1452(ra) # 2ca0 <_read_sectors>
    36fc:	04051063          	bnez	a0,373c <fl_fread+0x168>
    3700:	00098493          	mv	s1,s3
    3704:	02c12083          	lw	ra,44(sp)
    3708:	02812403          	lw	s0,40(sp)
    370c:	02012903          	lw	s2,32(sp)
    3710:	01c12983          	lw	s3,28(sp)
    3714:	01812a03          	lw	s4,24(sp)
    3718:	01412a83          	lw	s5,20(sp)
    371c:	01012b03          	lw	s6,16(sp)
    3720:	00c12b83          	lw	s7,12(sp)
    3724:	00812c03          	lw	s8,8(sp)
    3728:	00412c83          	lw	s9,4(sp)
    372c:	00048513          	mv	a0,s1
    3730:	02412483          	lw	s1,36(sp)
    3734:	03010113          	addi	sp,sp,48
    3738:	00008067          	ret
    373c:	43442823          	sw	s4,1072(s0)
    3740:	42042a23          	sw	zero,1076(s0)
    3744:	412c07b3          	sub	a5,s8,s2
    3748:	41348ab3          	sub	s5,s1,s3
    374c:	0157d463          	bge	a5,s5,3754 <fl_fread+0x180>
    3750:	00078a93          	mv	s5,a5
    3754:	000a8613          	mv	a2,s5
    3758:	012b85b3          	add	a1,s7,s2
    375c:	013b0533          	add	a0,s6,s3
    3760:	ffffd097          	auipc	ra,0xffffd
    3764:	1a4080e7          	jalr	420(ra) # 904 <memcpy>
    3768:	001a0a13          	addi	s4,s4,1
    376c:	f45ff06f          	j	36b0 <fl_fread+0xdc>
    3770:	fff00493          	li	s1,-1
    3774:	f91ff06f          	j	3704 <fl_fread+0x130>

00003778 <fatfs_allocate_free_space>:
    3778:	02069a63          	bnez	a3,37ac <fatfs_allocate_free_space+0x34>
    377c:	00000513          	li	a0,0
    3780:	00008067          	ret
    3784:	00000513          	li	a0,0
    3788:	02c12083          	lw	ra,44(sp)
    378c:	02812403          	lw	s0,40(sp)
    3790:	02412483          	lw	s1,36(sp)
    3794:	02012903          	lw	s2,32(sp)
    3798:	01c12983          	lw	s3,28(sp)
    379c:	01812a03          	lw	s4,24(sp)
    37a0:	01412a83          	lw	s5,20(sp)
    37a4:	03010113          	addi	sp,sp,48
    37a8:	00008067          	ret
    37ac:	02452703          	lw	a4,36(a0)
    37b0:	fd010113          	addi	sp,sp,-48
    37b4:	02812423          	sw	s0,40(sp)
    37b8:	03212023          	sw	s2,32(sp)
    37bc:	01312e23          	sw	s3,28(sp)
    37c0:	01512a23          	sw	s5,20(sp)
    37c4:	02112623          	sw	ra,44(sp)
    37c8:	02912223          	sw	s1,36(sp)
    37cc:	01412c23          	sw	s4,24(sp)
    37d0:	fff00793          	li	a5,-1
    37d4:	00050413          	mv	s0,a0
    37d8:	00058a93          	mv	s5,a1
    37dc:	00060993          	mv	s3,a2
    37e0:	00068913          	mv	s2,a3
    37e4:	00f70863          	beq	a4,a5,37f4 <fatfs_allocate_free_space+0x7c>
    37e8:	fff00593          	li	a1,-1
    37ec:	fffff097          	auipc	ra,0xfffff
    37f0:	600080e7          	jalr	1536(ra) # 2dec <fatfs_set_fs_info_next_free_cluster>
    37f4:	00044a03          	lbu	s4,0(s0)
    37f8:	00090513          	mv	a0,s2
    37fc:	009a1a13          	slli	s4,s4,0x9
    3800:	000a0593          	mv	a1,s4
    3804:	ffffd097          	auipc	ra,0xffffd
    3808:	038080e7          	jalr	56(ra) # 83c <__udivsi3>
    380c:	00050493          	mv	s1,a0
    3810:	00050593          	mv	a1,a0
    3814:	000a0513          	mv	a0,s4
    3818:	ffffd097          	auipc	ra,0xffffd
    381c:	7d4080e7          	jalr	2004(ra) # fec <__mulsi3>
    3820:	01250463          	beq	a0,s2,3828 <fatfs_allocate_free_space+0xb0>
    3824:	00148493          	addi	s1,s1,1
    3828:	040a8463          	beqz	s5,3870 <fatfs_allocate_free_space+0xf8>
    382c:	00842583          	lw	a1,8(s0)
    3830:	00c10613          	addi	a2,sp,12
    3834:	00040513          	mv	a0,s0
    3838:	fffff097          	auipc	ra,0xfffff
    383c:	66c080e7          	jalr	1644(ra) # 2ea4 <fatfs_find_blank_cluster>
    3840:	f40502e3          	beqz	a0,3784 <fatfs_allocate_free_space+0xc>
    3844:	00100793          	li	a5,1
    3848:	02f49863          	bne	s1,a5,3878 <fatfs_allocate_free_space+0x100>
    384c:	00c12483          	lw	s1,12(sp)
    3850:	fff00613          	li	a2,-1
    3854:	00040513          	mv	a0,s0
    3858:	00048593          	mv	a1,s1
    385c:	fffff097          	auipc	ra,0xfffff
    3860:	768080e7          	jalr	1896(ra) # 2fc4 <fatfs_fat_set_cluster>
    3864:	00100513          	li	a0,1
    3868:	0099a023          	sw	s1,0(s3)
    386c:	f1dff06f          	j	3788 <fatfs_allocate_free_space+0x10>
    3870:	0009a783          	lw	a5,0(s3)
    3874:	00f12623          	sw	a5,12(sp)
    3878:	00048613          	mv	a2,s1
    387c:	00c10593          	addi	a1,sp,12
    3880:	00040513          	mv	a0,s0
    3884:	00000097          	auipc	ra,0x0
    3888:	964080e7          	jalr	-1692(ra) # 31e8 <fatfs_add_free_space>
    388c:	00a03533          	snez	a0,a0
    3890:	ef9ff06f          	j	3788 <fatfs_allocate_free_space+0x10>

00003894 <fatfs_add_file_entry>:
    3894:	f8010113          	addi	sp,sp,-128
    3898:	00f12a23          	sw	a5,20(sp)
    389c:	03852783          	lw	a5,56(a0)
    38a0:	06112e23          	sw	ra,124(sp)
    38a4:	06812c23          	sw	s0,120(sp)
    38a8:	06912a23          	sw	s1,116(sp)
    38ac:	07212823          	sw	s2,112(sp)
    38b0:	07312623          	sw	s3,108(sp)
    38b4:	07412423          	sw	s4,104(sp)
    38b8:	07512223          	sw	s5,100(sp)
    38bc:	07612023          	sw	s6,96(sp)
    38c0:	05712e23          	sw	s7,92(sp)
    38c4:	05812c23          	sw	s8,88(sp)
    38c8:	05912a23          	sw	s9,84(sp)
    38cc:	05a12823          	sw	s10,80(sp)
    38d0:	05b12623          	sw	s11,76(sp)
    38d4:	00b12423          	sw	a1,8(sp)
    38d8:	00c12623          	sw	a2,12(sp)
    38dc:	00e12823          	sw	a4,16(sp)
    38e0:	01012c23          	sw	a6,24(sp)
    38e4:	04079263          	bnez	a5,3928 <fatfs_add_file_entry+0x94>
    38e8:	00000513          	li	a0,0
    38ec:	07c12083          	lw	ra,124(sp)
    38f0:	07812403          	lw	s0,120(sp)
    38f4:	07412483          	lw	s1,116(sp)
    38f8:	07012903          	lw	s2,112(sp)
    38fc:	06c12983          	lw	s3,108(sp)
    3900:	06812a03          	lw	s4,104(sp)
    3904:	06412a83          	lw	s5,100(sp)
    3908:	06012b03          	lw	s6,96(sp)
    390c:	05c12b83          	lw	s7,92(sp)
    3910:	05812c03          	lw	s8,88(sp)
    3914:	05412c83          	lw	s9,84(sp)
    3918:	05012d03          	lw	s10,80(sp)
    391c:	04c12d83          	lw	s11,76(sp)
    3920:	08010113          	addi	sp,sp,128
    3924:	00008067          	ret
    3928:	00050413          	mv	s0,a0
    392c:	00c12503          	lw	a0,12(sp)
    3930:	00068a93          	mv	s5,a3
    3934:	ffffe097          	auipc	ra,0xffffe
    3938:	db8080e7          	jalr	-584(ra) # 16ec <fatfs_lfn_entries_required>
    393c:	00150713          	addi	a4,a0,1
    3940:	00100793          	li	a5,1
    3944:	00050493          	mv	s1,a0
    3948:	fae7f0e3          	bgeu	a5,a4,38e8 <fatfs_add_file_entry+0x54>
    394c:	00000913          	li	s2,0
    3950:	00000a13          	li	s4,0
    3954:	00000993          	li	s3,0
    3958:	00000b13          	li	s6,0
    395c:	00000d93          	li	s11,0
    3960:	0e500b93          	li	s7,229
    3964:	01000c13          	li	s8,16
    3968:	00812583          	lw	a1,8(sp)
    396c:	00000693          	li	a3,0
    3970:	00090613          	mv	a2,s2
    3974:	00040513          	mv	a0,s0
    3978:	fffff097          	auipc	ra,0xfffff
    397c:	b40080e7          	jalr	-1216(ra) # 24b8 <fatfs_sector_reader>
    3980:	14050463          	beqz	a0,3ac8 <fatfs_add_file_entry+0x234>
    3984:	04440d13          	addi	s10,s0,68
    3988:	000d8793          	mv	a5,s11
    398c:	00000c93          	li	s9,0
    3990:	000d0513          	mv	a0,s10
    3994:	00f12e23          	sw	a5,28(sp)
    3998:	ffffe097          	auipc	ra,0xffffe
    399c:	c64080e7          	jalr	-924(ra) # 15fc <fatfs_entry_lfn_text>
    39a0:	01c12783          	lw	a5,28(sp)
    39a4:	00050d93          	mv	s11,a0
    39a8:	02050c63          	beqz	a0,39e0 <fatfs_add_file_entry+0x14c>
    39ac:	00079863          	bnez	a5,39bc <fatfs_add_file_entry+0x128>
    39b0:	000c8a13          	mv	s4,s9
    39b4:	00090993          	mv	s3,s2
    39b8:	00100b13          	li	s6,1
    39bc:	00178d93          	addi	s11,a5,1
    39c0:	001c8713          	addi	a4,s9,1
    39c4:	0ff77c93          	zext.b	s9,a4
    39c8:	020d0d13          	addi	s10,s10,32
    39cc:	018c9663          	bne	s9,s8,39d8 <fatfs_add_file_entry+0x144>
    39d0:	00190913          	addi	s2,s2,1
    39d4:	f95ff06f          	j	3968 <fatfs_add_file_entry+0xd4>
    39d8:	000d8793          	mv	a5,s11
    39dc:	fb5ff06f          	j	3990 <fatfs_add_file_entry+0xfc>
    39e0:	000d4603          	lbu	a2,0(s10)
    39e4:	0d761c63          	bne	a2,s7,3abc <fatfs_add_file_entry+0x228>
    39e8:	00079863          	bnez	a5,39f8 <fatfs_add_file_entry+0x164>
    39ec:	000c8a13          	mv	s4,s9
    39f0:	00090993          	mv	s3,s2
    39f4:	00100b13          	li	s6,1
    39f8:	00178d93          	addi	s11,a5,1
    39fc:	fc97c2e3          	blt	a5,s1,39c0 <fatfs_add_file_entry+0x12c>
    3a00:	00ba8693          	addi	a3,s5,11
    3a04:	000a8713          	mv	a4,s5
    3a08:	00000913          	li	s2,0
    3a0c:	00074603          	lbu	a2,0(a4)
    3a10:	00195793          	srli	a5,s2,0x1
    3a14:	00791913          	slli	s2,s2,0x7
    3a18:	0127e7b3          	or	a5,a5,s2
    3a1c:	00170713          	addi	a4,a4,1
    3a20:	00c787b3          	add	a5,a5,a2
    3a24:	0ff7f913          	zext.b	s2,a5
    3a28:	fed712e3          	bne	a4,a3,3a0c <fatfs_add_file_entry+0x178>
    3a2c:	00098b13          	mv	s6,s3
    3a30:	00000d93          	li	s11,0
    3a34:	04440c13          	addi	s8,s0,68
    3a38:	01000c93          	li	s9,16
    3a3c:	00812583          	lw	a1,8(sp)
    3a40:	00000693          	li	a3,0
    3a44:	000b0613          	mv	a2,s6
    3a48:	00040513          	mv	a0,s0
    3a4c:	fffff097          	auipc	ra,0xfffff
    3a50:	a6c080e7          	jalr	-1428(ra) # 24b8 <fatfs_sector_reader>
    3a54:	e8050ae3          	beqz	a0,38e8 <fatfs_add_file_entry+0x54>
    3a58:	000c0b93          	mv	s7,s8
    3a5c:	00000713          	li	a4,0
    3a60:	00000d13          	li	s10,0
    3a64:	000d9663          	bnez	s11,3a70 <fatfs_add_file_entry+0x1dc>
    3a68:	11699863          	bne	s3,s6,3b78 <fatfs_add_file_entry+0x2e4>
    3a6c:	114d1663          	bne	s10,s4,3b78 <fatfs_add_file_entry+0x2e4>
    3a70:	0e049263          	bnez	s1,3b54 <fatfs_add_file_entry+0x2c0>
    3a74:	01812703          	lw	a4,24(sp)
    3a78:	01012603          	lw	a2,16(sp)
    3a7c:	01412583          	lw	a1,20(sp)
    3a80:	02010693          	addi	a3,sp,32
    3a84:	000a8513          	mv	a0,s5
    3a88:	ffffe097          	auipc	ra,0xffffe
    3a8c:	dbc080e7          	jalr	-580(ra) # 1844 <fatfs_sfn_create_entry>
    3a90:	02010593          	addi	a1,sp,32
    3a94:	02000613          	li	a2,32
    3a98:	000b8513          	mv	a0,s7
    3a9c:	ffffd097          	auipc	ra,0xffffd
    3aa0:	e68080e7          	jalr	-408(ra) # 904 <memcpy>
    3aa4:	03842783          	lw	a5,56(s0)
    3aa8:	24442503          	lw	a0,580(s0)
    3aac:	00100613          	li	a2,1
    3ab0:	000c0593          	mv	a1,s8
    3ab4:	000780e7          	jalr	a5
    3ab8:	e35ff06f          	j	38ec <fatfs_add_file_entry+0x58>
    3abc:	f20606e3          	beqz	a2,39e8 <fatfs_add_file_entry+0x154>
    3ac0:	00000b13          	li	s6,0
    3ac4:	efdff06f          	j	39c0 <fatfs_add_file_entry+0x12c>
    3ac8:	00842583          	lw	a1,8(s0)
    3acc:	02010613          	addi	a2,sp,32
    3ad0:	00040513          	mv	a0,s0
    3ad4:	fffff097          	auipc	ra,0xfffff
    3ad8:	3d0080e7          	jalr	976(ra) # 2ea4 <fatfs_find_blank_cluster>
    3adc:	e00506e3          	beqz	a0,38e8 <fatfs_add_file_entry+0x54>
    3ae0:	02012b83          	lw	s7,32(sp)
    3ae4:	00812583          	lw	a1,8(sp)
    3ae8:	00040513          	mv	a0,s0
    3aec:	000b8613          	mv	a2,s7
    3af0:	fffff097          	auipc	ra,0xfffff
    3af4:	65c080e7          	jalr	1628(ra) # 314c <fatfs_fat_add_cluster_to_chain>
    3af8:	de0508e3          	beqz	a0,38e8 <fatfs_add_file_entry+0x54>
    3afc:	20000613          	li	a2,512
    3b00:	00000593          	li	a1,0
    3b04:	04440513          	addi	a0,s0,68
    3b08:	ffffd097          	auipc	ra,0xffffd
    3b0c:	de0080e7          	jalr	-544(ra) # 8e8 <memset>
    3b10:	00000c13          	li	s8,0
    3b14:	00044783          	lbu	a5,0(s0)
    3b18:	00fc6a63          	bltu	s8,a5,3b2c <fatfs_add_file_entry+0x298>
    3b1c:	ee0b12e3          	bnez	s6,3a00 <fatfs_add_file_entry+0x16c>
    3b20:	00090993          	mv	s3,s2
    3b24:	00000a13          	li	s4,0
    3b28:	ed9ff06f          	j	3a00 <fatfs_add_file_entry+0x16c>
    3b2c:	00000693          	li	a3,0
    3b30:	000c0613          	mv	a2,s8
    3b34:	000b8593          	mv	a1,s7
    3b38:	00040513          	mv	a0,s0
    3b3c:	ffffe097          	auipc	ra,0xffffe
    3b40:	88c080e7          	jalr	-1908(ra) # 13c8 <fatfs_write_sector>
    3b44:	da0502e3          	beqz	a0,38e8 <fatfs_add_file_entry+0x54>
    3b48:	001c0c13          	addi	s8,s8,1
    3b4c:	0ffc7c13          	zext.b	s8,s8
    3b50:	fc5ff06f          	j	3b14 <fatfs_add_file_entry+0x280>
    3b54:	00c12503          	lw	a0,12(sp)
    3b58:	fff48493          	addi	s1,s1,-1
    3b5c:	00090693          	mv	a3,s2
    3b60:	00048613          	mv	a2,s1
    3b64:	000b8593          	mv	a1,s7
    3b68:	ffffe097          	auipc	ra,0xffffe
    3b6c:	bb4080e7          	jalr	-1100(ra) # 171c <fatfs_filename_to_lfn>
    3b70:	00100d93          	li	s11,1
    3b74:	00100713          	li	a4,1
    3b78:	001d0793          	addi	a5,s10,1
    3b7c:	0ff7fd13          	zext.b	s10,a5
    3b80:	020b8b93          	addi	s7,s7,32
    3b84:	ef9d10e3          	bne	s10,s9,3a64 <fatfs_add_file_entry+0x1d0>
    3b88:	00070e63          	beqz	a4,3ba4 <fatfs_add_file_entry+0x310>
    3b8c:	03842783          	lw	a5,56(s0)
    3b90:	24442503          	lw	a0,580(s0)
    3b94:	00100613          	li	a2,1
    3b98:	000c0593          	mv	a1,s8
    3b9c:	000780e7          	jalr	a5
    3ba0:	d40504e3          	beqz	a0,38e8 <fatfs_add_file_entry+0x54>
    3ba4:	001b0b13          	addi	s6,s6,1
    3ba8:	e95ff06f          	j	3a3c <fatfs_add_file_entry+0x1a8>

00003bac <fl_fopen>:
    3bac:	000047b7          	lui	a5,0x4
    3bb0:	2fc7a783          	lw	a5,764(a5) # 42fc <_filelib_init>
    3bb4:	fa010113          	addi	sp,sp,-96
    3bb8:	04812c23          	sw	s0,88(sp)
    3bbc:	05412423          	sw	s4,72(sp)
    3bc0:	04112e23          	sw	ra,92(sp)
    3bc4:	04912a23          	sw	s1,84(sp)
    3bc8:	05212823          	sw	s2,80(sp)
    3bcc:	05312623          	sw	s3,76(sp)
    3bd0:	05512223          	sw	s5,68(sp)
    3bd4:	05612023          	sw	s6,64(sp)
    3bd8:	03712e23          	sw	s7,60(sp)
    3bdc:	03812c23          	sw	s8,56(sp)
    3be0:	03912a23          	sw	s9,52(sp)
    3be4:	00050a13          	mv	s4,a0
    3be8:	00058413          	mv	s0,a1
    3bec:	00079663          	bnez	a5,3bf8 <fl_fopen+0x4c>
    3bf0:	ffffe097          	auipc	ra,0xffffe
    3bf4:	894080e7          	jalr	-1900(ra) # 1484 <fl_init>
    3bf8:	000047b7          	lui	a5,0x4
    3bfc:	2f87a783          	lw	a5,760(a5) # 42f8 <_filelib_valid>
    3c00:	36078c63          	beqz	a5,3f78 <fl_fopen+0x3cc>
    3c04:	360a0a63          	beqz	s4,3f78 <fl_fopen+0x3cc>
    3c08:	10040863          	beqz	s0,3d18 <fl_fopen+0x16c>
    3c0c:	00040513          	mv	a0,s0
    3c10:	ffffd097          	auipc	ra,0xffffd
    3c14:	d18080e7          	jalr	-744(ra) # 928 <strlen>
    3c18:	00000493          	li	s1,0
    3c1c:	00000713          	li	a4,0
    3c20:	05700693          	li	a3,87
    3c24:	07200613          	li	a2,114
    3c28:	07700813          	li	a6,119
    3c2c:	06100893          	li	a7,97
    3c30:	06200313          	li	t1,98
    3c34:	04100593          	li	a1,65
    3c38:	04200e13          	li	t3,66
    3c3c:	05200e93          	li	t4,82
    3c40:	02b00f13          	li	t5,43
    3c44:	10a74663          	blt	a4,a0,3d50 <fl_fopen+0x1a4>
    3c48:	00008937          	lui	s2,0x8
    3c4c:	30090793          	addi	a5,s2,768 # 8300 <_fs>
    3c50:	0387a783          	lw	a5,56(a5)
    3c54:	30090b13          	addi	s6,s2,768
    3c58:	00079463          	bnez	a5,3c60 <fl_fopen+0xb4>
    3c5c:	0d94f493          	andi	s1,s1,217
    3c60:	03cb2783          	lw	a5,60(s6)
    3c64:	00078463          	beqz	a5,3c6c <fl_fopen+0xc0>
    3c68:	000780e7          	jalr	a5
    3c6c:	0014fc93          	andi	s9,s1,1
    3c70:	160c9863          	bnez	s9,3de0 <fl_fopen+0x234>
    3c74:	0204f793          	andi	a5,s1,32
    3c78:	08078863          	beqz	a5,3d08 <fl_fopen+0x15c>
    3c7c:	038b2783          	lw	a5,56(s6)
    3c80:	06078a63          	beqz	a5,3cf4 <fl_fopen+0x148>
    3c84:	ffffd097          	auipc	ra,0xffffd
    3c88:	608080e7          	jalr	1544(ra) # 128c <_allocate_file>
    3c8c:	00050413          	mv	s0,a0
    3c90:	06050263          	beqz	a0,3cf4 <fl_fopen+0x148>
    3c94:	01450b93          	addi	s7,a0,20
    3c98:	10400613          	li	a2,260
    3c9c:	00000593          	li	a1,0
    3ca0:	000b8513          	mv	a0,s7
    3ca4:	ffffd097          	auipc	ra,0xffffd
    3ca8:	c44080e7          	jalr	-956(ra) # 8e8 <memset>
    3cac:	11840a93          	addi	s5,s0,280
    3cb0:	10400613          	li	a2,260
    3cb4:	00000593          	li	a1,0
    3cb8:	000a8513          	mv	a0,s5
    3cbc:	ffffd097          	auipc	ra,0xffffd
    3cc0:	c2c080e7          	jalr	-980(ra) # 8e8 <memset>
    3cc4:	10400713          	li	a4,260
    3cc8:	000a8693          	mv	a3,s5
    3ccc:	10400613          	li	a2,260
    3cd0:	000b8593          	mv	a1,s7
    3cd4:	000a0513          	mv	a0,s4
    3cd8:	ffffe097          	auipc	ra,0xffffe
    3cdc:	070080e7          	jalr	112(ra) # 1d48 <fatfs_split_path>
    3ce0:	fff00793          	li	a5,-1
    3ce4:	10f51c63          	bne	a0,a5,3dfc <fl_fopen+0x250>
    3ce8:	00040513          	mv	a0,s0
    3cec:	ffffd097          	auipc	ra,0xffffd
    3cf0:	614080e7          	jalr	1556(ra) # 1300 <_free_file>
    3cf4:	00000413          	li	s0,0
    3cf8:	260c9c63          	bnez	s9,3f70 <fl_fopen+0x3c4>
    3cfc:	0e041c63          	bnez	s0,3df4 <fl_fopen+0x248>
    3d00:	0064f793          	andi	a5,s1,6
    3d04:	24079e63          	bnez	a5,3f60 <fl_fopen+0x3b4>
    3d08:	00000413          	li	s0,0
    3d0c:	040b2783          	lw	a5,64(s6)
    3d10:	00078463          	beqz	a5,3d18 <fl_fopen+0x16c>
    3d14:	000780e7          	jalr	a5
    3d18:	05c12083          	lw	ra,92(sp)
    3d1c:	00040513          	mv	a0,s0
    3d20:	05812403          	lw	s0,88(sp)
    3d24:	05412483          	lw	s1,84(sp)
    3d28:	05012903          	lw	s2,80(sp)
    3d2c:	04c12983          	lw	s3,76(sp)
    3d30:	04812a03          	lw	s4,72(sp)
    3d34:	04412a83          	lw	s5,68(sp)
    3d38:	04012b03          	lw	s6,64(sp)
    3d3c:	03c12b83          	lw	s7,60(sp)
    3d40:	03812c03          	lw	s8,56(sp)
    3d44:	03412c83          	lw	s9,52(sp)
    3d48:	06010113          	addi	sp,sp,96
    3d4c:	00008067          	ret
    3d50:	00e407b3          	add	a5,s0,a4
    3d54:	0007c783          	lbu	a5,0(a5)
    3d58:	04d78463          	beq	a5,a3,3da0 <fl_fopen+0x1f4>
    3d5c:	02f6e463          	bltu	a3,a5,3d84 <fl_fopen+0x1d8>
    3d60:	04b78463          	beq	a5,a1,3da8 <fl_fopen+0x1fc>
    3d64:	00f5e863          	bltu	a1,a5,3d74 <fl_fopen+0x1c8>
    3d68:	05e78463          	beq	a5,t5,3db0 <fl_fopen+0x204>
    3d6c:	00170713          	addi	a4,a4,1
    3d70:	ed5ff06f          	j	3c44 <fl_fopen+0x98>
    3d74:	03c78063          	beq	a5,t3,3d94 <fl_fopen+0x1e8>
    3d78:	ffd79ae3          	bne	a5,t4,3d6c <fl_fopen+0x1c0>
    3d7c:	0014e493          	ori	s1,s1,1
    3d80:	fedff06f          	j	3d6c <fl_fopen+0x1c0>
    3d84:	fec78ce3          	beq	a5,a2,3d7c <fl_fopen+0x1d0>
    3d88:	00f66a63          	bltu	a2,a5,3d9c <fl_fopen+0x1f0>
    3d8c:	01178e63          	beq	a5,a7,3da8 <fl_fopen+0x1fc>
    3d90:	fc679ee3          	bne	a5,t1,3d6c <fl_fopen+0x1c0>
    3d94:	0084e493          	ori	s1,s1,8
    3d98:	fd5ff06f          	j	3d6c <fl_fopen+0x1c0>
    3d9c:	fd0798e3          	bne	a5,a6,3d6c <fl_fopen+0x1c0>
    3da0:	0324e493          	ori	s1,s1,50
    3da4:	fc9ff06f          	j	3d6c <fl_fopen+0x1c0>
    3da8:	0264e493          	ori	s1,s1,38
    3dac:	fc1ff06f          	j	3d6c <fl_fopen+0x1c0>
    3db0:	0014f793          	andi	a5,s1,1
    3db4:	00078663          	beqz	a5,3dc0 <fl_fopen+0x214>
    3db8:	0024e493          	ori	s1,s1,2
    3dbc:	fb1ff06f          	j	3d6c <fl_fopen+0x1c0>
    3dc0:	0024f793          	andi	a5,s1,2
    3dc4:	00078663          	beqz	a5,3dd0 <fl_fopen+0x224>
    3dc8:	0314e493          	ori	s1,s1,49
    3dcc:	fa1ff06f          	j	3d6c <fl_fopen+0x1c0>
    3dd0:	0044f793          	andi	a5,s1,4
    3dd4:	f8078ce3          	beqz	a5,3d6c <fl_fopen+0x1c0>
    3dd8:	0274e493          	ori	s1,s1,39
    3ddc:	f91ff06f          	j	3d6c <fl_fopen+0x1c0>
    3de0:	000a0513          	mv	a0,s4
    3de4:	fffff097          	auipc	ra,0xfffff
    3de8:	b08080e7          	jalr	-1272(ra) # 28ec <_open_file>
    3dec:	00050413          	mv	s0,a0
    3df0:	e80502e3          	beqz	a0,3c74 <fl_fopen+0xc8>
    3df4:	42940c23          	sb	s1,1080(s0)
    3df8:	f15ff06f          	j	3d0c <fl_fopen+0x160>
    3dfc:	00040513          	mv	a0,s0
    3e00:	ffffe097          	auipc	ra,0xffffe
    3e04:	19c080e7          	jalr	412(ra) # 1f9c <_check_file_open>
    3e08:	00050993          	mv	s3,a0
    3e0c:	ec051ee3          	bnez	a0,3ce8 <fl_fopen+0x13c>
    3e10:	01444783          	lbu	a5,20(s0)
    3e14:	0e079663          	bnez	a5,3f00 <fl_fopen+0x354>
    3e18:	008b2783          	lw	a5,8(s6)
    3e1c:	00f42023          	sw	a5,0(s0)
    3e20:	00042583          	lw	a1,0(s0)
    3e24:	01010693          	addi	a3,sp,16
    3e28:	000a8613          	mv	a2,s5
    3e2c:	30090513          	addi	a0,s2,768
    3e30:	ffffe097          	auipc	ra,0xffffe
    3e34:	7c8080e7          	jalr	1992(ra) # 25f8 <fatfs_get_file_entry>
    3e38:	00100793          	li	a5,1
    3e3c:	eaf506e3          	beq	a0,a5,3ce8 <fl_fopen+0x13c>
    3e40:	00042223          	sw	zero,4(s0)
    3e44:	00100693          	li	a3,1
    3e48:	00440613          	addi	a2,s0,4
    3e4c:	00100593          	li	a1,1
    3e50:	30090513          	addi	a0,s2,768
    3e54:	00000097          	auipc	ra,0x0
    3e58:	924080e7          	jalr	-1756(ra) # 3778 <fatfs_allocate_free_space>
    3e5c:	e80506e3          	beqz	a0,3ce8 <fl_fopen+0x13c>
    3e60:	00002c37          	lui	s8,0x2
    3e64:	21c40b93          	addi	s7,s0,540
    3e68:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_get_file_entry+0x117>
    3e6c:	000a8593          	mv	a1,s5
    3e70:	00410513          	addi	a0,sp,4
    3e74:	ffffe097          	auipc	ra,0xffffe
    3e78:	a78080e7          	jalr	-1416(ra) # 18ec <fatfs_lfn_create_sfn>
    3e7c:	08098e63          	beqz	s3,3f18 <fl_fopen+0x36c>
    3e80:	00098613          	mv	a2,s3
    3e84:	00410593          	addi	a1,sp,4
    3e88:	000b8513          	mv	a0,s7
    3e8c:	ffffe097          	auipc	ra,0xffffe
    3e90:	bdc080e7          	jalr	-1060(ra) # 1a68 <fatfs_lfn_generate_tail>
    3e94:	00042583          	lw	a1,0(s0)
    3e98:	000b8613          	mv	a2,s7
    3e9c:	30090513          	addi	a0,s2,768
    3ea0:	fffff097          	auipc	ra,0xfffff
    3ea4:	bc4080e7          	jalr	-1084(ra) # 2a64 <fatfs_sfn_exists>
    3ea8:	00050663          	beqz	a0,3eb4 <fl_fopen+0x308>
    3eac:	00198993          	addi	s3,s3,1
    3eb0:	fb899ee3          	bne	s3,s8,3e6c <fl_fopen+0x2c0>
    3eb4:	00442703          	lw	a4,4(s0)
    3eb8:	000027b7          	lui	a5,0x2
    3ebc:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_get_file_entry+0x117>
    3ec0:	00070593          	mv	a1,a4
    3ec4:	02f98663          	beq	s3,a5,3ef0 <fl_fopen+0x344>
    3ec8:	00042583          	lw	a1,0(s0)
    3ecc:	00000813          	li	a6,0
    3ed0:	00000793          	li	a5,0
    3ed4:	000b8693          	mv	a3,s7
    3ed8:	000a8613          	mv	a2,s5
    3edc:	30090513          	addi	a0,s2,768
    3ee0:	00000097          	auipc	ra,0x0
    3ee4:	9b4080e7          	jalr	-1612(ra) # 3894 <fatfs_add_file_entry>
    3ee8:	04051463          	bnez	a0,3f30 <fl_fopen+0x384>
    3eec:	00442583          	lw	a1,4(s0)
    3ef0:	30090513          	addi	a0,s2,768
    3ef4:	fffff097          	auipc	ra,0xfffff
    3ef8:	1e8080e7          	jalr	488(ra) # 30dc <fatfs_free_cluster_chain>
    3efc:	dedff06f          	j	3ce8 <fl_fopen+0x13c>
    3f00:	00040593          	mv	a1,s0
    3f04:	000b8513          	mv	a0,s7
    3f08:	fffff097          	auipc	ra,0xfffff
    3f0c:	8fc080e7          	jalr	-1796(ra) # 2804 <_open_directory>
    3f10:	f00518e3          	bnez	a0,3e20 <fl_fopen+0x274>
    3f14:	dd5ff06f          	j	3ce8 <fl_fopen+0x13c>
    3f18:	00b00613          	li	a2,11
    3f1c:	00410593          	addi	a1,sp,4
    3f20:	000b8513          	mv	a0,s7
    3f24:	ffffd097          	auipc	ra,0xffffd
    3f28:	9e0080e7          	jalr	-1568(ra) # 904 <memcpy>
    3f2c:	f69ff06f          	j	3e94 <fl_fopen+0x2e8>
    3f30:	fff00793          	li	a5,-1
    3f34:	00042623          	sw	zero,12(s0)
    3f38:	00042423          	sw	zero,8(s0)
    3f3c:	42f42823          	sw	a5,1072(s0)
    3f40:	42042a23          	sw	zero,1076(s0)
    3f44:	00042823          	sw	zero,16(s0)
    3f48:	22f42423          	sw	a5,552(s0)
    3f4c:	22f42623          	sw	a5,556(s0)
    3f50:	30090513          	addi	a0,s2,768
    3f54:	ffffe097          	auipc	ra,0xffffe
    3f58:	3f8080e7          	jalr	1016(ra) # 234c <fatfs_fat_purge>
    3f5c:	d9dff06f          	j	3cf8 <fl_fopen+0x14c>
    3f60:	000a0513          	mv	a0,s4
    3f64:	fffff097          	auipc	ra,0xfffff
    3f68:	988080e7          	jalr	-1656(ra) # 28ec <_open_file>
    3f6c:	00050413          	mv	s0,a0
    3f70:	e80412e3          	bnez	s0,3df4 <fl_fopen+0x248>
    3f74:	d95ff06f          	j	3d08 <fl_fopen+0x15c>
    3f78:	00000413          	li	s0,0
    3f7c:	d9dff06f          	j	3d18 <fl_fopen+0x16c>

00003f80 <cmd16>:
    3f80:	02000050 00001500                       P.......

00003f88 <acmd41>:
    3f88:	00004069 00000100                       i@......

00003f90 <cmd55>:
    3f90:	00000077 00000100                       w.......

00003f98 <cmd8>:
    3f98:	01000048 000087aa                       H.......

00003fa0 <cmd0>:
    3fa0:	00000040 00009500                       @.......

00003fa8 <SDCARD>:
    3fa8:	00010080                                ....

00003fac <OLED_RST>:
    3fac:	00010010                                ....

00003fb0 <OLED>:
    3fb0:	00010008 74696e69 2e2e2e20 00000020     ....init ... ...
    3fc0:	61636473 695f6472 3a74696e 0a6b6f20     sdcard_init: ok.
    3fd0:	00000000 695f6c66 3a74696e 0a6b6f20     ....fl_init: ok.
    3fe0:	00000000 0000002e 656e6f64 00000a2e     ........done....
    3ff0:	00006272 676d692f 7761722e 00000000     rb../img.raw....
    4000:	2e676d69 20776172 20746f6e 6e756f66     img.raw not foun
    4010:	000a2e64 67616d69 6f662065 2e646e75     d...image found.
    4020:	0000000a 41434453 69204452 2e74696e     ....SDCARD init.
    4030:	000a2e2e 41434453 43204452 2e38444d     ....SDCARD CMD8.
    4040:	000a2e2e 41434453 73204452 75746174     ....SDCARD statu
    4050:	64252073 0a2e2e2e 00000000 41434453     s %d........SDCA
    4060:	73204452 72616364 65675f64 64252074     RD sdcard_get %d
    4070:	0a2e2e2e 00000000 33323130 37363534     ........01234567
    4080:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    4090:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    40a0:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    40b0:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

000040c0 <font>:
    40c0:	00000000 00002f00 00030000 14000003     ...../..........
    40d0:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    40e0:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    40f0:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4100:	00080800 00200000 20000000 02040810     ...... .... ....
    4110:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4120:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4130:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4140:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4150:	00141400 0a110000 01000004 0007052d     ............-...
    4160:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4170:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4180:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4190:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    41a0:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    41b0:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    41c0:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    41d0:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    41e0:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    41f0:	003f2102 01020000 20000201 00000020     .!?........  ...
    4200:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4210:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4220:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4230:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4240:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4250:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4260:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4270:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4280:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4290:	043f2100 02010000 00000102 00000000     .!?.............
    42a0:	00000001 00000003 00000005 00000007     ................
    42b0:	00000009 0000000e 00000010 00000012     ................
    42c0:	00000014 00000016 00000018 0000001c     ................
    42d0:	0000001e                                ....

000042d4 <sdcard_while_loading_callback>:
    42d4:	00000000                                ....

000042d8 <back_color>:
	...

000042d9 <front_color>:
    42d9:	                                         ...

000042dc <cursor_y>:
    42dc:	00000000                                ....

000042e0 <cursor_x>:
    42e0:	00000000                                ....

000042e4 <f_putchar>:
    42e4:	00000000                                ....

000042e8 <_free_file_list>:
	...

000042f0 <_open_file_list>:
	...

000042f8 <_filelib_valid>:
    42f8:	00000000                                ....

000042fc <_filelib_init>:
    42fc:	00000000                                ....
