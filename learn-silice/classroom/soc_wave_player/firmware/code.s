
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
      20:	fd010113          	addi	sp,sp,-48 # ffd0 <_files+0x78c0>
      24:	00004737          	lui	a4,0x4
      28:	ba878793          	addi	a5,a5,-1112 # ba8 <display_putchar>
      2c:	02112623          	sw	ra,44(sp)
      30:	28f72623          	sw	a5,652(a4) # 428c <f_putchar>
      34:	02812423          	sw	s0,40(sp)
      38:	03212023          	sw	s2,32(sp)
      3c:	02912223          	sw	s1,36(sp)
      40:	01312e23          	sw	s3,28(sp)
      44:	01412c23          	sw	s4,24(sp)
      48:	01512a23          	sw	s5,20(sp)
      4c:	01612823          	sw	s6,16(sp)
      50:	01712623          	sw	s7,12(sp)
      54:	00001097          	auipc	ra,0x1
      58:	a5c080e7          	jalr	-1444(ra) # ab0 <oled_init>
      5c:	00001097          	auipc	ra,0x1
      60:	a60080e7          	jalr	-1440(ra) # abc <oled_fullscreen>
      64:	00001097          	auipc	ra,0x1
      68:	b10080e7          	jalr	-1264(ra) # b74 <display_framebuffer>
      6c:	00004637          	lui	a2,0x4
      70:	00000593          	li	a1,0
      74:	00001097          	auipc	ra,0x1
      78:	87c080e7          	jalr	-1924(ra) # 8f0 <memset>
      7c:	00001097          	auipc	ra,0x1
      80:	c50080e7          	jalr	-944(ra) # ccc <display_refresh>
      84:	00000593          	li	a1,0
      88:	00000513          	li	a0,0
      8c:	00001097          	auipc	ra,0x1
      90:	af4080e7          	jalr	-1292(ra) # b80 <display_set_cursor>
      94:	00000593          	li	a1,0
      98:	0ff00513          	li	a0,255
      9c:	00001097          	auipc	ra,0x1
      a0:	af8080e7          	jalr	-1288(ra) # b94 <display_set_front_back_color>
      a4:	00004537          	lui	a0,0x4
      a8:	fc450513          	addi	a0,a0,-60 # 3fc4 <LEDS+0x4>
      ac:	00001097          	auipc	ra,0x1
      b0:	e18080e7          	jalr	-488(ra) # ec4 <printf>
      b4:	00001097          	auipc	ra,0x1
      b8:	c18080e7          	jalr	-1000(ra) # ccc <display_refresh>
      bc:	00001937          	lui	s2,0x1
      c0:	00000097          	auipc	ra,0x0
      c4:	5cc080e7          	jalr	1484(ra) # 68c <sdcard_init>
      c8:	00000437          	lui	s0,0x0
      cc:	00001097          	auipc	ra,0x1
      d0:	3c0080e7          	jalr	960(ra) # 148c <fl_init>
      d4:	83490593          	addi	a1,s2,-1996 # 834 <sdcard_writesector>
      d8:	7e040513          	addi	a0,s0,2016 # 7e0 <sdcard_readsector>
      dc:	00002097          	auipc	ra,0x2
      e0:	1ec080e7          	jalr	492(ra) # 22c8 <fl_attach_media>
      e4:	00050493          	mv	s1,a0
      e8:	fe0516e3          	bnez	a0,d4 <main+0xb8>
      ec:	00004537          	lui	a0,0x4
      f0:	fd050513          	addi	a0,a0,-48 # 3fd0 <LEDS+0x10>
      f4:	00001097          	auipc	ra,0x1
      f8:	dd0080e7          	jalr	-560(ra) # ec4 <printf>
      fc:	00001097          	auipc	ra,0x1
     100:	bd0080e7          	jalr	-1072(ra) # ccc <display_refresh>
     104:	000045b7          	lui	a1,0x4
     108:	00004537          	lui	a0,0x4
     10c:	fd858593          	addi	a1,a1,-40 # 3fd8 <LEDS+0x18>
     110:	fdc50513          	addi	a0,a0,-36 # 3fdc <LEDS+0x1c>
     114:	00004097          	auipc	ra,0x4
     118:	aa0080e7          	jalr	-1376(ra) # 3bb4 <fl_fopen>
     11c:	00050913          	mv	s2,a0
     120:	04051263          	bnez	a0,164 <main+0x148>
     124:	00004537          	lui	a0,0x4
     128:	fe850513          	addi	a0,a0,-24 # 3fe8 <LEDS+0x28>
     12c:	00001097          	auipc	ra,0x1
     130:	d98080e7          	jalr	-616(ra) # ec4 <printf>
     134:	02812403          	lw	s0,40(sp)
     138:	02c12083          	lw	ra,44(sp)
     13c:	02412483          	lw	s1,36(sp)
     140:	02012903          	lw	s2,32(sp)
     144:	01c12983          	lw	s3,28(sp)
     148:	01812a03          	lw	s4,24(sp)
     14c:	01412a83          	lw	s5,20(sp)
     150:	01012b03          	lw	s6,16(sp)
     154:	00c12b83          	lw	s7,12(sp)
     158:	03010113          	addi	sp,sp,48
     15c:	00001317          	auipc	t1,0x1
     160:	b7030067          	jr	-1168(t1) # ccc <display_refresh>
     164:	0ff00593          	li	a1,255
     168:	00000513          	li	a0,0
     16c:	00001097          	auipc	ra,0x1
     170:	a28080e7          	jalr	-1496(ra) # b94 <display_set_front_back_color>
     174:	00004537          	lui	a0,0x4
     178:	ffc50513          	addi	a0,a0,-4 # 3ffc <LEDS+0x3c>
     17c:	00001097          	auipc	ra,0x1
     180:	d48080e7          	jalr	-696(ra) # ec4 <printf>
     184:	00001097          	auipc	ra,0x1
     188:	b48080e7          	jalr	-1208(ra) # ccc <display_refresh>
     18c:	00000593          	li	a1,0
     190:	0ff00513          	li	a0,255
     194:	00001097          	auipc	ra,0x1
     198:	a00080e7          	jalr	-1536(ra) # b94 <display_set_front_back_color>
     19c:	00004537          	lui	a0,0x4
     1a0:	01050513          	addi	a0,a0,16 # 4010 <LEDS+0x50>
     1a4:	00001097          	auipc	ra,0x1
     1a8:	d20080e7          	jalr	-736(ra) # ec4 <printf>
     1ac:	00001097          	auipc	ra,0x1
     1b0:	b20080e7          	jalr	-1248(ra) # ccc <display_refresh>
     1b4:	000047b7          	lui	a5,0x4
     1b8:	fb07a983          	lw	s3,-80(a5) # 3fb0 <AUDIO>
     1bc:	000047b7          	lui	a5,0x4
     1c0:	fc07a783          	lw	a5,-64(a5) # 3fc0 <LEDS>
     1c4:	00100413          	li	s0,1
     1c8:	1ff00a93          	li	s5,511
     1cc:	08000b13          	li	s6,128
     1d0:	00078b93          	mv	s7,a5
     1d4:	0009aa03          	lw	s4,0(s3)
     1d8:	00090693          	mv	a3,s2
     1dc:	20000613          	li	a2,512
     1e0:	00100593          	li	a1,1
     1e4:	000a0513          	mv	a0,s4
     1e8:	00003097          	auipc	ra,0x3
     1ec:	3f4080e7          	jalr	1012(ra) # 35dc <fl_fread>
     1f0:	02aada63          	bge	s5,a0,224 <main+0x208>
     1f4:	0009a783          	lw	a5,0(s3)
     1f8:	fefa0ee3          	beq	s4,a5,1f4 <main+0x1d8>
     1fc:	01640663          	beq	s0,s6,208 <main+0x1ec>
     200:	00100793          	li	a5,1
     204:	00f41463          	bne	s0,a5,20c <main+0x1f0>
     208:	0014c493          	xori	s1,s1,1
     20c:	00048863          	beqz	s1,21c <main+0x200>
     210:	00141413          	slli	s0,s0,0x1
     214:	008ba023          	sw	s0,0(s7)
     218:	fbdff06f          	j	1d4 <main+0x1b8>
     21c:	40145413          	srai	s0,s0,0x1
     220:	ff5ff06f          	j	214 <main+0x1f8>
     224:	02812403          	lw	s0,40(sp)
     228:	02c12083          	lw	ra,44(sp)
     22c:	02412483          	lw	s1,36(sp)
     230:	01c12983          	lw	s3,28(sp)
     234:	01812a03          	lw	s4,24(sp)
     238:	01412a83          	lw	s5,20(sp)
     23c:	01012b03          	lw	s6,16(sp)
     240:	00c12b83          	lw	s7,12(sp)
     244:	00090513          	mv	a0,s2
     248:	02012903          	lw	s2,32(sp)
     24c:	03010113          	addi	sp,sp,48
     250:	00003317          	auipc	t1,0x3
     254:	2ac30067          	jr	684(t1) # 34fc <fl_fclose>

00000258 <pause>:
     258:	c0002773          	rdcycle	a4
     25c:	c00027f3          	rdcycle	a5
     260:	40e787b3          	sub	a5,a5,a4
     264:	fea7ece3          	bltu	a5,a0,25c <pause+0x4>
     268:	00008067          	ret

0000026c <sdcard_idle>:
     26c:	00008067          	ret

00000270 <sdcard_select>:
     270:	000047b7          	lui	a5,0x4
     274:	fb47a783          	lw	a5,-76(a5) # 3fb4 <SDCARD>
     278:	00200713          	li	a4,2
     27c:	00e7a023          	sw	a4,0(a5)
     280:	00008067          	ret

00000284 <sdcard_ponder>:
     284:	000046b7          	lui	a3,0x4
     288:	fb46a683          	lw	a3,-76(a3) # 3fb4 <SDCARD>
     28c:	01000793          	li	a5,16
     290:	00000713          	li	a4,0
     294:	00676613          	ori	a2,a4,6
     298:	00c6a023          	sw	a2,0(a3)
     29c:	00174713          	xori	a4,a4,1
     2a0:	00000013          	nop
     2a4:	fff78793          	addi	a5,a5,-1
     2a8:	fe0796e3          	bnez	a5,294 <sdcard_ponder+0x10>
     2ac:	00008067          	ret

000002b0 <sdcard_unselect>:
     2b0:	000047b7          	lui	a5,0x4
     2b4:	fb47a783          	lw	a5,-76(a5) # 3fb4 <SDCARD>
     2b8:	00600713          	li	a4,6
     2bc:	00e7a023          	sw	a4,0(a5)
     2c0:	00008067          	ret

000002c4 <sdcard_send>:
     2c4:	000047b7          	lui	a5,0x4
     2c8:	fb47a783          	lw	a5,-76(a5) # 3fb4 <SDCARD>
     2cc:	00655713          	srli	a4,a0,0x6
     2d0:	00277713          	andi	a4,a4,2
     2d4:	00e7a023          	sw	a4,0(a5)
     2d8:	00176713          	ori	a4,a4,1
     2dc:	00e7a023          	sw	a4,0(a5)
     2e0:	00555713          	srli	a4,a0,0x5
     2e4:	00277713          	andi	a4,a4,2
     2e8:	00e7a023          	sw	a4,0(a5)
     2ec:	00176713          	ori	a4,a4,1
     2f0:	00e7a023          	sw	a4,0(a5)
     2f4:	00455713          	srli	a4,a0,0x4
     2f8:	00277713          	andi	a4,a4,2
     2fc:	00e7a023          	sw	a4,0(a5)
     300:	00176713          	ori	a4,a4,1
     304:	00e7a023          	sw	a4,0(a5)
     308:	00355713          	srli	a4,a0,0x3
     30c:	00277713          	andi	a4,a4,2
     310:	00e7a023          	sw	a4,0(a5)
     314:	00176713          	ori	a4,a4,1
     318:	00e7a023          	sw	a4,0(a5)
     31c:	00255713          	srli	a4,a0,0x2
     320:	00277713          	andi	a4,a4,2
     324:	00e7a023          	sw	a4,0(a5)
     328:	00176713          	ori	a4,a4,1
     32c:	00e7a023          	sw	a4,0(a5)
     330:	00155713          	srli	a4,a0,0x1
     334:	00277713          	andi	a4,a4,2
     338:	00e7a023          	sw	a4,0(a5)
     33c:	00176713          	ori	a4,a4,1
     340:	00e7a023          	sw	a4,0(a5)
     344:	00257713          	andi	a4,a0,2
     348:	00e7a023          	sw	a4,0(a5)
     34c:	00151513          	slli	a0,a0,0x1
     350:	00176713          	ori	a4,a4,1
     354:	00e7a023          	sw	a4,0(a5)
     358:	00257513          	andi	a0,a0,2
     35c:	00a7a023          	sw	a0,0(a5)
     360:	00156513          	ori	a0,a0,1
     364:	00a7a023          	sw	a0,0(a5)
     368:	00200713          	li	a4,2
     36c:	00e7a023          	sw	a4,0(a5)
     370:	000047b7          	lui	a5,0x4
     374:	27c7a783          	lw	a5,636(a5) # 427c <sdcard_while_loading_callback>
     378:	00078067          	jr	a5

0000037c <sdcard_read>:
     37c:	fd010113          	addi	sp,sp,-48
     380:	fff50793          	addi	a5,a0,-1
     384:	01312e23          	sw	s3,28(sp)
     388:	00100993          	li	s3,1
     38c:	00f999b3          	sll	s3,s3,a5
     390:	000047b7          	lui	a5,0x4
     394:	01512a23          	sw	s5,20(sp)
     398:	fb47aa83          	lw	s5,-76(a5) # 3fb4 <SDCARD>
     39c:	02812423          	sw	s0,40(sp)
     3a0:	02912223          	sw	s1,36(sp)
     3a4:	03212023          	sw	s2,32(sp)
     3a8:	01412c23          	sw	s4,24(sp)
     3ac:	01612823          	sw	s6,16(sp)
     3b0:	01712623          	sw	s7,12(sp)
     3b4:	01812423          	sw	s8,8(sp)
     3b8:	02112623          	sw	ra,44(sp)
     3bc:	00050493          	mv	s1,a0
     3c0:	00058a13          	mv	s4,a1
     3c4:	0ff00413          	li	s0,255
     3c8:	00000913          	li	s2,0
     3cc:	00300b13          	li	s6,3
     3d0:	00200b93          	li	s7,2
     3d4:	00004c37          	lui	s8,0x4
     3d8:	040a0063          	beqz	s4,418 <sdcard_read+0x9c>
     3dc:	0089f7b3          	and	a5,s3,s0
     3e0:	02079e63          	bnez	a5,41c <sdcard_read+0xa0>
     3e4:	02c12083          	lw	ra,44(sp)
     3e8:	0ff47513          	zext.b	a0,s0
     3ec:	02812403          	lw	s0,40(sp)
     3f0:	02412483          	lw	s1,36(sp)
     3f4:	02012903          	lw	s2,32(sp)
     3f8:	01c12983          	lw	s3,28(sp)
     3fc:	01812a03          	lw	s4,24(sp)
     400:	01412a83          	lw	s5,20(sp)
     404:	01012b03          	lw	s6,16(sp)
     408:	00c12b83          	lw	s7,12(sp)
     40c:	00812c03          	lw	s8,8(sp)
     410:	03010113          	addi	sp,sp,48
     414:	00008067          	ret
     418:	fc9956e3          	bge	s2,s1,3e4 <sdcard_read+0x68>
     41c:	016aa023          	sw	s6,0(s5)
     420:	017aa023          	sw	s7,0(s5)
     424:	000aa783          	lw	a5,0(s5)
     428:	00141413          	slli	s0,s0,0x1
     42c:	00190913          	addi	s2,s2,1
     430:	00f46433          	or	s0,s0,a5
     434:	27cc2783          	lw	a5,636(s8) # 427c <sdcard_while_loading_callback>
     438:	000780e7          	jalr	a5
     43c:	f9dff06f          	j	3d8 <sdcard_read+0x5c>

00000440 <sdcard_get>:
     440:	fe010113          	addi	sp,sp,-32
     444:	00112e23          	sw	ra,28(sp)
     448:	00812c23          	sw	s0,24(sp)
     44c:	00912a23          	sw	s1,20(sp)
     450:	00050413          	mv	s0,a0
     454:	00b12623          	sw	a1,12(sp)
     458:	00000097          	auipc	ra,0x0
     45c:	e18080e7          	jalr	-488(ra) # 270 <sdcard_select>
     460:	00c12583          	lw	a1,12(sp)
     464:	00040513          	mv	a0,s0
     468:	00100493          	li	s1,1
     46c:	00000097          	auipc	ra,0x0
     470:	f10080e7          	jalr	-240(ra) # 37c <sdcard_read>
     474:	00345413          	srli	s0,s0,0x3
     478:	0284c463          	blt	s1,s0,4a0 <sdcard_get+0x60>
     47c:	00a12623          	sw	a0,12(sp)
     480:	00000097          	auipc	ra,0x0
     484:	e30080e7          	jalr	-464(ra) # 2b0 <sdcard_unselect>
     488:	01c12083          	lw	ra,28(sp)
     48c:	01812403          	lw	s0,24(sp)
     490:	00c12503          	lw	a0,12(sp)
     494:	01412483          	lw	s1,20(sp)
     498:	02010113          	addi	sp,sp,32
     49c:	00008067          	ret
     4a0:	00000593          	li	a1,0
     4a4:	00800513          	li	a0,8
     4a8:	00000097          	auipc	ra,0x0
     4ac:	ed4080e7          	jalr	-300(ra) # 37c <sdcard_read>
     4b0:	00148493          	addi	s1,s1,1
     4b4:	fc5ff06f          	j	478 <sdcard_get+0x38>

000004b8 <sdcard_cmd>:
     4b8:	ff010113          	addi	sp,sp,-16
     4bc:	00812423          	sw	s0,8(sp)
     4c0:	00912223          	sw	s1,4(sp)
     4c4:	01212023          	sw	s2,0(sp)
     4c8:	00112623          	sw	ra,12(sp)
     4cc:	00050493          	mv	s1,a0
     4d0:	00000413          	li	s0,0
     4d4:	00000097          	auipc	ra,0x0
     4d8:	d9c080e7          	jalr	-612(ra) # 270 <sdcard_select>
     4dc:	00600913          	li	s2,6
     4e0:	008487b3          	add	a5,s1,s0
     4e4:	0007c503          	lbu	a0,0(a5)
     4e8:	00140413          	addi	s0,s0,1
     4ec:	00000097          	auipc	ra,0x0
     4f0:	dd8080e7          	jalr	-552(ra) # 2c4 <sdcard_send>
     4f4:	ff2416e3          	bne	s0,s2,4e0 <sdcard_cmd+0x28>
     4f8:	00812403          	lw	s0,8(sp)
     4fc:	00c12083          	lw	ra,12(sp)
     500:	00412483          	lw	s1,4(sp)
     504:	00012903          	lw	s2,0(sp)
     508:	01010113          	addi	sp,sp,16
     50c:	00000317          	auipc	t1,0x0
     510:	da430067          	jr	-604(t1) # 2b0 <sdcard_unselect>

00000514 <sdcard_start_sector>:
     514:	ff010113          	addi	sp,sp,-16
     518:	00112623          	sw	ra,12(sp)
     51c:	00812423          	sw	s0,8(sp)
     520:	00050413          	mv	s0,a0
     524:	00000097          	auipc	ra,0x0
     528:	d4c080e7          	jalr	-692(ra) # 270 <sdcard_select>
     52c:	05100513          	li	a0,81
     530:	00000097          	auipc	ra,0x0
     534:	d94080e7          	jalr	-620(ra) # 2c4 <sdcard_send>
     538:	01845513          	srli	a0,s0,0x18
     53c:	00000097          	auipc	ra,0x0
     540:	d88080e7          	jalr	-632(ra) # 2c4 <sdcard_send>
     544:	41045513          	srai	a0,s0,0x10
     548:	0ff57513          	zext.b	a0,a0
     54c:	00000097          	auipc	ra,0x0
     550:	d78080e7          	jalr	-648(ra) # 2c4 <sdcard_send>
     554:	40845513          	srai	a0,s0,0x8
     558:	0ff57513          	zext.b	a0,a0
     55c:	00000097          	auipc	ra,0x0
     560:	d68080e7          	jalr	-664(ra) # 2c4 <sdcard_send>
     564:	0ff47513          	zext.b	a0,s0
     568:	00000097          	auipc	ra,0x0
     56c:	d5c080e7          	jalr	-676(ra) # 2c4 <sdcard_send>
     570:	05500513          	li	a0,85
     574:	00000097          	auipc	ra,0x0
     578:	d50080e7          	jalr	-688(ra) # 2c4 <sdcard_send>
     57c:	00000097          	auipc	ra,0x0
     580:	d34080e7          	jalr	-716(ra) # 2b0 <sdcard_unselect>
     584:	00812403          	lw	s0,8(sp)
     588:	00c12083          	lw	ra,12(sp)
     58c:	00100593          	li	a1,1
     590:	00800513          	li	a0,8
     594:	01010113          	addi	sp,sp,16
     598:	00000317          	auipc	t1,0x0
     59c:	ea830067          	jr	-344(t1) # 440 <sdcard_get>

000005a0 <sdcard_read_sector>:
     5a0:	ff010113          	addi	sp,sp,-16
     5a4:	00812423          	sw	s0,8(sp)
     5a8:	00112623          	sw	ra,12(sp)
     5ac:	00912223          	sw	s1,4(sp)
     5b0:	01212023          	sw	s2,0(sp)
     5b4:	00058413          	mv	s0,a1
     5b8:	00000097          	auipc	ra,0x0
     5bc:	f5c080e7          	jalr	-164(ra) # 514 <sdcard_start_sector>
     5c0:	04051863          	bnez	a0,610 <sdcard_read_sector+0x70>
     5c4:	00100593          	li	a1,1
     5c8:	00100513          	li	a0,1
     5cc:	00000097          	auipc	ra,0x0
     5d0:	e74080e7          	jalr	-396(ra) # 440 <sdcard_get>
     5d4:	00000493          	li	s1,0
     5d8:	20000913          	li	s2,512
     5dc:	00000593          	li	a1,0
     5e0:	00800513          	li	a0,8
     5e4:	00000097          	auipc	ra,0x0
     5e8:	e5c080e7          	jalr	-420(ra) # 440 <sdcard_get>
     5ec:	009407b3          	add	a5,s0,s1
     5f0:	00a78023          	sb	a0,0(a5)
     5f4:	00148493          	addi	s1,s1,1
     5f8:	ff2492e3          	bne	s1,s2,5dc <sdcard_read_sector+0x3c>
     5fc:	00100593          	li	a1,1
     600:	01000513          	li	a0,16
     604:	20040413          	addi	s0,s0,512
     608:	00000097          	auipc	ra,0x0
     60c:	e38080e7          	jalr	-456(ra) # 440 <sdcard_get>
     610:	00c12083          	lw	ra,12(sp)
     614:	00040513          	mv	a0,s0
     618:	00812403          	lw	s0,8(sp)
     61c:	00412483          	lw	s1,4(sp)
     620:	00012903          	lw	s2,0(sp)
     624:	01010113          	addi	sp,sp,16
     628:	00008067          	ret

0000062c <sdcard_preinit>:
     62c:	ff010113          	addi	sp,sp,-16
     630:	000047b7          	lui	a5,0x4
     634:	00812423          	sw	s0,8(sp)
     638:	fb47a403          	lw	s0,-76(a5) # 3fb4 <SDCARD>
     63c:	00112623          	sw	ra,12(sp)
     640:	00600793          	li	a5,6
     644:	01313537          	lui	a0,0x1313
     648:	00f42023          	sw	a5,0(s0)
     64c:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     650:	00000097          	auipc	ra,0x0
     654:	c08080e7          	jalr	-1016(ra) # 258 <pause>
     658:	0a000793          	li	a5,160
     65c:	00000713          	li	a4,0
     660:	00676693          	ori	a3,a4,6
     664:	00d42023          	sw	a3,0(s0)
     668:	fff78793          	addi	a5,a5,-1
     66c:	00174713          	xori	a4,a4,1
     670:	fe0798e3          	bnez	a5,660 <sdcard_preinit+0x34>
     674:	00600793          	li	a5,6
     678:	00c12083          	lw	ra,12(sp)
     67c:	00f42023          	sw	a5,0(s0)
     680:	00812403          	lw	s0,8(sp)
     684:	01010113          	addi	sp,sp,16
     688:	00008067          	ret

0000068c <sdcard_init>:
     68c:	fe010113          	addi	sp,sp,-32
     690:	000007b7          	lui	a5,0x0
     694:	00812c23          	sw	s0,24(sp)
     698:	00004737          	lui	a4,0x4
     69c:	26c78793          	addi	a5,a5,620 # 26c <sdcard_idle>
     6a0:	01313437          	lui	s0,0x1313
     6a4:	01212823          	sw	s2,16(sp)
     6a8:	01312623          	sw	s3,12(sp)
     6ac:	00112e23          	sw	ra,28(sp)
     6b0:	00912a23          	sw	s1,20(sp)
     6b4:	26f72e23          	sw	a5,636(a4) # 427c <sdcard_while_loading_callback>
     6b8:	00004937          	lui	s2,0x4
     6bc:	0ff00993          	li	s3,255
     6c0:	d0040413          	addi	s0,s0,-768 # 1312d00 <__stacktop+0x1302d00>
     6c4:	00000097          	auipc	ra,0x0
     6c8:	f68080e7          	jalr	-152(ra) # 62c <sdcard_preinit>
     6cc:	fa890513          	addi	a0,s2,-88 # 3fa8 <cmd0>
     6d0:	00000097          	auipc	ra,0x0
     6d4:	de8080e7          	jalr	-536(ra) # 4b8 <sdcard_cmd>
     6d8:	00100593          	li	a1,1
     6dc:	00800513          	li	a0,8
     6e0:	00000097          	auipc	ra,0x0
     6e4:	d60080e7          	jalr	-672(ra) # 440 <sdcard_get>
     6e8:	00050493          	mv	s1,a0
     6ec:	00000097          	auipc	ra,0x0
     6f0:	b98080e7          	jalr	-1128(ra) # 284 <sdcard_ponder>
     6f4:	01349a63          	bne	s1,s3,708 <sdcard_init+0x7c>
     6f8:	00040513          	mv	a0,s0
     6fc:	00000097          	auipc	ra,0x0
     700:	b5c080e7          	jalr	-1188(ra) # 258 <pause>
     704:	fc1ff06f          	j	6c4 <sdcard_init+0x38>
     708:	00004537          	lui	a0,0x4
     70c:	fa050513          	addi	a0,a0,-96 # 3fa0 <cmd8>
     710:	00000097          	auipc	ra,0x0
     714:	da8080e7          	jalr	-600(ra) # 4b8 <sdcard_cmd>
     718:	00100593          	li	a1,1
     71c:	02800513          	li	a0,40
     720:	00000097          	auipc	ra,0x0
     724:	d20080e7          	jalr	-736(ra) # 440 <sdcard_get>
     728:	001e8437          	lui	s0,0x1e8
     72c:	00000097          	auipc	ra,0x0
     730:	b58080e7          	jalr	-1192(ra) # 284 <sdcard_ponder>
     734:	00004937          	lui	s2,0x4
     738:	000049b7          	lui	s3,0x4
     73c:	48040413          	addi	s0,s0,1152 # 1e8480 <__stacktop+0x1d8480>
     740:	f9890513          	addi	a0,s2,-104 # 3f98 <cmd55>
     744:	00000097          	auipc	ra,0x0
     748:	d74080e7          	jalr	-652(ra) # 4b8 <sdcard_cmd>
     74c:	00100593          	li	a1,1
     750:	00800513          	li	a0,8
     754:	00000097          	auipc	ra,0x0
     758:	cec080e7          	jalr	-788(ra) # 440 <sdcard_get>
     75c:	00000097          	auipc	ra,0x0
     760:	b28080e7          	jalr	-1240(ra) # 284 <sdcard_ponder>
     764:	f9098513          	addi	a0,s3,-112 # 3f90 <acmd41>
     768:	00000097          	auipc	ra,0x0
     76c:	d50080e7          	jalr	-688(ra) # 4b8 <sdcard_cmd>
     770:	00100593          	li	a1,1
     774:	00800513          	li	a0,8
     778:	00000097          	auipc	ra,0x0
     77c:	cc8080e7          	jalr	-824(ra) # 440 <sdcard_get>
     780:	00050493          	mv	s1,a0
     784:	00000097          	auipc	ra,0x0
     788:	b00080e7          	jalr	-1280(ra) # 284 <sdcard_ponder>
     78c:	00048a63          	beqz	s1,7a0 <sdcard_init+0x114>
     790:	00040513          	mv	a0,s0
     794:	00000097          	auipc	ra,0x0
     798:	ac4080e7          	jalr	-1340(ra) # 258 <pause>
     79c:	fa5ff06f          	j	740 <sdcard_init+0xb4>
     7a0:	00004537          	lui	a0,0x4
     7a4:	f8850513          	addi	a0,a0,-120 # 3f88 <cmd16>
     7a8:	00000097          	auipc	ra,0x0
     7ac:	d10080e7          	jalr	-752(ra) # 4b8 <sdcard_cmd>
     7b0:	00100593          	li	a1,1
     7b4:	00800513          	li	a0,8
     7b8:	00000097          	auipc	ra,0x0
     7bc:	c88080e7          	jalr	-888(ra) # 440 <sdcard_get>
     7c0:	01812403          	lw	s0,24(sp)
     7c4:	01c12083          	lw	ra,28(sp)
     7c8:	01412483          	lw	s1,20(sp)
     7cc:	01012903          	lw	s2,16(sp)
     7d0:	00c12983          	lw	s3,12(sp)
     7d4:	02010113          	addi	sp,sp,32
     7d8:	00000317          	auipc	t1,0x0
     7dc:	aac30067          	jr	-1364(t1) # 284 <sdcard_ponder>

000007e0 <sdcard_readsector>:
     7e0:	04060663          	beqz	a2,82c <sdcard_readsector+0x4c>
     7e4:	ff010113          	addi	sp,sp,-16
     7e8:	00812423          	sw	s0,8(sp)
     7ec:	00912223          	sw	s1,4(sp)
     7f0:	00112623          	sw	ra,12(sp)
     7f4:	00050413          	mv	s0,a0
     7f8:	00a604b3          	add	s1,a2,a0
     7fc:	00040513          	mv	a0,s0
     800:	00000097          	auipc	ra,0x0
     804:	da0080e7          	jalr	-608(ra) # 5a0 <sdcard_read_sector>
     808:	00140413          	addi	s0,s0,1
     80c:	00050593          	mv	a1,a0
     810:	fe8496e3          	bne	s1,s0,7fc <sdcard_readsector+0x1c>
     814:	00c12083          	lw	ra,12(sp)
     818:	00812403          	lw	s0,8(sp)
     81c:	00412483          	lw	s1,4(sp)
     820:	00100513          	li	a0,1
     824:	01010113          	addi	sp,sp,16
     828:	00008067          	ret
     82c:	00000513          	li	a0,0
     830:	00008067          	ret

00000834 <sdcard_writesector>:
     834:	00000513          	li	a0,0
     838:	00008067          	ret

0000083c <__divsi3>:
     83c:	06054063          	bltz	a0,89c <__umodsi3+0x10>
     840:	0605c663          	bltz	a1,8ac <__umodsi3+0x20>

00000844 <__udivsi3>:
     844:	00058613          	mv	a2,a1
     848:	00050593          	mv	a1,a0
     84c:	fff00513          	li	a0,-1
     850:	02060c63          	beqz	a2,888 <__udivsi3+0x44>
     854:	00100693          	li	a3,1
     858:	00b67a63          	bgeu	a2,a1,86c <__udivsi3+0x28>
     85c:	00c05863          	blez	a2,86c <__udivsi3+0x28>
     860:	00161613          	slli	a2,a2,0x1
     864:	00169693          	slli	a3,a3,0x1
     868:	feb66ae3          	bltu	a2,a1,85c <__udivsi3+0x18>
     86c:	00000513          	li	a0,0
     870:	00c5e663          	bltu	a1,a2,87c <__udivsi3+0x38>
     874:	40c585b3          	sub	a1,a1,a2
     878:	00d56533          	or	a0,a0,a3
     87c:	0016d693          	srli	a3,a3,0x1
     880:	00165613          	srli	a2,a2,0x1
     884:	fe0696e3          	bnez	a3,870 <__udivsi3+0x2c>
     888:	00008067          	ret

0000088c <__umodsi3>:
     88c:	00008293          	mv	t0,ra
     890:	fb5ff0ef          	jal	844 <__udivsi3>
     894:	00058513          	mv	a0,a1
     898:	00028067          	jr	t0
     89c:	40a00533          	neg	a0,a0
     8a0:	0005d863          	bgez	a1,8b0 <__umodsi3+0x24>
     8a4:	40b005b3          	neg	a1,a1
     8a8:	f95ff06f          	j	83c <__divsi3>
     8ac:	40b005b3          	neg	a1,a1
     8b0:	00008293          	mv	t0,ra
     8b4:	f89ff0ef          	jal	83c <__divsi3>
     8b8:	40a00533          	neg	a0,a0
     8bc:	00028067          	jr	t0

000008c0 <__modsi3>:
     8c0:	00008293          	mv	t0,ra
     8c4:	0005ca63          	bltz	a1,8d8 <__modsi3+0x18>
     8c8:	00054c63          	bltz	a0,8e0 <__modsi3+0x20>
     8cc:	f79ff0ef          	jal	844 <__udivsi3>
     8d0:	00058513          	mv	a0,a1
     8d4:	00028067          	jr	t0
     8d8:	40b005b3          	neg	a1,a1
     8dc:	fe0558e3          	bgez	a0,8cc <__modsi3+0xc>
     8e0:	40a00533          	neg	a0,a0
     8e4:	f61ff0ef          	jal	844 <__udivsi3>
     8e8:	40b00533          	neg	a0,a1
     8ec:	00028067          	jr	t0

000008f0 <memset>:
     8f0:	00c50633          	add	a2,a0,a2
     8f4:	00050793          	mv	a5,a0
     8f8:	00c79463          	bne	a5,a2,900 <memset+0x10>
     8fc:	00008067          	ret
     900:	00178793          	addi	a5,a5,1
     904:	feb78fa3          	sb	a1,-1(a5)
     908:	ff1ff06f          	j	8f8 <memset+0x8>

0000090c <memcpy>:
     90c:	00000793          	li	a5,0
     910:	00c79463          	bne	a5,a2,918 <memcpy+0xc>
     914:	00008067          	ret
     918:	00f58733          	add	a4,a1,a5
     91c:	00074683          	lbu	a3,0(a4)
     920:	00f50733          	add	a4,a0,a5
     924:	00178793          	addi	a5,a5,1
     928:	00d70023          	sb	a3,0(a4)
     92c:	fe5ff06f          	j	910 <memcpy+0x4>

00000930 <strlen>:
     930:	00050793          	mv	a5,a0
     934:	00000513          	li	a0,0
     938:	00a78733          	add	a4,a5,a0
     93c:	00074703          	lbu	a4,0(a4)
     940:	00071463          	bnez	a4,948 <strlen+0x18>
     944:	00008067          	ret
     948:	00150513          	addi	a0,a0,1
     94c:	fedff06f          	j	938 <strlen+0x8>

00000950 <strncmp>:
     950:	00000793          	li	a5,0
     954:	00c79663          	bne	a5,a2,960 <strncmp+0x10>
     958:	00000513          	li	a0,0
     95c:	00008067          	ret
     960:	00f50733          	add	a4,a0,a5
     964:	00074683          	lbu	a3,0(a4)
     968:	00f58733          	add	a4,a1,a5
     96c:	00074703          	lbu	a4,0(a4)
     970:	00e6e863          	bltu	a3,a4,980 <strncmp+0x30>
     974:	00d76a63          	bltu	a4,a3,988 <strncmp+0x38>
     978:	00178793          	addi	a5,a5,1
     97c:	fd9ff06f          	j	954 <strncmp+0x4>
     980:	fff00513          	li	a0,-1
     984:	00008067          	ret
     988:	00100513          	li	a0,1
     98c:	00008067          	ret

00000990 <oled_wait>:
     990:	00000013          	nop
     994:	00000013          	nop
     998:	00000013          	nop
     99c:	00000013          	nop
     9a0:	00000013          	nop
     9a4:	00000013          	nop
     9a8:	00000013          	nop
     9ac:	00008067          	ret

000009b0 <oled_init_mode>:
     9b0:	000047b7          	lui	a5,0x4
     9b4:	fb87a703          	lw	a4,-72(a5) # 3fb8 <OLED_RST>
     9b8:	ff010113          	addi	sp,sp,-16
     9bc:	00912223          	sw	s1,4(sp)
     9c0:	00112623          	sw	ra,12(sp)
     9c4:	00812423          	sw	s0,8(sp)
     9c8:	00072023          	sw	zero,0(a4)
     9cc:	00050493          	mv	s1,a0
     9d0:	00040737          	lui	a4,0x40
     9d4:	00000013          	nop
     9d8:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     9dc:	fe071ce3          	bnez	a4,9d4 <oled_init_mode+0x24>
     9e0:	fb87a703          	lw	a4,-72(a5)
     9e4:	00100693          	li	a3,1
     9e8:	00d72023          	sw	a3,0(a4)
     9ec:	00040737          	lui	a4,0x40
     9f0:	00000013          	nop
     9f4:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     9f8:	fe071ce3          	bnez	a4,9f0 <oled_init_mode+0x40>
     9fc:	fb87a783          	lw	a5,-72(a5)
     a00:	0007a023          	sw	zero,0(a5)
     a04:	000407b7          	lui	a5,0x40
     a08:	00000013          	nop
     a0c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     a10:	fe079ce3          	bnez	a5,a08 <oled_init_mode+0x58>
     a14:	00004737          	lui	a4,0x4
     a18:	fbc72783          	lw	a5,-68(a4) # 3fbc <OLED>
     a1c:	2af00693          	li	a3,687
     a20:	00d7a023          	sw	a3,0(a5)
     a24:	000407b7          	lui	a5,0x40
     a28:	00000013          	nop
     a2c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     a30:	fe079ce3          	bnez	a5,a28 <oled_init_mode+0x78>
     a34:	fbc72403          	lw	s0,-68(a4)
     a38:	2a000793          	li	a5,672
     a3c:	00f42023          	sw	a5,0(s0)
     a40:	00000097          	auipc	ra,0x0
     a44:	f50080e7          	jalr	-176(ra) # 990 <oled_wait>
     a48:	4a000793          	li	a5,1184
     a4c:	00048463          	beqz	s1,a54 <oled_init_mode+0xa4>
     a50:	42000793          	li	a5,1056
     a54:	00f42023          	sw	a5,0(s0)
     a58:	00000097          	auipc	ra,0x0
     a5c:	f38080e7          	jalr	-200(ra) # 990 <oled_wait>
     a60:	2fd00793          	li	a5,765
     a64:	00f42023          	sw	a5,0(s0)
     a68:	00000097          	auipc	ra,0x0
     a6c:	f28080e7          	jalr	-216(ra) # 990 <oled_wait>
     a70:	4b100793          	li	a5,1201
     a74:	00f42023          	sw	a5,0(s0)
     a78:	00000097          	auipc	ra,0x0
     a7c:	f18080e7          	jalr	-232(ra) # 990 <oled_wait>
     a80:	2a200793          	li	a5,674
     a84:	00f42023          	sw	a5,0(s0)
     a88:	00000097          	auipc	ra,0x0
     a8c:	f08080e7          	jalr	-248(ra) # 990 <oled_wait>
     a90:	40000793          	li	a5,1024
     a94:	00f42023          	sw	a5,0(s0)
     a98:	00812403          	lw	s0,8(sp)
     a9c:	00c12083          	lw	ra,12(sp)
     aa0:	00412483          	lw	s1,4(sp)
     aa4:	01010113          	addi	sp,sp,16
     aa8:	00000317          	auipc	t1,0x0
     aac:	ee830067          	jr	-280(t1) # 990 <oled_wait>

00000ab0 <oled_init>:
     ab0:	00000513          	li	a0,0
     ab4:	00000317          	auipc	t1,0x0
     ab8:	efc30067          	jr	-260(t1) # 9b0 <oled_init_mode>

00000abc <oled_fullscreen>:
     abc:	ff010113          	addi	sp,sp,-16
     ac0:	000047b7          	lui	a5,0x4
     ac4:	00812423          	sw	s0,8(sp)
     ac8:	fbc7a403          	lw	s0,-68(a5) # 3fbc <OLED>
     acc:	00112623          	sw	ra,12(sp)
     ad0:	00912223          	sw	s1,4(sp)
     ad4:	01212023          	sw	s2,0(sp)
     ad8:	21500793          	li	a5,533
     adc:	00f42023          	sw	a5,0(s0)
     ae0:	40000913          	li	s2,1024
     ae4:	00000097          	auipc	ra,0x0
     ae8:	eac080e7          	jalr	-340(ra) # 990 <oled_wait>
     aec:	47f00493          	li	s1,1151
     af0:	01242023          	sw	s2,0(s0)
     af4:	00000097          	auipc	ra,0x0
     af8:	e9c080e7          	jalr	-356(ra) # 990 <oled_wait>
     afc:	00942023          	sw	s1,0(s0)
     b00:	00000097          	auipc	ra,0x0
     b04:	e90080e7          	jalr	-368(ra) # 990 <oled_wait>
     b08:	27500793          	li	a5,629
     b0c:	00f42023          	sw	a5,0(s0)
     b10:	00000097          	auipc	ra,0x0
     b14:	e80080e7          	jalr	-384(ra) # 990 <oled_wait>
     b18:	01242023          	sw	s2,0(s0)
     b1c:	00000097          	auipc	ra,0x0
     b20:	e74080e7          	jalr	-396(ra) # 990 <oled_wait>
     b24:	00942023          	sw	s1,0(s0)
     b28:	00000097          	auipc	ra,0x0
     b2c:	e68080e7          	jalr	-408(ra) # 990 <oled_wait>
     b30:	25c00793          	li	a5,604
     b34:	00f42023          	sw	a5,0(s0)
     b38:	00812403          	lw	s0,8(sp)
     b3c:	00c12083          	lw	ra,12(sp)
     b40:	00412483          	lw	s1,4(sp)
     b44:	00012903          	lw	s2,0(sp)
     b48:	01010113          	addi	sp,sp,16
     b4c:	00000317          	auipc	t1,0x0
     b50:	e4430067          	jr	-444(t1) # 990 <oled_wait>

00000b54 <oled_wait>:
     b54:	00000013          	nop
     b58:	00000013          	nop
     b5c:	00000013          	nop
     b60:	00000013          	nop
     b64:	00000013          	nop
     b68:	00000013          	nop
     b6c:	00000013          	nop
     b70:	00008067          	ret

00000b74 <display_framebuffer>:
     b74:	00004537          	lui	a0,0x4
     b78:	2a850513          	addi	a0,a0,680 # 42a8 <framebuffer>
     b7c:	00008067          	ret

00000b80 <display_set_cursor>:
     b80:	000047b7          	lui	a5,0x4
     b84:	28a7a423          	sw	a0,648(a5) # 4288 <cursor_x>
     b88:	000047b7          	lui	a5,0x4
     b8c:	28b7a223          	sw	a1,644(a5) # 4284 <cursor_y>
     b90:	00008067          	ret

00000b94 <display_set_front_back_color>:
     b94:	000047b7          	lui	a5,0x4
     b98:	28a780a3          	sb	a0,641(a5) # 4281 <front_color>
     b9c:	000047b7          	lui	a5,0x4
     ba0:	28b78023          	sb	a1,640(a5) # 4280 <back_color>
     ba4:	00008067          	ret

00000ba8 <display_putchar>:
     ba8:	00a00793          	li	a5,10
     bac:	000045b7          	lui	a1,0x4
     bb0:	02f51663          	bne	a0,a5,bdc <display_putchar+0x34>
     bb4:	00004737          	lui	a4,0x4
     bb8:	28472783          	lw	a5,644(a4) # 4284 <cursor_y>
     bbc:	2805a423          	sw	zero,648(a1) # 4288 <cursor_x>
     bc0:	00878793          	addi	a5,a5,8
     bc4:	28f72223          	sw	a5,644(a4)
     bc8:	07f00713          	li	a4,127
     bcc:	00f75663          	bge	a4,a5,bd8 <display_putchar+0x30>
     bd0:	000047b7          	lui	a5,0x4
     bd4:	2807a223          	sw	zero,644(a5) # 4284 <cursor_y>
     bd8:	00008067          	ret
     bdc:	ff010113          	addi	sp,sp,-16
     be0:	00812623          	sw	s0,12(sp)
     be4:	00912423          	sw	s1,8(sp)
     be8:	01212223          	sw	s2,4(sp)
     bec:	01f00713          	li	a4,31
     bf0:	2885a783          	lw	a5,648(a1)
     bf4:	08a75863          	bge	a4,a0,c84 <display_putchar+0xdc>
     bf8:	00004737          	lui	a4,0x4
     bfc:	28074383          	lbu	t2,640(a4) # 4280 <back_color>
     c00:	00004737          	lui	a4,0x4
     c04:	28174403          	lbu	s0,641(a4) # 4281 <front_color>
     c08:	00004737          	lui	a4,0x4
     c0c:	28472f03          	lw	t5,644(a4) # 4284 <cursor_y>
     c10:	00251693          	slli	a3,a0,0x2
     c14:	00004737          	lui	a4,0x4
     c18:	00a686b3          	add	a3,a3,a0
     c1c:	06870713          	addi	a4,a4,104 # 4068 <font>
     c20:	00779e13          	slli	t3,a5,0x7
     c24:	00004837          	lui	a6,0x4
     c28:	00e686b3          	add	a3,a3,a4
     c2c:	280e0493          	addi	s1,t3,640
     c30:	00000613          	li	a2,0
     c34:	00100293          	li	t0,1
     c38:	2a880813          	addi	a6,a6,680 # 42a8 <framebuffer>
     c3c:	00800913          	li	s2,8
     c40:	00cf0733          	add	a4,t5,a2
     c44:	00c29fb3          	sll	t6,t0,a2
     c48:	000e0513          	mv	a0,t3
     c4c:	00068893          	mv	a7,a3
     c50:	00e80733          	add	a4,a6,a4
     c54:	f608c303          	lbu	t1,-160(a7)
     c58:	00040e93          	mv	t4,s0
     c5c:	01f37333          	and	t1,t1,t6
     c60:	00031463          	bnez	t1,c68 <display_putchar+0xc0>
     c64:	00038e93          	mv	t4,t2
     c68:	00a70333          	add	t1,a4,a0
     c6c:	01d30023          	sb	t4,0(t1)
     c70:	08050513          	addi	a0,a0,128
     c74:	00188893          	addi	a7,a7,1
     c78:	fc951ee3          	bne	a0,s1,c54 <display_putchar+0xac>
     c7c:	00160613          	addi	a2,a2,1 # 4001 <LEDS+0x41>
     c80:	fd2610e3          	bne	a2,s2,c40 <display_putchar+0x98>
     c84:	00578793          	addi	a5,a5,5
     c88:	07f00713          	li	a4,127
     c8c:	00f74663          	blt	a4,a5,c98 <display_putchar+0xf0>
     c90:	28f5a423          	sw	a5,648(a1)
     c94:	0240006f          	j	cb8 <display_putchar+0x110>
     c98:	000046b7          	lui	a3,0x4
     c9c:	2846a783          	lw	a5,644(a3) # 4284 <cursor_y>
     ca0:	2805a423          	sw	zero,648(a1)
     ca4:	00878793          	addi	a5,a5,8
     ca8:	28f6a223          	sw	a5,644(a3)
     cac:	00f75663          	bge	a4,a5,cb8 <display_putchar+0x110>
     cb0:	000047b7          	lui	a5,0x4
     cb4:	2807a223          	sw	zero,644(a5) # 4284 <cursor_y>
     cb8:	00c12403          	lw	s0,12(sp)
     cbc:	00812483          	lw	s1,8(sp)
     cc0:	00412903          	lw	s2,4(sp)
     cc4:	01010113          	addi	sp,sp,16
     cc8:	00008067          	ret

00000ccc <display_refresh>:
     ccc:	fe010113          	addi	sp,sp,-32
     cd0:	000047b7          	lui	a5,0x4
     cd4:	01212823          	sw	s2,16(sp)
     cd8:	fbc7a903          	lw	s2,-68(a5) # 3fbc <OLED>
     cdc:	01312623          	sw	s3,12(sp)
     ce0:	000049b7          	lui	s3,0x4
     ce4:	00912a23          	sw	s1,20(sp)
     ce8:	01412423          	sw	s4,8(sp)
     cec:	00112e23          	sw	ra,28(sp)
     cf0:	00812c23          	sw	s0,24(sp)
     cf4:	00000493          	li	s1,0
     cf8:	2a898993          	addi	s3,s3,680 # 42a8 <framebuffer>
     cfc:	00004a37          	lui	s4,0x4
     d00:	013487b3          	add	a5,s1,s3
     d04:	0007c403          	lbu	s0,0(a5)
     d08:	00148493          	addi	s1,s1,1
     d0c:	00245413          	srli	s0,s0,0x2
     d10:	40046413          	ori	s0,s0,1024
     d14:	00892023          	sw	s0,0(s2)
     d18:	00000097          	auipc	ra,0x0
     d1c:	e3c080e7          	jalr	-452(ra) # b54 <oled_wait>
     d20:	00892023          	sw	s0,0(s2)
     d24:	00000097          	auipc	ra,0x0
     d28:	e30080e7          	jalr	-464(ra) # b54 <oled_wait>
     d2c:	00892023          	sw	s0,0(s2)
     d30:	00000097          	auipc	ra,0x0
     d34:	e24080e7          	jalr	-476(ra) # b54 <oled_wait>
     d38:	fd4494e3          	bne	s1,s4,d00 <display_refresh+0x34>
     d3c:	01c12083          	lw	ra,28(sp)
     d40:	01812403          	lw	s0,24(sp)
     d44:	01412483          	lw	s1,20(sp)
     d48:	01012903          	lw	s2,16(sp)
     d4c:	00c12983          	lw	s3,12(sp)
     d50:	00812a03          	lw	s4,8(sp)
     d54:	02010113          	addi	sp,sp,32
     d58:	00008067          	ret

00000d5c <print_string>:
     d5c:	ff010113          	addi	sp,sp,-16
     d60:	00812423          	sw	s0,8(sp)
     d64:	00912223          	sw	s1,4(sp)
     d68:	00112623          	sw	ra,12(sp)
     d6c:	00050413          	mv	s0,a0
     d70:	000044b7          	lui	s1,0x4
     d74:	00044503          	lbu	a0,0(s0)
     d78:	00051c63          	bnez	a0,d90 <print_string+0x34>
     d7c:	00c12083          	lw	ra,12(sp)
     d80:	00812403          	lw	s0,8(sp)
     d84:	00412483          	lw	s1,4(sp)
     d88:	01010113          	addi	sp,sp,16
     d8c:	00008067          	ret
     d90:	28c4a783          	lw	a5,652(s1) # 428c <f_putchar>
     d94:	00140413          	addi	s0,s0,1
     d98:	000780e7          	jalr	a5
     d9c:	fd9ff06f          	j	d74 <print_string+0x18>

00000da0 <print_dec>:
     da0:	ef010113          	addi	sp,sp,-272
     da4:	10812423          	sw	s0,264(sp)
     da8:	10912223          	sw	s1,260(sp)
     dac:	10112623          	sw	ra,268(sp)
     db0:	11212023          	sw	s2,256(sp)
     db4:	00050413          	mv	s0,a0
     db8:	000044b7          	lui	s1,0x4
     dbc:	08045063          	bgez	s0,e3c <print_dec+0x9c>
     dc0:	28c4a783          	lw	a5,652(s1) # 428c <f_putchar>
     dc4:	02d00513          	li	a0,45
     dc8:	40800433          	neg	s0,s0
     dcc:	000780e7          	jalr	a5
     dd0:	fedff06f          	j	dbc <print_dec+0x1c>
     dd4:	00040513          	mv	a0,s0
     dd8:	00a00593          	li	a1,10
     ddc:	00000097          	auipc	ra,0x0
     de0:	a60080e7          	jalr	-1440(ra) # 83c <__divsi3>
     de4:	00251793          	slli	a5,a0,0x2
     de8:	00f507b3          	add	a5,a0,a5
     dec:	00179793          	slli	a5,a5,0x1
     df0:	40f40433          	sub	s0,s0,a5
     df4:	00148493          	addi	s1,s1,1
     df8:	fe848fa3          	sb	s0,-1(s1)
     dfc:	00050413          	mv	s0,a0
     e00:	fc041ae3          	bnez	s0,dd4 <print_dec+0x34>
     e04:	fd2488e3          	beq	s1,s2,dd4 <print_dec+0x34>
     e08:	00004437          	lui	s0,0x4
     e0c:	fff4c503          	lbu	a0,-1(s1)
     e10:	28c42783          	lw	a5,652(s0) # 428c <f_putchar>
     e14:	fff48493          	addi	s1,s1,-1
     e18:	03050513          	addi	a0,a0,48
     e1c:	000780e7          	jalr	a5
     e20:	ff2496e3          	bne	s1,s2,e0c <print_dec+0x6c>
     e24:	10c12083          	lw	ra,268(sp)
     e28:	10812403          	lw	s0,264(sp)
     e2c:	10412483          	lw	s1,260(sp)
     e30:	10012903          	lw	s2,256(sp)
     e34:	11010113          	addi	sp,sp,272
     e38:	00008067          	ret
     e3c:	00010493          	mv	s1,sp
     e40:	00048913          	mv	s2,s1
     e44:	fbdff06f          	j	e00 <print_dec+0x60>

00000e48 <print_hex_digits>:
     e48:	fe010113          	addi	sp,sp,-32
     e4c:	00812c23          	sw	s0,24(sp)
     e50:	01212823          	sw	s2,16(sp)
     e54:	fff58413          	addi	s0,a1,-1
     e58:	00004937          	lui	s2,0x4
     e5c:	00912a23          	sw	s1,20(sp)
     e60:	01312623          	sw	s3,12(sp)
     e64:	00112e23          	sw	ra,28(sp)
     e68:	00050493          	mv	s1,a0
     e6c:	00241413          	slli	s0,s0,0x2
     e70:	02090913          	addi	s2,s2,32 # 4020 <LEDS+0x60>
     e74:	000049b7          	lui	s3,0x4
     e78:	02045063          	bgez	s0,e98 <print_hex_digits+0x50>
     e7c:	01c12083          	lw	ra,28(sp)
     e80:	01812403          	lw	s0,24(sp)
     e84:	01412483          	lw	s1,20(sp)
     e88:	01012903          	lw	s2,16(sp)
     e8c:	00c12983          	lw	s3,12(sp)
     e90:	02010113          	addi	sp,sp,32
     e94:	00008067          	ret
     e98:	0084d7b3          	srl	a5,s1,s0
     e9c:	00f7f793          	andi	a5,a5,15
     ea0:	00f907b3          	add	a5,s2,a5
     ea4:	28c9a703          	lw	a4,652(s3) # 428c <f_putchar>
     ea8:	0007c503          	lbu	a0,0(a5)
     eac:	ffc40413          	addi	s0,s0,-4
     eb0:	000700e7          	jalr	a4
     eb4:	fc5ff06f          	j	e78 <print_hex_digits+0x30>

00000eb8 <print_hex>:
     eb8:	00800593          	li	a1,8
     ebc:	00000317          	auipc	t1,0x0
     ec0:	f8c30067          	jr	-116(t1) # e48 <print_hex_digits>

00000ec4 <printf>:
     ec4:	fb010113          	addi	sp,sp,-80
     ec8:	04f12223          	sw	a5,68(sp)
     ecc:	03410793          	addi	a5,sp,52
     ed0:	02812423          	sw	s0,40(sp)
     ed4:	02912223          	sw	s1,36(sp)
     ed8:	03212023          	sw	s2,32(sp)
     edc:	01312e23          	sw	s3,28(sp)
     ee0:	01412c23          	sw	s4,24(sp)
     ee4:	01512a23          	sw	s5,20(sp)
     ee8:	01612823          	sw	s6,16(sp)
     eec:	02112623          	sw	ra,44(sp)
     ef0:	00050413          	mv	s0,a0
     ef4:	02b12a23          	sw	a1,52(sp)
     ef8:	02c12c23          	sw	a2,56(sp)
     efc:	02d12e23          	sw	a3,60(sp)
     f00:	04e12023          	sw	a4,64(sp)
     f04:	05012423          	sw	a6,72(sp)
     f08:	05112623          	sw	a7,76(sp)
     f0c:	00f12623          	sw	a5,12(sp)
     f10:	02500913          	li	s2,37
     f14:	000044b7          	lui	s1,0x4
     f18:	07300993          	li	s3,115
     f1c:	07800a13          	li	s4,120
     f20:	06400a93          	li	s5,100
     f24:	06300b13          	li	s6,99
     f28:	00044503          	lbu	a0,0(s0)
     f2c:	02051663          	bnez	a0,f58 <printf+0x94>
     f30:	02c12083          	lw	ra,44(sp)
     f34:	02812403          	lw	s0,40(sp)
     f38:	02412483          	lw	s1,36(sp)
     f3c:	02012903          	lw	s2,32(sp)
     f40:	01c12983          	lw	s3,28(sp)
     f44:	01812a03          	lw	s4,24(sp)
     f48:	01412a83          	lw	s5,20(sp)
     f4c:	01012b03          	lw	s6,16(sp)
     f50:	05010113          	addi	sp,sp,80
     f54:	00008067          	ret
     f58:	09251863          	bne	a0,s2,fe8 <printf+0x124>
     f5c:	00144503          	lbu	a0,1(s0)
     f60:	03351463          	bne	a0,s3,f88 <printf+0xc4>
     f64:	00c12783          	lw	a5,12(sp)
     f68:	0007a503          	lw	a0,0(a5)
     f6c:	00478713          	addi	a4,a5,4
     f70:	00e12623          	sw	a4,12(sp)
     f74:	00000097          	auipc	ra,0x0
     f78:	de8080e7          	jalr	-536(ra) # d5c <print_string>
     f7c:	00140413          	addi	s0,s0,1
     f80:	00140413          	addi	s0,s0,1
     f84:	fa5ff06f          	j	f28 <printf+0x64>
     f88:	03451063          	bne	a0,s4,fa8 <printf+0xe4>
     f8c:	00c12783          	lw	a5,12(sp)
     f90:	0007a503          	lw	a0,0(a5)
     f94:	00478713          	addi	a4,a5,4
     f98:	00e12623          	sw	a4,12(sp)
     f9c:	00000097          	auipc	ra,0x0
     fa0:	f1c080e7          	jalr	-228(ra) # eb8 <print_hex>
     fa4:	fd9ff06f          	j	f7c <printf+0xb8>
     fa8:	03551063          	bne	a0,s5,fc8 <printf+0x104>
     fac:	00c12783          	lw	a5,12(sp)
     fb0:	0007a503          	lw	a0,0(a5)
     fb4:	00478713          	addi	a4,a5,4
     fb8:	00e12623          	sw	a4,12(sp)
     fbc:	00000097          	auipc	ra,0x0
     fc0:	de4080e7          	jalr	-540(ra) # da0 <print_dec>
     fc4:	fb9ff06f          	j	f7c <printf+0xb8>
     fc8:	28c4a783          	lw	a5,652(s1) # 428c <f_putchar>
     fcc:	01651a63          	bne	a0,s6,fe0 <printf+0x11c>
     fd0:	00c12703          	lw	a4,12(sp)
     fd4:	00072503          	lw	a0,0(a4)
     fd8:	00470693          	addi	a3,a4,4
     fdc:	00d12623          	sw	a3,12(sp)
     fe0:	000780e7          	jalr	a5
     fe4:	f99ff06f          	j	f7c <printf+0xb8>
     fe8:	28c4a783          	lw	a5,652(s1)
     fec:	000780e7          	jalr	a5
     ff0:	f91ff06f          	j	f80 <printf+0xbc>

00000ff4 <__mulsi3>:
     ff4:	00050793          	mv	a5,a0
     ff8:	00000513          	li	a0,0
     ffc:	00079463          	bnez	a5,1004 <__mulsi3+0x10>
    1000:	00008067          	ret
    1004:	0017f713          	andi	a4,a5,1
    1008:	00070463          	beqz	a4,1010 <__mulsi3+0x1c>
    100c:	00b50533          	add	a0,a0,a1
    1010:	0017d793          	srli	a5,a5,0x1
    1014:	00159593          	slli	a1,a1,0x1
    1018:	fe5ff06f          	j	ffc <__mulsi3+0x8>

0000101c <fat_list_insert_last>:
    101c:	00452783          	lw	a5,4(a0)
    1020:	04079263          	bnez	a5,1064 <fat_list_insert_last+0x48>
    1024:	00052783          	lw	a5,0(a0)
    1028:	00079c63          	bnez	a5,1040 <fat_list_insert_last+0x24>
    102c:	00b52023          	sw	a1,0(a0)
    1030:	00b52223          	sw	a1,4(a0)
    1034:	0005a023          	sw	zero,0(a1)
    1038:	0005a223          	sw	zero,4(a1)
    103c:	00008067          	ret
    1040:	0007a703          	lw	a4,0(a5)
    1044:	00f5a223          	sw	a5,4(a1)
    1048:	00e5a023          	sw	a4,0(a1)
    104c:	00071863          	bnez	a4,105c <fat_list_insert_last+0x40>
    1050:	00b52023          	sw	a1,0(a0)
    1054:	00b7a023          	sw	a1,0(a5)
    1058:	00008067          	ret
    105c:	00b72223          	sw	a1,4(a4)
    1060:	ff5ff06f          	j	1054 <fat_list_insert_last+0x38>
    1064:	0047a703          	lw	a4,4(a5)
    1068:	00f5a023          	sw	a5,0(a1)
    106c:	00e5a223          	sw	a4,4(a1)
    1070:	00071863          	bnez	a4,1080 <fat_list_insert_last+0x64>
    1074:	00b52223          	sw	a1,4(a0)
    1078:	00b7a223          	sw	a1,4(a5)
    107c:	00008067          	ret
    1080:	00b72023          	sw	a1,0(a4)
    1084:	ff5ff06f          	j	1078 <fat_list_insert_last+0x5c>

00001088 <FileString_StrCmpNoCase>:
    1088:	00050313          	mv	t1,a0
    108c:	00000793          	li	a5,0
    1090:	01900e13          	li	t3,25
    1094:	00c79663          	bne	a5,a2,10a0 <FileString_StrCmpNoCase+0x18>
    1098:	00000513          	li	a0,0
    109c:	00008067          	ret
    10a0:	00f30733          	add	a4,t1,a5
    10a4:	00074883          	lbu	a7,0(a4)
    10a8:	00f58733          	add	a4,a1,a5
    10ac:	00074803          	lbu	a6,0(a4)
    10b0:	fbf88713          	addi	a4,a7,-65
    10b4:	0ff77713          	zext.b	a4,a4
    10b8:	00088693          	mv	a3,a7
    10bc:	00ee6663          	bltu	t3,a4,10c8 <FileString_StrCmpNoCase+0x40>
    10c0:	02088693          	addi	a3,a7,32
    10c4:	0ff6f693          	zext.b	a3,a3
    10c8:	fbf80513          	addi	a0,a6,-65
    10cc:	0ff57513          	zext.b	a0,a0
    10d0:	00080713          	mv	a4,a6
    10d4:	00ae6663          	bltu	t3,a0,10e0 <FileString_StrCmpNoCase+0x58>
    10d8:	02080713          	addi	a4,a6,32
    10dc:	0ff77713          	zext.b	a4,a4
    10e0:	40e68533          	sub	a0,a3,a4
    10e4:	00e69863          	bne	a3,a4,10f4 <FileString_StrCmpNoCase+0x6c>
    10e8:	00088663          	beqz	a7,10f4 <FileString_StrCmpNoCase+0x6c>
    10ec:	00178793          	addi	a5,a5,1
    10f0:	fa0812e3          	bnez	a6,1094 <FileString_StrCmpNoCase+0xc>
    10f4:	00008067          	ret

000010f8 <FileString_GetExtension>:
    10f8:	00050713          	mv	a4,a0
    10fc:	00050793          	mv	a5,a0
    1100:	02e00613          	li	a2,46
    1104:	fff00513          	li	a0,-1
    1108:	0007c683          	lbu	a3,0(a5)
    110c:	00069463          	bnez	a3,1114 <FileString_GetExtension+0x1c>
    1110:	00008067          	ret
    1114:	00c69463          	bne	a3,a2,111c <FileString_GetExtension+0x24>
    1118:	40e78533          	sub	a0,a5,a4
    111c:	00178793          	addi	a5,a5,1
    1120:	fe9ff06f          	j	1108 <FileString_GetExtension+0x10>

00001124 <fatfs_fat_writeback>:
    1124:	00059663          	bnez	a1,1130 <fatfs_fat_writeback+0xc>
    1128:	00000513          	li	a0,0
    112c:	00008067          	ret
    1130:	2045a703          	lw	a4,516(a1)
    1134:	ff010113          	addi	sp,sp,-16
    1138:	00812423          	sw	s0,8(sp)
    113c:	00112623          	sw	ra,12(sp)
    1140:	00058413          	mv	s0,a1
    1144:	00070a63          	beqz	a4,1158 <fatfs_fat_writeback+0x34>
    1148:	03852683          	lw	a3,56(a0)
    114c:	00050793          	mv	a5,a0
    1150:	00069863          	bnez	a3,1160 <fatfs_fat_writeback+0x3c>
    1154:	20042223          	sw	zero,516(s0)
    1158:	00100513          	li	a0,1
    115c:	0380006f          	j	1194 <fatfs_fat_writeback+0x70>
    1160:	2005a503          	lw	a0,512(a1)
    1164:	0147a703          	lw	a4,20(a5)
    1168:	0207a583          	lw	a1,32(a5)
    116c:	00100613          	li	a2,1
    1170:	40e507b3          	sub	a5,a0,a4
    1174:	00178793          	addi	a5,a5,1
    1178:	00f5f663          	bgeu	a1,a5,1184 <fatfs_fat_writeback+0x60>
    117c:	00b70733          	add	a4,a4,a1
    1180:	40a70633          	sub	a2,a4,a0
    1184:	00040593          	mv	a1,s0
    1188:	000680e7          	jalr	a3
    118c:	fc0514e3          	bnez	a0,1154 <fatfs_fat_writeback+0x30>
    1190:	00000513          	li	a0,0
    1194:	00c12083          	lw	ra,12(sp)
    1198:	00812403          	lw	s0,8(sp)
    119c:	01010113          	addi	sp,sp,16
    11a0:	00008067          	ret

000011a4 <fatfs_fat_read_sector>:
    11a4:	fe010113          	addi	sp,sp,-32
    11a8:	01212823          	sw	s2,16(sp)
    11ac:	25452903          	lw	s2,596(a0)
    11b0:	00812c23          	sw	s0,24(sp)
    11b4:	00912a23          	sw	s1,20(sp)
    11b8:	01312623          	sw	s3,12(sp)
    11bc:	00112e23          	sw	ra,28(sp)
    11c0:	00050993          	mv	s3,a0
    11c4:	00058493          	mv	s1,a1
    11c8:	00000413          	li	s0,0
    11cc:	04091063          	bnez	s2,120c <fatfs_fat_read_sector+0x68>
    11d0:	2549a783          	lw	a5,596(s3)
    11d4:	20f42623          	sw	a5,524(s0)
    11d8:	20442783          	lw	a5,516(s0)
    11dc:	2489aa23          	sw	s0,596(s3)
    11e0:	08079863          	bnez	a5,1270 <fatfs_fat_read_sector+0xcc>
    11e4:	0349a783          	lw	a5,52(s3)
    11e8:	20942023          	sw	s1,512(s0)
    11ec:	00100613          	li	a2,1
    11f0:	00040593          	mv	a1,s0
    11f4:	00048513          	mv	a0,s1
    11f8:	000780e7          	jalr	a5
    11fc:	08051663          	bnez	a0,1288 <fatfs_fat_read_sector+0xe4>
    1200:	fff00793          	li	a5,-1
    1204:	20f42023          	sw	a5,512(s0)
    1208:	0480006f          	j	1250 <fatfs_fat_read_sector+0xac>
    120c:	20092783          	lw	a5,512(s2)
    1210:	00f4e663          	bltu	s1,a5,121c <fatfs_fat_read_sector+0x78>
    1214:	00178713          	addi	a4,a5,1
    1218:	02e4e463          	bltu	s1,a4,1240 <fatfs_fat_read_sector+0x9c>
    121c:	20c92783          	lw	a5,524(s2)
    1220:	00079663          	bnez	a5,122c <fatfs_fat_read_sector+0x88>
    1224:	00040a63          	beqz	s0,1238 <fatfs_fat_read_sector+0x94>
    1228:	20042623          	sw	zero,524(s0)
    122c:	00090413          	mv	s0,s2
    1230:	20c92903          	lw	s2,524(s2)
    1234:	f99ff06f          	j	11cc <fatfs_fat_read_sector+0x28>
    1238:	2409aa23          	sw	zero,596(s3)
    123c:	ff1ff06f          	j	122c <fatfs_fat_read_sector+0x88>
    1240:	40f484b3          	sub	s1,s1,a5
    1244:	00949493          	slli	s1,s1,0x9
    1248:	009904b3          	add	s1,s2,s1
    124c:	20992423          	sw	s1,520(s2)
    1250:	01c12083          	lw	ra,28(sp)
    1254:	01812403          	lw	s0,24(sp)
    1258:	01412483          	lw	s1,20(sp)
    125c:	00c12983          	lw	s3,12(sp)
    1260:	00090513          	mv	a0,s2
    1264:	01012903          	lw	s2,16(sp)
    1268:	02010113          	addi	sp,sp,32
    126c:	00008067          	ret
    1270:	00040593          	mv	a1,s0
    1274:	00098513          	mv	a0,s3
    1278:	00000097          	auipc	ra,0x0
    127c:	eac080e7          	jalr	-340(ra) # 1124 <fatfs_fat_writeback>
    1280:	f60512e3          	bnez	a0,11e4 <fatfs_fat_read_sector+0x40>
    1284:	fcdff06f          	j	1250 <fatfs_fat_read_sector+0xac>
    1288:	20842423          	sw	s0,520(s0)
    128c:	00040913          	mv	s2,s0
    1290:	fc1ff06f          	j	1250 <fatfs_fat_read_sector+0xac>

00001294 <_allocate_file>:
    1294:	ff010113          	addi	sp,sp,-16
    1298:	000047b7          	lui	a5,0x4
    129c:	00812423          	sw	s0,8(sp)
    12a0:	2907a403          	lw	s0,656(a5) # 4290 <_free_file_list>
    12a4:	00112623          	sw	ra,12(sp)
    12a8:	02040e63          	beqz	s0,12e4 <_allocate_file+0x50>
    12ac:	00042703          	lw	a4,0(s0)
    12b0:	00442683          	lw	a3,4(s0)
    12b4:	29078793          	addi	a5,a5,656
    12b8:	04071063          	bnez	a4,12f8 <_allocate_file+0x64>
    12bc:	00d7a023          	sw	a3,0(a5)
    12c0:	00442683          	lw	a3,4(s0)
    12c4:	02069e63          	bnez	a3,1300 <_allocate_file+0x6c>
    12c8:	00e7a223          	sw	a4,4(a5)
    12cc:	00004537          	lui	a0,0x4
    12d0:	00040593          	mv	a1,s0
    12d4:	29850513          	addi	a0,a0,664 # 4298 <_open_file_list>
    12d8:	00000097          	auipc	ra,0x0
    12dc:	d44080e7          	jalr	-700(ra) # 101c <fat_list_insert_last>
    12e0:	bc440413          	addi	s0,s0,-1084
    12e4:	00c12083          	lw	ra,12(sp)
    12e8:	00040513          	mv	a0,s0
    12ec:	00812403          	lw	s0,8(sp)
    12f0:	01010113          	addi	sp,sp,16
    12f4:	00008067          	ret
    12f8:	00d72223          	sw	a3,4(a4)
    12fc:	fc5ff06f          	j	12c0 <_allocate_file+0x2c>
    1300:	00e6a023          	sw	a4,0(a3)
    1304:	fc9ff06f          	j	12cc <_allocate_file+0x38>

00001308 <_free_file>:
    1308:	43c52783          	lw	a5,1084(a0)
    130c:	44052703          	lw	a4,1088(a0)
    1310:	43c50593          	addi	a1,a0,1084
    1314:	02079663          	bnez	a5,1340 <_free_file+0x38>
    1318:	000046b7          	lui	a3,0x4
    131c:	28e6ac23          	sw	a4,664(a3) # 4298 <_open_file_list>
    1320:	44052703          	lw	a4,1088(a0)
    1324:	02071263          	bnez	a4,1348 <_free_file+0x40>
    1328:	00004737          	lui	a4,0x4
    132c:	28f72e23          	sw	a5,668(a4) # 429c <_open_file_list+0x4>
    1330:	00004537          	lui	a0,0x4
    1334:	29050513          	addi	a0,a0,656 # 4290 <_free_file_list>
    1338:	00000317          	auipc	t1,0x0
    133c:	ce430067          	jr	-796(t1) # 101c <fat_list_insert_last>
    1340:	00e7a223          	sw	a4,4(a5)
    1344:	fddff06f          	j	1320 <_free_file+0x18>
    1348:	00f72023          	sw	a5,0(a4)
    134c:	fe5ff06f          	j	1330 <_free_file+0x28>

00001350 <fatfs_lba_of_cluster>:
    1350:	ff010113          	addi	sp,sp,-16
    1354:	00812423          	sw	s0,8(sp)
    1358:	00112623          	sw	ra,12(sp)
    135c:	00050413          	mv	s0,a0
    1360:	00058513          	mv	a0,a1
    1364:	00044583          	lbu	a1,0(s0)
    1368:	ffe50513          	addi	a0,a0,-2
    136c:	00000097          	auipc	ra,0x0
    1370:	c88080e7          	jalr	-888(ra) # ff4 <__mulsi3>
    1374:	00442783          	lw	a5,4(s0)
    1378:	00f50533          	add	a0,a0,a5
    137c:	03042783          	lw	a5,48(s0)
    1380:	00079863          	bnez	a5,1390 <fatfs_lba_of_cluster+0x40>
    1384:	02845783          	lhu	a5,40(s0)
    1388:	4047d793          	srai	a5,a5,0x4
    138c:	00f50533          	add	a0,a0,a5
    1390:	00c12083          	lw	ra,12(sp)
    1394:	00812403          	lw	s0,8(sp)
    1398:	01010113          	addi	sp,sp,16
    139c:	00008067          	ret

000013a0 <fatfs_sector_read>:
    13a0:	03452783          	lw	a5,52(a0)
    13a4:	00058713          	mv	a4,a1
    13a8:	00070513          	mv	a0,a4
    13ac:	00060593          	mv	a1,a2
    13b0:	00068613          	mv	a2,a3
    13b4:	00078067          	jr	a5

000013b8 <fatfs_sector_write>:
    13b8:	03852783          	lw	a5,56(a0)
    13bc:	00058713          	mv	a4,a1
    13c0:	00070513          	mv	a0,a4
    13c4:	00060593          	mv	a1,a2
    13c8:	00068613          	mv	a2,a3
    13cc:	00078067          	jr	a5

000013d0 <fatfs_write_sector>:
    13d0:	03852783          	lw	a5,56(a0)
    13d4:	0a078863          	beqz	a5,1484 <fatfs_write_sector+0xb4>
    13d8:	fe010113          	addi	sp,sp,-32
    13dc:	01212823          	sw	s2,16(sp)
    13e0:	00068913          	mv	s2,a3
    13e4:	03052683          	lw	a3,48(a0)
    13e8:	00812c23          	sw	s0,24(sp)
    13ec:	00912a23          	sw	s1,20(sp)
    13f0:	00112e23          	sw	ra,28(sp)
    13f4:	00d5e733          	or	a4,a1,a3
    13f8:	00050413          	mv	s0,a0
    13fc:	00060493          	mv	s1,a2
    1400:	04071063          	bnez	a4,1440 <fatfs_write_sector+0x70>
    1404:	01052703          	lw	a4,16(a0)
    1408:	06e67063          	bgeu	a2,a4,1468 <fatfs_write_sector+0x98>
    140c:	01c52503          	lw	a0,28(a0)
    1410:	00c42703          	lw	a4,12(s0)
    1414:	00e50533          	add	a0,a0,a4
    1418:	00c50533          	add	a0,a0,a2
    141c:	02090e63          	beqz	s2,1458 <fatfs_write_sector+0x88>
    1420:	00100613          	li	a2,1
    1424:	00090593          	mv	a1,s2
    1428:	01812403          	lw	s0,24(sp)
    142c:	01c12083          	lw	ra,28(sp)
    1430:	01412483          	lw	s1,20(sp)
    1434:	01012903          	lw	s2,16(sp)
    1438:	02010113          	addi	sp,sp,32
    143c:	00078067          	jr	a5
    1440:	00f12623          	sw	a5,12(sp)
    1444:	00000097          	auipc	ra,0x0
    1448:	f0c080e7          	jalr	-244(ra) # 1350 <fatfs_lba_of_cluster>
    144c:	00c12783          	lw	a5,12(sp)
    1450:	00a48533          	add	a0,s1,a0
    1454:	fc9ff06f          	j	141c <fatfs_write_sector+0x4c>
    1458:	24a42223          	sw	a0,580(s0)
    145c:	00100613          	li	a2,1
    1460:	04440593          	addi	a1,s0,68
    1464:	fc5ff06f          	j	1428 <fatfs_write_sector+0x58>
    1468:	01c12083          	lw	ra,28(sp)
    146c:	01812403          	lw	s0,24(sp)
    1470:	01412483          	lw	s1,20(sp)
    1474:	01012903          	lw	s2,16(sp)
    1478:	00000513          	li	a0,0
    147c:	02010113          	addi	sp,sp,32
    1480:	00008067          	ret
    1484:	00000513          	li	a0,0
    1488:	00008067          	ret

0000148c <fl_init>:
    148c:	ff010113          	addi	sp,sp,-16
    1490:	00812423          	sw	s0,8(sp)
    1494:	00004437          	lui	s0,0x4
    1498:	00112623          	sw	ra,12(sp)
    149c:	29040793          	addi	a5,s0,656 # 4290 <_free_file_list>
    14a0:	0007a223          	sw	zero,4(a5)
    14a4:	0007a023          	sw	zero,0(a5)
    14a8:	000095b7          	lui	a1,0x9
    14ac:	000047b7          	lui	a5,0x4
    14b0:	29878793          	addi	a5,a5,664 # 4298 <_open_file_list>
    14b4:	29040513          	addi	a0,s0,656
    14b8:	b4c58593          	addi	a1,a1,-1204 # 8b4c <_files+0x43c>
    14bc:	0007a223          	sw	zero,4(a5)
    14c0:	0007a023          	sw	zero,0(a5)
    14c4:	00000097          	auipc	ra,0x0
    14c8:	b58080e7          	jalr	-1192(ra) # 101c <fat_list_insert_last>
    14cc:	000095b7          	lui	a1,0x9
    14d0:	29040513          	addi	a0,s0,656
    14d4:	f9058593          	addi	a1,a1,-112 # 8f90 <_files+0x880>
    14d8:	00000097          	auipc	ra,0x0
    14dc:	b44080e7          	jalr	-1212(ra) # 101c <fat_list_insert_last>
    14e0:	00c12083          	lw	ra,12(sp)
    14e4:	00812403          	lw	s0,8(sp)
    14e8:	000047b7          	lui	a5,0x4
    14ec:	00100713          	li	a4,1
    14f0:	2ae7a223          	sw	a4,676(a5) # 42a4 <_filelib_init>
    14f4:	01010113          	addi	sp,sp,16
    14f8:	00008067          	ret

000014fc <fatfs_lfn_cache_entry>:
    14fc:	0005c783          	lbu	a5,0(a1)
    1500:	01300693          	li	a3,19
    1504:	01f7f793          	andi	a5,a5,31
    1508:	fff78713          	addi	a4,a5,-1
    150c:	0ff77613          	zext.b	a2,a4
    1510:	0ac6ea63          	bltu	a3,a2,15c4 <fatfs_lfn_cache_entry+0xc8>
    1514:	10554683          	lbu	a3,261(a0)
    1518:	00069463          	bnez	a3,1520 <fatfs_lfn_cache_entry+0x24>
    151c:	10f502a3          	sb	a5,261(a0)
    1520:	00171793          	slli	a5,a4,0x1
    1524:	00e787b3          	add	a5,a5,a4
    1528:	0015c683          	lbu	a3,1(a1)
    152c:	00279793          	slli	a5,a5,0x2
    1530:	00e787b3          	add	a5,a5,a4
    1534:	00f50533          	add	a0,a0,a5
    1538:	00d50023          	sb	a3,0(a0)
    153c:	0035c783          	lbu	a5,3(a1)
    1540:	0ff00713          	li	a4,255
    1544:	02000693          	li	a3,32
    1548:	00f500a3          	sb	a5,1(a0)
    154c:	0055c783          	lbu	a5,5(a1)
    1550:	00f50123          	sb	a5,2(a0)
    1554:	0075c783          	lbu	a5,7(a1)
    1558:	00f501a3          	sb	a5,3(a0)
    155c:	0095c783          	lbu	a5,9(a1)
    1560:	00f50223          	sb	a5,4(a0)
    1564:	00e5c783          	lbu	a5,14(a1)
    1568:	00f502a3          	sb	a5,5(a0)
    156c:	0105c783          	lbu	a5,16(a1)
    1570:	00f50323          	sb	a5,6(a0)
    1574:	0125c783          	lbu	a5,18(a1)
    1578:	00f503a3          	sb	a5,7(a0)
    157c:	0145c783          	lbu	a5,20(a1)
    1580:	00f50423          	sb	a5,8(a0)
    1584:	0165c783          	lbu	a5,22(a1)
    1588:	00f504a3          	sb	a5,9(a0)
    158c:	0185c783          	lbu	a5,24(a1)
    1590:	00f50523          	sb	a5,10(a0)
    1594:	01c5c783          	lbu	a5,28(a1)
    1598:	00f505a3          	sb	a5,11(a0)
    159c:	01e5c783          	lbu	a5,30(a1)
    15a0:	00f50623          	sb	a5,12(a0)
    15a4:	00d00793          	li	a5,13
    15a8:	00054603          	lbu	a2,0(a0)
    15ac:	00e61463          	bne	a2,a4,15b4 <fatfs_lfn_cache_entry+0xb8>
    15b0:	00d50023          	sb	a3,0(a0)
    15b4:	fff78793          	addi	a5,a5,-1
    15b8:	0ff7f793          	zext.b	a5,a5
    15bc:	00150513          	addi	a0,a0,1
    15c0:	fe0794e3          	bnez	a5,15a8 <fatfs_lfn_cache_entry+0xac>
    15c4:	00008067          	ret

000015c8 <fatfs_lfn_cache_get>:
    15c8:	10554703          	lbu	a4,261(a0)
    15cc:	01400793          	li	a5,20
    15d0:	00f71663          	bne	a4,a5,15dc <fatfs_lfn_cache_get+0x14>
    15d4:	10050223          	sb	zero,260(a0)
    15d8:	00008067          	ret
    15dc:	02070063          	beqz	a4,15fc <fatfs_lfn_cache_get+0x34>
    15e0:	00171793          	slli	a5,a4,0x1
    15e4:	00e787b3          	add	a5,a5,a4
    15e8:	00279793          	slli	a5,a5,0x2
    15ec:	00e787b3          	add	a5,a5,a4
    15f0:	00f507b3          	add	a5,a0,a5
    15f4:	00078023          	sb	zero,0(a5)
    15f8:	00008067          	ret
    15fc:	00050023          	sb	zero,0(a0)
    1600:	00008067          	ret

00001604 <fatfs_entry_lfn_text>:
    1604:	00b54503          	lbu	a0,11(a0)
    1608:	00f57513          	andi	a0,a0,15
    160c:	ff150513          	addi	a0,a0,-15
    1610:	00153513          	seqz	a0,a0
    1614:	00008067          	ret

00001618 <fatfs_entry_lfn_invalid>:
    1618:	00054703          	lbu	a4,0(a0)
    161c:	00050793          	mv	a5,a0
    1620:	02070463          	beqz	a4,1648 <fatfs_entry_lfn_invalid+0x30>
    1624:	0e500693          	li	a3,229
    1628:	00100513          	li	a0,1
    162c:	02d70063          	beq	a4,a3,164c <fatfs_entry_lfn_invalid+0x34>
    1630:	00b7c783          	lbu	a5,11(a5)
    1634:	00800713          	li	a4,8
    1638:	00e78a63          	beq	a5,a4,164c <fatfs_entry_lfn_invalid+0x34>
    163c:	0067f793          	andi	a5,a5,6
    1640:	00f03533          	snez	a0,a5
    1644:	00008067          	ret
    1648:	00100513          	li	a0,1
    164c:	00008067          	ret

00001650 <fatfs_entry_lfn_exists>:
    1650:	00b5c783          	lbu	a5,11(a1)
    1654:	00f00693          	li	a3,15
    1658:	00050713          	mv	a4,a0
    165c:	02d78a63          	beq	a5,a3,1690 <fatfs_entry_lfn_exists+0x40>
    1660:	0005c683          	lbu	a3,0(a1)
    1664:	00000513          	li	a0,0
    1668:	02068663          	beqz	a3,1694 <fatfs_entry_lfn_exists+0x44>
    166c:	0e500613          	li	a2,229
    1670:	02c68263          	beq	a3,a2,1694 <fatfs_entry_lfn_exists+0x44>
    1674:	00800693          	li	a3,8
    1678:	00d78e63          	beq	a5,a3,1694 <fatfs_entry_lfn_exists+0x44>
    167c:	0067f793          	andi	a5,a5,6
    1680:	00079a63          	bnez	a5,1694 <fatfs_entry_lfn_exists+0x44>
    1684:	10574503          	lbu	a0,261(a4)
    1688:	00a03533          	snez	a0,a0
    168c:	00008067          	ret
    1690:	00000513          	li	a0,0
    1694:	00008067          	ret

00001698 <fatfs_entry_sfn_only>:
    1698:	00b54783          	lbu	a5,11(a0)
    169c:	00f00713          	li	a4,15
    16a0:	02e78663          	beq	a5,a4,16cc <fatfs_entry_sfn_only+0x34>
    16a4:	00054703          	lbu	a4,0(a0)
    16a8:	00000513          	li	a0,0
    16ac:	02070263          	beqz	a4,16d0 <fatfs_entry_sfn_only+0x38>
    16b0:	0e500693          	li	a3,229
    16b4:	00d70e63          	beq	a4,a3,16d0 <fatfs_entry_sfn_only+0x38>
    16b8:	00800713          	li	a4,8
    16bc:	00e78a63          	beq	a5,a4,16d0 <fatfs_entry_sfn_only+0x38>
    16c0:	0067f793          	andi	a5,a5,6
    16c4:	0017b513          	seqz	a0,a5
    16c8:	00008067          	ret
    16cc:	00000513          	li	a0,0
    16d0:	00008067          	ret

000016d4 <fatfs_entry_is_dir>:
    16d4:	00b54503          	lbu	a0,11(a0)
    16d8:	00455513          	srli	a0,a0,0x4
    16dc:	00157513          	andi	a0,a0,1
    16e0:	00008067          	ret

000016e4 <fatfs_entry_is_file>:
    16e4:	00b54503          	lbu	a0,11(a0)
    16e8:	00555513          	srli	a0,a0,0x5
    16ec:	00157513          	andi	a0,a0,1
    16f0:	00008067          	ret

000016f4 <fatfs_lfn_entries_required>:
    16f4:	ff010113          	addi	sp,sp,-16
    16f8:	00112623          	sw	ra,12(sp)
    16fc:	fffff097          	auipc	ra,0xfffff
    1700:	234080e7          	jalr	564(ra) # 930 <strlen>
    1704:	00050a63          	beqz	a0,1718 <fatfs_lfn_entries_required+0x24>
    1708:	00d00593          	li	a1,13
    170c:	00c50513          	addi	a0,a0,12
    1710:	fffff097          	auipc	ra,0xfffff
    1714:	12c080e7          	jalr	300(ra) # 83c <__divsi3>
    1718:	00c12083          	lw	ra,12(sp)
    171c:	01010113          	addi	sp,sp,16
    1720:	00008067          	ret

00001724 <fatfs_filename_to_lfn>:
    1724:	fa010113          	addi	sp,sp,-96
    1728:	04912a23          	sw	s1,84(sp)
    172c:	00058493          	mv	s1,a1
    1730:	000045b7          	lui	a1,0x4
    1734:	24858593          	addi	a1,a1,584 # 4248 <font+0x1e0>
    1738:	05212823          	sw	s2,80(sp)
    173c:	05312623          	sw	s3,76(sp)
    1740:	00060913          	mv	s2,a2
    1744:	00050993          	mv	s3,a0
    1748:	03400613          	li	a2,52
    174c:	00c10513          	addi	a0,sp,12
    1750:	04112e23          	sw	ra,92(sp)
    1754:	04812c23          	sw	s0,88(sp)
    1758:	05412423          	sw	s4,72(sp)
    175c:	05512223          	sw	s5,68(sp)
    1760:	05612023          	sw	s6,64(sp)
    1764:	00068b13          	mv	s6,a3
    1768:	fffff097          	auipc	ra,0xfffff
    176c:	1a4080e7          	jalr	420(ra) # 90c <memcpy>
    1770:	00098513          	mv	a0,s3
    1774:	fffff097          	auipc	ra,0xfffff
    1778:	1bc080e7          	jalr	444(ra) # 930 <strlen>
    177c:	00050a93          	mv	s5,a0
    1780:	00098513          	mv	a0,s3
    1784:	00000097          	auipc	ra,0x0
    1788:	f70080e7          	jalr	-144(ra) # 16f4 <fatfs_lfn_entries_required>
    178c:	00191793          	slli	a5,s2,0x1
    1790:	012787b3          	add	a5,a5,s2
    1794:	00279793          	slli	a5,a5,0x2
    1798:	00050a13          	mv	s4,a0
    179c:	02000613          	li	a2,32
    17a0:	00000593          	li	a1,0
    17a4:	00048513          	mv	a0,s1
    17a8:	01278433          	add	s0,a5,s2
    17ac:	fffff097          	auipc	ra,0xfffff
    17b0:	144080e7          	jalr	324(ra) # 8f0 <memset>
    17b4:	00190793          	addi	a5,s2,1
    17b8:	fffa0a13          	addi	s4,s4,-1 # 3fff <LEDS+0x3f>
    17bc:	0ff7f793          	zext.b	a5,a5
    17c0:	012a1463          	bne	s4,s2,17c8 <fatfs_filename_to_lfn+0xa4>
    17c4:	0407e793          	ori	a5,a5,64
    17c8:	00f48023          	sb	a5,0(s1)
    17cc:	00f00793          	li	a5,15
    17d0:	00f485a3          	sb	a5,11(s1)
    17d4:	016486a3          	sb	s6,13(s1)
    17d8:	00c10713          	addi	a4,sp,12
    17dc:	00040793          	mv	a5,s0
    17e0:	fff00613          	li	a2,-1
    17e4:	00072683          	lw	a3,0(a4)
    17e8:	00d486b3          	add	a3,s1,a3
    17ec:	0557d463          	bge	a5,s5,1834 <fatfs_filename_to_lfn+0x110>
    17f0:	00f985b3          	add	a1,s3,a5
    17f4:	0005c583          	lbu	a1,0(a1)
    17f8:	00b68023          	sb	a1,0(a3)
    17fc:	00470713          	addi	a4,a4,4
    1800:	04010693          	addi	a3,sp,64
    1804:	00178793          	addi	a5,a5,1
    1808:	fcd71ee3          	bne	a4,a3,17e4 <fatfs_filename_to_lfn+0xc0>
    180c:	05c12083          	lw	ra,92(sp)
    1810:	05812403          	lw	s0,88(sp)
    1814:	05412483          	lw	s1,84(sp)
    1818:	05012903          	lw	s2,80(sp)
    181c:	04c12983          	lw	s3,76(sp)
    1820:	04812a03          	lw	s4,72(sp)
    1824:	04412a83          	lw	s5,68(sp)
    1828:	04012b03          	lw	s6,64(sp)
    182c:	06010113          	addi	sp,sp,96
    1830:	00008067          	ret
    1834:	01579663          	bne	a5,s5,1840 <fatfs_filename_to_lfn+0x11c>
    1838:	00068023          	sb	zero,0(a3)
    183c:	fc1ff06f          	j	17fc <fatfs_filename_to_lfn+0xd8>
    1840:	00c68023          	sb	a2,0(a3)
    1844:	00c680a3          	sb	a2,1(a3)
    1848:	fb5ff06f          	j	17fc <fatfs_filename_to_lfn+0xd8>

0000184c <fatfs_sfn_create_entry>:
    184c:	00000793          	li	a5,0
    1850:	00b00813          	li	a6,11
    1854:	00f508b3          	add	a7,a0,a5
    1858:	0008c303          	lbu	t1,0(a7)
    185c:	00f688b3          	add	a7,a3,a5
    1860:	00178793          	addi	a5,a5,1
    1864:	00688023          	sb	t1,0(a7)
    1868:	ff0796e3          	bne	a5,a6,1854 <fatfs_sfn_create_entry+0x8>
    186c:	02000793          	li	a5,32
    1870:	00f68823          	sb	a5,16(a3)
    1874:	00f68923          	sb	a5,18(a3)
    1878:	00f68c23          	sb	a5,24(a3)
    187c:	000686a3          	sb	zero,13(a3)
    1880:	00068723          	sb	zero,14(a3)
    1884:	000687a3          	sb	zero,15(a3)
    1888:	000688a3          	sb	zero,17(a3)
    188c:	000689a3          	sb	zero,19(a3)
    1890:	00068b23          	sb	zero,22(a3)
    1894:	00068ba3          	sb	zero,23(a3)
    1898:	00068ca3          	sb	zero,25(a3)
    189c:	01000793          	li	a5,16
    18a0:	00071463          	bnez	a4,18a8 <fatfs_sfn_create_entry+0x5c>
    18a4:	02000793          	li	a5,32
    18a8:	00f685a3          	sb	a5,11(a3)
    18ac:	01065793          	srli	a5,a2,0x10
    18b0:	00f68a23          	sb	a5,20(a3)
    18b4:	0087d793          	srli	a5,a5,0x8
    18b8:	00f68aa3          	sb	a5,21(a3)
    18bc:	01061793          	slli	a5,a2,0x10
    18c0:	0107d793          	srli	a5,a5,0x10
    18c4:	0087d793          	srli	a5,a5,0x8
    18c8:	00f68da3          	sb	a5,27(a3)
    18cc:	0085d793          	srli	a5,a1,0x8
    18d0:	00b68e23          	sb	a1,28(a3)
    18d4:	00f68ea3          	sb	a5,29(a3)
    18d8:	0105d793          	srli	a5,a1,0x10
    18dc:	0185d593          	srli	a1,a1,0x18
    18e0:	00068623          	sb	zero,12(a3)
    18e4:	00c68d23          	sb	a2,26(a3)
    18e8:	00f68f23          	sb	a5,30(a3)
    18ec:	00b68fa3          	sb	a1,31(a3)
    18f0:	00008067          	ret

000018f4 <fatfs_lfn_create_sfn>:
    18f4:	0005c703          	lbu	a4,0(a1)
    18f8:	02e00793          	li	a5,46
    18fc:	16f70663          	beq	a4,a5,1a68 <fatfs_lfn_create_sfn+0x174>
    1900:	fe010113          	addi	sp,sp,-32
    1904:	00912a23          	sw	s1,20(sp)
    1908:	00050493          	mv	s1,a0
    190c:	00058513          	mv	a0,a1
    1910:	00112e23          	sw	ra,28(sp)
    1914:	00812c23          	sw	s0,24(sp)
    1918:	01212823          	sw	s2,16(sp)
    191c:	00058413          	mv	s0,a1
    1920:	fffff097          	auipc	ra,0xfffff
    1924:	010080e7          	jalr	16(ra) # 930 <strlen>
    1928:	00b00613          	li	a2,11
    192c:	02000593          	li	a1,32
    1930:	00050913          	mv	s2,a0
    1934:	00048513          	mv	a0,s1
    1938:	fffff097          	auipc	ra,0xfffff
    193c:	fb8080e7          	jalr	-72(ra) # 8f0 <memset>
    1940:	00300613          	li	a2,3
    1944:	02000593          	li	a1,32
    1948:	00c10513          	addi	a0,sp,12
    194c:	fffff097          	auipc	ra,0xfffff
    1950:	fa4080e7          	jalr	-92(ra) # 8f0 <memset>
    1954:	fff00713          	li	a4,-1
    1958:	00000793          	li	a5,0
    195c:	02e00693          	li	a3,46
    1960:	0d27c263          	blt	a5,s2,1a24 <fatfs_lfn_create_sfn+0x130>
    1964:	fff00793          	li	a5,-1
    1968:	0ef70863          	beq	a4,a5,1a58 <fatfs_lfn_create_sfn+0x164>
    196c:	00170793          	addi	a5,a4,1
    1970:	00c10693          	addi	a3,sp,12
    1974:	00470613          	addi	a2,a4,4
    1978:	0cf61263          	bne	a2,a5,1a3c <fatfs_lfn_create_sfn+0x148>
    197c:	00000613          	li	a2,0
    1980:	00000693          	li	a3,0
    1984:	02000513          	li	a0,32
    1988:	02e00813          	li	a6,46
    198c:	01900893          	li	a7,25
    1990:	00800313          	li	t1,8
    1994:	02e6dc63          	bge	a3,a4,19cc <fatfs_lfn_create_sfn+0xd8>
    1998:	00d407b3          	add	a5,s0,a3
    199c:	0007c783          	lbu	a5,0(a5)
    19a0:	0ca78063          	beq	a5,a0,1a60 <fatfs_lfn_create_sfn+0x16c>
    19a4:	0b078e63          	beq	a5,a6,1a60 <fatfs_lfn_create_sfn+0x16c>
    19a8:	f9f78593          	addi	a1,a5,-97
    19ac:	0ff5f593          	zext.b	a1,a1
    19b0:	00c48e33          	add	t3,s1,a2
    19b4:	00160613          	addi	a2,a2,1
    19b8:	00b8e663          	bltu	a7,a1,19c4 <fatfs_lfn_create_sfn+0xd0>
    19bc:	fe078793          	addi	a5,a5,-32
    19c0:	0ff7f793          	zext.b	a5,a5
    19c4:	00fe0023          	sb	a5,0(t3)
    19c8:	08661c63          	bne	a2,t1,1a60 <fatfs_lfn_create_sfn+0x16c>
    19cc:	00c10793          	addi	a5,sp,12
    19d0:	00800693          	li	a3,8
    19d4:	01900513          	li	a0,25
    19d8:	00b00593          	li	a1,11
    19dc:	0007c703          	lbu	a4,0(a5)
    19e0:	f9f70613          	addi	a2,a4,-97
    19e4:	0ff67613          	zext.b	a2,a2
    19e8:	00c56663          	bltu	a0,a2,19f4 <fatfs_lfn_create_sfn+0x100>
    19ec:	fe070713          	addi	a4,a4,-32
    19f0:	0ff77713          	zext.b	a4,a4
    19f4:	00d48633          	add	a2,s1,a3
    19f8:	00e60023          	sb	a4,0(a2)
    19fc:	00168693          	addi	a3,a3,1
    1a00:	00178793          	addi	a5,a5,1
    1a04:	fcb69ce3          	bne	a3,a1,19dc <fatfs_lfn_create_sfn+0xe8>
    1a08:	01c12083          	lw	ra,28(sp)
    1a0c:	01812403          	lw	s0,24(sp)
    1a10:	01412483          	lw	s1,20(sp)
    1a14:	01012903          	lw	s2,16(sp)
    1a18:	00100513          	li	a0,1
    1a1c:	02010113          	addi	sp,sp,32
    1a20:	00008067          	ret
    1a24:	00f40633          	add	a2,s0,a5
    1a28:	00064603          	lbu	a2,0(a2)
    1a2c:	00d61463          	bne	a2,a3,1a34 <fatfs_lfn_create_sfn+0x140>
    1a30:	00078713          	mv	a4,a5
    1a34:	00178793          	addi	a5,a5,1
    1a38:	f29ff06f          	j	1960 <fatfs_lfn_create_sfn+0x6c>
    1a3c:	0127d863          	bge	a5,s2,1a4c <fatfs_lfn_create_sfn+0x158>
    1a40:	00f405b3          	add	a1,s0,a5
    1a44:	0005c583          	lbu	a1,0(a1)
    1a48:	00b68023          	sb	a1,0(a3)
    1a4c:	00178793          	addi	a5,a5,1
    1a50:	00168693          	addi	a3,a3,1
    1a54:	f25ff06f          	j	1978 <fatfs_lfn_create_sfn+0x84>
    1a58:	00090713          	mv	a4,s2
    1a5c:	f21ff06f          	j	197c <fatfs_lfn_create_sfn+0x88>
    1a60:	00168693          	addi	a3,a3,1
    1a64:	f31ff06f          	j	1994 <fatfs_lfn_create_sfn+0xa0>
    1a68:	00000513          	li	a0,0
    1a6c:	00008067          	ret

00001a70 <fatfs_lfn_generate_tail>:
    1a70:	000187b7          	lui	a5,0x18
    1a74:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1a78:	16c7e463          	bltu	a5,a2,1be0 <fatfs_lfn_generate_tail+0x170>
    1a7c:	fa010113          	addi	sp,sp,-96
    1a80:	04812c23          	sw	s0,88(sp)
    1a84:	04912a23          	sw	s1,84(sp)
    1a88:	05412423          	sw	s4,72(sp)
    1a8c:	00050493          	mv	s1,a0
    1a90:	00058a13          	mv	s4,a1
    1a94:	00060413          	mv	s0,a2
    1a98:	00000593          	li	a1,0
    1a9c:	00c00613          	li	a2,12
    1aa0:	00410513          	addi	a0,sp,4
    1aa4:	04112e23          	sw	ra,92(sp)
    1aa8:	05312623          	sw	s3,76(sp)
    1aac:	05512223          	sw	s5,68(sp)
    1ab0:	03712e23          	sw	s7,60(sp)
    1ab4:	05212823          	sw	s2,80(sp)
    1ab8:	05612023          	sw	s6,64(sp)
    1abc:	fffff097          	auipc	ra,0xfffff
    1ac0:	e34080e7          	jalr	-460(ra) # 8f0 <memset>
    1ac4:	000045b7          	lui	a1,0x4
    1ac8:	07e00793          	li	a5,126
    1acc:	01100613          	li	a2,17
    1ad0:	02058593          	addi	a1,a1,32 # 4020 <LEDS+0x60>
    1ad4:	01c10513          	addi	a0,sp,28
    1ad8:	01010993          	addi	s3,sp,16
    1adc:	00f10223          	sb	a5,4(sp)
    1ae0:	00098a93          	mv	s5,s3
    1ae4:	fffff097          	auipc	ra,0xfffff
    1ae8:	e28080e7          	jalr	-472(ra) # 90c <memcpy>
    1aec:	00900b93          	li	s7,9
    1af0:	00a00593          	li	a1,10
    1af4:	00040513          	mv	a0,s0
    1af8:	fffff097          	auipc	ra,0xfffff
    1afc:	d94080e7          	jalr	-620(ra) # 88c <__umodsi3>
    1b00:	03050793          	addi	a5,a0,48
    1b04:	00278533          	add	a0,a5,sp
    1b08:	fec54783          	lbu	a5,-20(a0)
    1b0c:	00098913          	mv	s2,s3
    1b10:	00040513          	mv	a0,s0
    1b14:	00a00593          	li	a1,10
    1b18:	00f98023          	sb	a5,0(s3)
    1b1c:	00040b13          	mv	s6,s0
    1b20:	fffff097          	auipc	ra,0xfffff
    1b24:	d24080e7          	jalr	-732(ra) # 844 <__udivsi3>
    1b28:	00198993          	addi	s3,s3,1
    1b2c:	00050413          	mv	s0,a0
    1b30:	fd6be0e3          	bltu	s7,s6,1af0 <fatfs_lfn_generate_tail+0x80>
    1b34:	00098023          	sb	zero,0(s3)
    1b38:	00410713          	addi	a4,sp,4
    1b3c:	00090793          	mv	a5,s2
    1b40:	00170713          	addi	a4,a4,1
    1b44:	0957f663          	bgeu	a5,s5,1bd0 <fatfs_lfn_generate_tail+0x160>
    1b48:	00f10713          	addi	a4,sp,15
    1b4c:	00000793          	li	a5,0
    1b50:	00e96663          	bltu	s2,a4,1b5c <fatfs_lfn_generate_tail+0xec>
    1b54:	41590933          	sub	s2,s2,s5
    1b58:	00190793          	addi	a5,s2,1
    1b5c:	03078793          	addi	a5,a5,48
    1b60:	002787b3          	add	a5,a5,sp
    1b64:	000a0593          	mv	a1,s4
    1b68:	fc078aa3          	sb	zero,-43(a5)
    1b6c:	00b00613          	li	a2,11
    1b70:	00048513          	mv	a0,s1
    1b74:	fffff097          	auipc	ra,0xfffff
    1b78:	d98080e7          	jalr	-616(ra) # 90c <memcpy>
    1b7c:	00410513          	addi	a0,sp,4
    1b80:	fffff097          	auipc	ra,0xfffff
    1b84:	db0080e7          	jalr	-592(ra) # 930 <strlen>
    1b88:	40a484b3          	sub	s1,s1,a0
    1b8c:	00050613          	mv	a2,a0
    1b90:	00410593          	addi	a1,sp,4
    1b94:	00848513          	addi	a0,s1,8
    1b98:	fffff097          	auipc	ra,0xfffff
    1b9c:	d74080e7          	jalr	-652(ra) # 90c <memcpy>
    1ba0:	05c12083          	lw	ra,92(sp)
    1ba4:	05812403          	lw	s0,88(sp)
    1ba8:	05412483          	lw	s1,84(sp)
    1bac:	05012903          	lw	s2,80(sp)
    1bb0:	04c12983          	lw	s3,76(sp)
    1bb4:	04812a03          	lw	s4,72(sp)
    1bb8:	04412a83          	lw	s5,68(sp)
    1bbc:	04012b03          	lw	s6,64(sp)
    1bc0:	03c12b83          	lw	s7,60(sp)
    1bc4:	00100513          	li	a0,1
    1bc8:	06010113          	addi	sp,sp,96
    1bcc:	00008067          	ret
    1bd0:	0007c683          	lbu	a3,0(a5)
    1bd4:	fff78793          	addi	a5,a5,-1
    1bd8:	00d70023          	sb	a3,0(a4)
    1bdc:	f65ff06f          	j	1b40 <fatfs_lfn_generate_tail+0xd0>
    1be0:	00000513          	li	a0,0
    1be4:	00008067          	ret

00001be8 <fatfs_total_path_levels>:
    1be8:	00050793          	mv	a5,a0
    1bec:	06050463          	beqz	a0,1c54 <fatfs_total_path_levels+0x6c>
    1bf0:	00054703          	lbu	a4,0(a0)
    1bf4:	02f00693          	li	a3,47
    1bf8:	00d71863          	bne	a4,a3,1c08 <fatfs_total_path_levels+0x20>
    1bfc:	00150793          	addi	a5,a0,1
    1c00:	00000513          	li	a0,0
    1c04:	0400006f          	j	1c44 <fatfs_total_path_levels+0x5c>
    1c08:	00154683          	lbu	a3,1(a0)
    1c0c:	03a00713          	li	a4,58
    1c10:	00e68a63          	beq	a3,a4,1c24 <fatfs_total_path_levels+0x3c>
    1c14:	00254683          	lbu	a3,2(a0)
    1c18:	05c00713          	li	a4,92
    1c1c:	fff00513          	li	a0,-1
    1c20:	02e69c63          	bne	a3,a4,1c58 <fatfs_total_path_levels+0x70>
    1c24:	00378793          	addi	a5,a5,3
    1c28:	05c00713          	li	a4,92
    1c2c:	fd5ff06f          	j	1c00 <fatfs_total_path_levels+0x18>
    1c30:	00178793          	addi	a5,a5,1
    1c34:	00e68663          	beq	a3,a4,1c40 <fatfs_total_path_levels+0x58>
    1c38:	0007c683          	lbu	a3,0(a5)
    1c3c:	fe069ae3          	bnez	a3,1c30 <fatfs_total_path_levels+0x48>
    1c40:	00150513          	addi	a0,a0,1
    1c44:	0007c683          	lbu	a3,0(a5)
    1c48:	fe0698e3          	bnez	a3,1c38 <fatfs_total_path_levels+0x50>
    1c4c:	fff50513          	addi	a0,a0,-1
    1c50:	00008067          	ret
    1c54:	fff00513          	li	a0,-1
    1c58:	00008067          	ret

00001c5c <fatfs_get_substring>:
    1c5c:	0c050c63          	beqz	a0,1d34 <fatfs_get_substring+0xd8>
    1c60:	fe010113          	addi	sp,sp,-32
    1c64:	00912a23          	sw	s1,20(sp)
    1c68:	00112e23          	sw	ra,28(sp)
    1c6c:	00812c23          	sw	s0,24(sp)
    1c70:	01212823          	sw	s2,16(sp)
    1c74:	01312623          	sw	s3,12(sp)
    1c78:	01412423          	sw	s4,8(sp)
    1c7c:	00050793          	mv	a5,a0
    1c80:	00068493          	mv	s1,a3
    1c84:	fff00513          	li	a0,-1
    1c88:	06d05a63          	blez	a3,1cfc <fatfs_get_substring+0xa0>
    1c8c:	0007c983          	lbu	s3,0(a5)
    1c90:	02f00713          	li	a4,47
    1c94:	00058a13          	mv	s4,a1
    1c98:	00060913          	mv	s2,a2
    1c9c:	00178413          	addi	s0,a5,1
    1ca0:	02e98463          	beq	s3,a4,1cc8 <fatfs_get_substring+0x6c>
    1ca4:	0017c683          	lbu	a3,1(a5)
    1ca8:	03a00713          	li	a4,58
    1cac:	00e68a63          	beq	a3,a4,1cc0 <fatfs_get_substring+0x64>
    1cb0:	0027c683          	lbu	a3,2(a5)
    1cb4:	05c00713          	li	a4,92
    1cb8:	fff00513          	li	a0,-1
    1cbc:	04e69063          	bne	a3,a4,1cfc <fatfs_get_substring+0xa0>
    1cc0:	00378413          	addi	s0,a5,3
    1cc4:	05c00993          	li	s3,92
    1cc8:	00040513          	mv	a0,s0
    1ccc:	fffff097          	auipc	ra,0xfffff
    1cd0:	c64080e7          	jalr	-924(ra) # 930 <strlen>
    1cd4:	00000713          	li	a4,0
    1cd8:	00000693          	li	a3,0
    1cdc:	00000793          	li	a5,0
    1ce0:	fff48493          	addi	s1,s1,-1
    1ce4:	00e905b3          	add	a1,s2,a4
    1ce8:	02a7ca63          	blt	a5,a0,1d1c <fatfs_get_substring+0xc0>
    1cec:	00058023          	sb	zero,0(a1)
    1cf0:	00094503          	lbu	a0,0(s2)
    1cf4:	00153513          	seqz	a0,a0
    1cf8:	40a00533          	neg	a0,a0
    1cfc:	01c12083          	lw	ra,28(sp)
    1d00:	01812403          	lw	s0,24(sp)
    1d04:	01412483          	lw	s1,20(sp)
    1d08:	01012903          	lw	s2,16(sp)
    1d0c:	00c12983          	lw	s3,12(sp)
    1d10:	00812a03          	lw	s4,8(sp)
    1d14:	02010113          	addi	sp,sp,32
    1d18:	00008067          	ret
    1d1c:	00f40633          	add	a2,s0,a5
    1d20:	00064603          	lbu	a2,0(a2)
    1d24:	01361c63          	bne	a2,s3,1d3c <fatfs_get_substring+0xe0>
    1d28:	00168693          	addi	a3,a3,1
    1d2c:	00178793          	addi	a5,a5,1
    1d30:	fb5ff06f          	j	1ce4 <fatfs_get_substring+0x88>
    1d34:	fff00513          	li	a0,-1
    1d38:	00008067          	ret
    1d3c:	ff4698e3          	bne	a3,s4,1d2c <fatfs_get_substring+0xd0>
    1d40:	fe9756e3          	bge	a4,s1,1d2c <fatfs_get_substring+0xd0>
    1d44:	00170713          	addi	a4,a4,1
    1d48:	00c58023          	sb	a2,0(a1)
    1d4c:	fe1ff06f          	j	1d2c <fatfs_get_substring+0xd0>

00001d50 <fatfs_split_path>:
    1d50:	fd010113          	addi	sp,sp,-48
    1d54:	02912223          	sw	s1,36(sp)
    1d58:	01312e23          	sw	s3,28(sp)
    1d5c:	01412c23          	sw	s4,24(sp)
    1d60:	01512a23          	sw	s5,20(sp)
    1d64:	02112623          	sw	ra,44(sp)
    1d68:	00068a93          	mv	s5,a3
    1d6c:	02812423          	sw	s0,40(sp)
    1d70:	03212023          	sw	s2,32(sp)
    1d74:	00050993          	mv	s3,a0
    1d78:	00058493          	mv	s1,a1
    1d7c:	00060a13          	mv	s4,a2
    1d80:	00e12623          	sw	a4,12(sp)
    1d84:	00000097          	auipc	ra,0x0
    1d88:	e64080e7          	jalr	-412(ra) # 1be8 <fatfs_total_path_levels>
    1d8c:	fff00793          	li	a5,-1
    1d90:	00c12683          	lw	a3,12(sp)
    1d94:	02f51863          	bne	a0,a5,1dc4 <fatfs_split_path+0x74>
    1d98:	fff00913          	li	s2,-1
    1d9c:	02c12083          	lw	ra,44(sp)
    1da0:	02812403          	lw	s0,40(sp)
    1da4:	02412483          	lw	s1,36(sp)
    1da8:	01c12983          	lw	s3,28(sp)
    1dac:	01812a03          	lw	s4,24(sp)
    1db0:	01412a83          	lw	s5,20(sp)
    1db4:	00090513          	mv	a0,s2
    1db8:	02012903          	lw	s2,32(sp)
    1dbc:	03010113          	addi	sp,sp,48
    1dc0:	00008067          	ret
    1dc4:	00050593          	mv	a1,a0
    1dc8:	00050413          	mv	s0,a0
    1dcc:	000a8613          	mv	a2,s5
    1dd0:	00098513          	mv	a0,s3
    1dd4:	00000097          	auipc	ra,0x0
    1dd8:	e88080e7          	jalr	-376(ra) # 1c5c <fatfs_get_substring>
    1ddc:	00050913          	mv	s2,a0
    1de0:	fa051ce3          	bnez	a0,1d98 <fatfs_split_path+0x48>
    1de4:	00041663          	bnez	s0,1df0 <fatfs_split_path+0xa0>
    1de8:	00048023          	sb	zero,0(s1)
    1dec:	fb1ff06f          	j	1d9c <fatfs_split_path+0x4c>
    1df0:	00098513          	mv	a0,s3
    1df4:	fffff097          	auipc	ra,0xfffff
    1df8:	b3c080e7          	jalr	-1220(ra) # 930 <strlen>
    1dfc:	00050413          	mv	s0,a0
    1e00:	000a8513          	mv	a0,s5
    1e04:	fffff097          	auipc	ra,0xfffff
    1e08:	b2c080e7          	jalr	-1236(ra) # 930 <strlen>
    1e0c:	40a40433          	sub	s0,s0,a0
    1e10:	008a5463          	bge	s4,s0,1e18 <fatfs_split_path+0xc8>
    1e14:	000a0413          	mv	s0,s4
    1e18:	00048513          	mv	a0,s1
    1e1c:	00040613          	mv	a2,s0
    1e20:	00098593          	mv	a1,s3
    1e24:	008484b3          	add	s1,s1,s0
    1e28:	fffff097          	auipc	ra,0xfffff
    1e2c:	ae4080e7          	jalr	-1308(ra) # 90c <memcpy>
    1e30:	fe048fa3          	sb	zero,-1(s1)
    1e34:	f69ff06f          	j	1d9c <fatfs_split_path+0x4c>

00001e38 <fatfs_compare_names>:
    1e38:	fd010113          	addi	sp,sp,-48
    1e3c:	02112623          	sw	ra,44(sp)
    1e40:	02812423          	sw	s0,40(sp)
    1e44:	02912223          	sw	s1,36(sp)
    1e48:	03212023          	sw	s2,32(sp)
    1e4c:	01312e23          	sw	s3,28(sp)
    1e50:	00058913          	mv	s2,a1
    1e54:	01412c23          	sw	s4,24(sp)
    1e58:	01512a23          	sw	s5,20(sp)
    1e5c:	01612823          	sw	s6,16(sp)
    1e60:	00050a13          	mv	s4,a0
    1e64:	fffff097          	auipc	ra,0xfffff
    1e68:	294080e7          	jalr	660(ra) # 10f8 <FileString_GetExtension>
    1e6c:	00050493          	mv	s1,a0
    1e70:	00090513          	mv	a0,s2
    1e74:	fffff097          	auipc	ra,0xfffff
    1e78:	284080e7          	jalr	644(ra) # 10f8 <FileString_GetExtension>
    1e7c:	fff00793          	li	a5,-1
    1e80:	00050413          	mv	s0,a0
    1e84:	00000993          	li	s3,0
    1e88:	08f49a63          	bne	s1,a5,1f1c <fatfs_compare_names+0xe4>
    1e8c:	0c951e63          	bne	a0,s1,1f68 <fatfs_compare_names+0x130>
    1e90:	000a0513          	mv	a0,s4
    1e94:	fffff097          	auipc	ra,0xfffff
    1e98:	a9c080e7          	jalr	-1380(ra) # 930 <strlen>
    1e9c:	00050493          	mv	s1,a0
    1ea0:	00090513          	mv	a0,s2
    1ea4:	fffff097          	auipc	ra,0xfffff
    1ea8:	a8c080e7          	jalr	-1396(ra) # 930 <strlen>
    1eac:	00050413          	mv	s0,a0
    1eb0:	fff48793          	addi	a5,s1,-1
    1eb4:	00fa07b3          	add	a5,s4,a5
    1eb8:	40978733          	sub	a4,a5,s1
    1ebc:	02000613          	li	a2,32
    1ec0:	00078693          	mv	a3,a5
    1ec4:	00e78863          	beq	a5,a4,1ed4 <fatfs_compare_names+0x9c>
    1ec8:	0007c583          	lbu	a1,0(a5)
    1ecc:	fff78793          	addi	a5,a5,-1
    1ed0:	0cc58263          	beq	a1,a2,1f94 <fatfs_compare_names+0x15c>
    1ed4:	fff40793          	addi	a5,s0,-1
    1ed8:	00f907b3          	add	a5,s2,a5
    1edc:	40878733          	sub	a4,a5,s0
    1ee0:	02000613          	li	a2,32
    1ee4:	00078693          	mv	a3,a5
    1ee8:	00e78863          	beq	a5,a4,1ef8 <fatfs_compare_names+0xc0>
    1eec:	0007c583          	lbu	a1,0(a5)
    1ef0:	fff78793          	addi	a5,a5,-1
    1ef4:	0ac58463          	beq	a1,a2,1f9c <fatfs_compare_names+0x164>
    1ef8:	00000993          	li	s3,0
    1efc:	06941663          	bne	s0,s1,1f68 <fatfs_compare_names+0x130>
    1f00:	00040613          	mv	a2,s0
    1f04:	00090593          	mv	a1,s2
    1f08:	000a0513          	mv	a0,s4
    1f0c:	fffff097          	auipc	ra,0xfffff
    1f10:	17c080e7          	jalr	380(ra) # 1088 <FileString_StrCmpNoCase>
    1f14:	00153993          	seqz	s3,a0
    1f18:	0500006f          	j	1f68 <fatfs_compare_names+0x130>
    1f1c:	04f50663          	beq	a0,a5,1f68 <fatfs_compare_names+0x130>
    1f20:	00148a93          	addi	s5,s1,1
    1f24:	015a0ab3          	add	s5,s4,s5
    1f28:	00150b13          	addi	s6,a0,1
    1f2c:	000a8513          	mv	a0,s5
    1f30:	fffff097          	auipc	ra,0xfffff
    1f34:	a00080e7          	jalr	-1536(ra) # 930 <strlen>
    1f38:	01690b33          	add	s6,s2,s6
    1f3c:	00a12623          	sw	a0,12(sp)
    1f40:	000b0513          	mv	a0,s6
    1f44:	fffff097          	auipc	ra,0xfffff
    1f48:	9ec080e7          	jalr	-1556(ra) # 930 <strlen>
    1f4c:	00c12603          	lw	a2,12(sp)
    1f50:	00a61c63          	bne	a2,a0,1f68 <fatfs_compare_names+0x130>
    1f54:	000b0593          	mv	a1,s6
    1f58:	000a8513          	mv	a0,s5
    1f5c:	fffff097          	auipc	ra,0xfffff
    1f60:	12c080e7          	jalr	300(ra) # 1088 <FileString_StrCmpNoCase>
    1f64:	f40506e3          	beqz	a0,1eb0 <fatfs_compare_names+0x78>
    1f68:	02c12083          	lw	ra,44(sp)
    1f6c:	02812403          	lw	s0,40(sp)
    1f70:	02412483          	lw	s1,36(sp)
    1f74:	02012903          	lw	s2,32(sp)
    1f78:	01812a03          	lw	s4,24(sp)
    1f7c:	01412a83          	lw	s5,20(sp)
    1f80:	01012b03          	lw	s6,16(sp)
    1f84:	00098513          	mv	a0,s3
    1f88:	01c12983          	lw	s3,28(sp)
    1f8c:	03010113          	addi	sp,sp,48
    1f90:	00008067          	ret
    1f94:	414684b3          	sub	s1,a3,s4
    1f98:	f29ff06f          	j	1ec0 <fatfs_compare_names+0x88>
    1f9c:	41268433          	sub	s0,a3,s2
    1fa0:	f45ff06f          	j	1ee4 <fatfs_compare_names+0xac>

00001fa4 <_check_file_open>:
    1fa4:	fe010113          	addi	sp,sp,-32
    1fa8:	000047b7          	lui	a5,0x4
    1fac:	00812c23          	sw	s0,24(sp)
    1fb0:	2987a403          	lw	s0,664(a5) # 4298 <_open_file_list>
    1fb4:	00912a23          	sw	s1,20(sp)
    1fb8:	01212823          	sw	s2,16(sp)
    1fbc:	01312623          	sw	s3,12(sp)
    1fc0:	00112e23          	sw	ra,28(sp)
    1fc4:	00050493          	mv	s1,a0
    1fc8:	01450913          	addi	s2,a0,20
    1fcc:	11850993          	addi	s3,a0,280
    1fd0:	02041263          	bnez	s0,1ff4 <_check_file_open+0x50>
    1fd4:	00000513          	li	a0,0
    1fd8:	01c12083          	lw	ra,28(sp)
    1fdc:	01812403          	lw	s0,24(sp)
    1fe0:	01412483          	lw	s1,20(sp)
    1fe4:	01012903          	lw	s2,16(sp)
    1fe8:	00c12983          	lw	s3,12(sp)
    1fec:	02010113          	addi	sp,sp,32
    1ff0:	00008067          	ret
    1ff4:	bc440793          	addi	a5,s0,-1084
    1ff8:	02f48663          	beq	s1,a5,2024 <_check_file_open+0x80>
    1ffc:	00090593          	mv	a1,s2
    2000:	bd840513          	addi	a0,s0,-1064
    2004:	00000097          	auipc	ra,0x0
    2008:	e34080e7          	jalr	-460(ra) # 1e38 <fatfs_compare_names>
    200c:	00050c63          	beqz	a0,2024 <_check_file_open+0x80>
    2010:	00098593          	mv	a1,s3
    2014:	cdc40513          	addi	a0,s0,-804
    2018:	00000097          	auipc	ra,0x0
    201c:	e20080e7          	jalr	-480(ra) # 1e38 <fatfs_compare_names>
    2020:	00051663          	bnez	a0,202c <_check_file_open+0x88>
    2024:	00442403          	lw	s0,4(s0)
    2028:	fa9ff06f          	j	1fd0 <_check_file_open+0x2c>
    202c:	00100513          	li	a0,1
    2030:	fa9ff06f          	j	1fd8 <_check_file_open+0x34>

00002034 <fatfs_fat_init>:
    2034:	ff010113          	addi	sp,sp,-16
    2038:	00812423          	sw	s0,8(sp)
    203c:	00912223          	sw	s1,4(sp)
    2040:	00112623          	sw	ra,12(sp)
    2044:	fff00793          	li	a5,-1
    2048:	25850493          	addi	s1,a0,600
    204c:	00050413          	mv	s0,a0
    2050:	44f52c23          	sw	a5,1112(a0)
    2054:	24052a23          	sw	zero,596(a0)
    2058:	44052e23          	sw	zero,1116(a0)
    205c:	20000613          	li	a2,512
    2060:	00048513          	mv	a0,s1
    2064:	00000593          	li	a1,0
    2068:	fffff097          	auipc	ra,0xfffff
    206c:	888080e7          	jalr	-1912(ra) # 8f0 <memset>
    2070:	25442783          	lw	a5,596(s0)
    2074:	00c12083          	lw	ra,12(sp)
    2078:	24942a23          	sw	s1,596(s0)
    207c:	46042023          	sw	zero,1120(s0)
    2080:	46f42223          	sw	a5,1124(s0)
    2084:	00812403          	lw	s0,8(sp)
    2088:	00412483          	lw	s1,4(sp)
    208c:	01010113          	addi	sp,sp,16
    2090:	00008067          	ret

00002094 <fatfs_init>:
    2094:	fd010113          	addi	sp,sp,-48
    2098:	02812423          	sw	s0,40(sp)
    209c:	02112623          	sw	ra,44(sp)
    20a0:	02912223          	sw	s1,36(sp)
    20a4:	03212023          	sw	s2,32(sp)
    20a8:	01312e23          	sw	s3,28(sp)
    20ac:	fff00793          	li	a5,-1
    20b0:	24f52223          	sw	a5,580(a0)
    20b4:	24052423          	sw	zero,584(a0)
    20b8:	02052223          	sw	zero,36(a0)
    20bc:	00050413          	mv	s0,a0
    20c0:	00000097          	auipc	ra,0x0
    20c4:	f74080e7          	jalr	-140(ra) # 2034 <fatfs_fat_init>
    20c8:	03442783          	lw	a5,52(s0)
    20cc:	02079263          	bnez	a5,20f0 <fatfs_init+0x5c>
    20d0:	fff00513          	li	a0,-1
    20d4:	02c12083          	lw	ra,44(sp)
    20d8:	02812403          	lw	s0,40(sp)
    20dc:	02412483          	lw	s1,36(sp)
    20e0:	02012903          	lw	s2,32(sp)
    20e4:	01c12983          	lw	s3,28(sp)
    20e8:	03010113          	addi	sp,sp,48
    20ec:	00008067          	ret
    20f0:	04440593          	addi	a1,s0,68
    20f4:	00100613          	li	a2,1
    20f8:	00000513          	li	a0,0
    20fc:	00b12623          	sw	a1,12(sp)
    2100:	000780e7          	jalr	a5
    2104:	fc0506e3          	beqz	a0,20d0 <fatfs_init+0x3c>
    2108:	24042703          	lw	a4,576(s0)
    210c:	ffff07b7          	lui	a5,0xffff0
    2110:	00c12583          	lw	a1,12(sp)
    2114:	00e7f7b3          	and	a5,a5,a4
    2118:	aa550737          	lui	a4,0xaa550
    211c:	00e78663          	beq	a5,a4,2128 <fatfs_init+0x94>
    2120:	ffd00513          	li	a0,-3
    2124:	fb1ff06f          	j	20d4 <fatfs_init+0x40>
    2128:	24245703          	lhu	a4,578(s0)
    212c:	0000b7b7          	lui	a5,0xb
    2130:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x2345>
    2134:	ffc00513          	li	a0,-4
    2138:	f8f71ee3          	bne	a4,a5,20d4 <fatfs_init+0x40>
    213c:	20644783          	lbu	a5,518(s0)
    2140:	00600713          	li	a4,6
    2144:	02f76463          	bltu	a4,a5,216c <fatfs_init+0xd8>
    2148:	00400713          	li	a4,4
    214c:	00f76663          	bltu	a4,a5,2158 <fatfs_init+0xc4>
    2150:	00000513          	li	a0,0
    2154:	02078663          	beqz	a5,2180 <fatfs_init+0xec>
    2158:	20c45503          	lhu	a0,524(s0)
    215c:	20a45783          	lhu	a5,522(s0)
    2160:	01051513          	slli	a0,a0,0x10
    2164:	00f56533          	or	a0,a0,a5
    2168:	0180006f          	j	2180 <fatfs_init+0xec>
    216c:	00c00713          	li	a4,12
    2170:	12f76a63          	bltu	a4,a5,22a4 <fatfs_init+0x210>
    2174:	00a00713          	li	a4,10
    2178:	00000513          	li	a0,0
    217c:	fcf76ee3          	bltu	a4,a5,2158 <fatfs_init+0xc4>
    2180:	03442783          	lw	a5,52(s0)
    2184:	00a42e23          	sw	a0,28(s0)
    2188:	00100613          	li	a2,1
    218c:	000780e7          	jalr	a5
    2190:	f40500e3          	beqz	a0,20d0 <fatfs_init+0x3c>
    2194:	05044783          	lbu	a5,80(s0)
    2198:	04f44703          	lbu	a4,79(s0)
    219c:	ffe00513          	li	a0,-2
    21a0:	00879793          	slli	a5,a5,0x8
    21a4:	00e7e7b3          	or	a5,a5,a4
    21a8:	20000713          	li	a4,512
    21ac:	f2e794e3          	bne	a5,a4,20d4 <fatfs_init+0x40>
    21b0:	05644483          	lbu	s1,86(s0)
    21b4:	05544783          	lbu	a5,85(s0)
    21b8:	05144983          	lbu	s3,81(s0)
    21bc:	00849493          	slli	s1,s1,0x8
    21c0:	05a45583          	lhu	a1,90(s0)
    21c4:	00f4e4b3          	or	s1,s1,a5
    21c8:	01340023          	sb	s3,0(s0)
    21cc:	02941423          	sh	s1,40(s0)
    21d0:	05245903          	lhu	s2,82(s0)
    21d4:	05444503          	lbu	a0,84(s0)
    21d8:	00059463          	bnez	a1,21e0 <fatfs_init+0x14c>
    21dc:	06842583          	lw	a1,104(s0)
    21e0:	07042783          	lw	a5,112(s0)
    21e4:	02b42023          	sw	a1,32(s0)
    21e8:	00549493          	slli	s1,s1,0x5
    21ec:	00f42423          	sw	a5,8(s0)
    21f0:	07445783          	lhu	a5,116(s0)
    21f4:	1ff48493          	addi	s1,s1,511
    21f8:	4094d493          	srai	s1,s1,0x9
    21fc:	00f41c23          	sh	a5,24(s0)
    2200:	fffff097          	auipc	ra,0xfffff
    2204:	df4080e7          	jalr	-524(ra) # ff4 <__mulsi3>
    2208:	00a907b3          	add	a5,s2,a0
    220c:	00f42623          	sw	a5,12(s0)
    2210:	01c42783          	lw	a5,28(s0)
    2214:	24245703          	lhu	a4,578(s0)
    2218:	00942823          	sw	s1,16(s0)
    221c:	00f907b3          	add	a5,s2,a5
    2220:	00f42a23          	sw	a5,20(s0)
    2224:	00f507b3          	add	a5,a0,a5
    2228:	00f42223          	sw	a5,4(s0)
    222c:	0000b7b7          	lui	a5,0xb
    2230:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x2345>
    2234:	eef716e3          	bne	a4,a5,2120 <fatfs_init+0x8c>
    2238:	05844783          	lbu	a5,88(s0)
    223c:	05744703          	lbu	a4,87(s0)
    2240:	00879793          	slli	a5,a5,0x8
    2244:	00e7e7b3          	or	a5,a5,a4
    2248:	00079463          	bnez	a5,2250 <fatfs_init+0x1bc>
    224c:	06442783          	lw	a5,100(s0)
    2250:	00990933          	add	s2,s2,s1
    2254:	00a90533          	add	a0,s2,a0
    2258:	40a787b3          	sub	a5,a5,a0
    225c:	ffb00513          	li	a0,-5
    2260:	e6098ae3          	beqz	s3,20d4 <fatfs_init+0x40>
    2264:	00078513          	mv	a0,a5
    2268:	00098593          	mv	a1,s3
    226c:	ffffe097          	auipc	ra,0xffffe
    2270:	5d8080e7          	jalr	1496(ra) # 844 <__udivsi3>
    2274:	00001737          	lui	a4,0x1
    2278:	00050793          	mv	a5,a0
    227c:	ff470713          	addi	a4,a4,-12 # ff4 <__mulsi3>
    2280:	ffb00513          	li	a0,-5
    2284:	e4f778e3          	bgeu	a4,a5,20d4 <fatfs_init+0x40>
    2288:	00010737          	lui	a4,0x10
    228c:	ff470713          	addi	a4,a4,-12 # fff4 <_files+0x78e4>
    2290:	02f76663          	bltu	a4,a5,22bc <fatfs_init+0x228>
    2294:	00042423          	sw	zero,8(s0)
    2298:	02042823          	sw	zero,48(s0)
    229c:	00000513          	li	a0,0
    22a0:	e35ff06f          	j	20d4 <fatfs_init+0x40>
    22a4:	ff278793          	addi	a5,a5,-14
    22a8:	0ff7f793          	zext.b	a5,a5
    22ac:	00100713          	li	a4,1
    22b0:	00000513          	li	a0,0
    22b4:	eaf772e3          	bgeu	a4,a5,2158 <fatfs_init+0xc4>
    22b8:	ec9ff06f          	j	2180 <fatfs_init+0xec>
    22bc:	00100793          	li	a5,1
    22c0:	02f42823          	sw	a5,48(s0)
    22c4:	fd9ff06f          	j	229c <fatfs_init+0x208>

000022c8 <fl_attach_media>:
    22c8:	000047b7          	lui	a5,0x4
    22cc:	2a47a783          	lw	a5,676(a5) # 42a4 <_filelib_init>
    22d0:	ff010113          	addi	sp,sp,-16
    22d4:	00812423          	sw	s0,8(sp)
    22d8:	00912223          	sw	s1,4(sp)
    22dc:	00112623          	sw	ra,12(sp)
    22e0:	00050493          	mv	s1,a0
    22e4:	00058413          	mv	s0,a1
    22e8:	00079663          	bnez	a5,22f4 <fl_attach_media+0x2c>
    22ec:	fffff097          	auipc	ra,0xfffff
    22f0:	1a0080e7          	jalr	416(ra) # 148c <fl_init>
    22f4:	00008537          	lui	a0,0x8
    22f8:	2a850793          	addi	a5,a0,680 # 82a8 <_fs>
    22fc:	2a850513          	addi	a0,a0,680
    2300:	0287ac23          	sw	s0,56(a5)
    2304:	0297aa23          	sw	s1,52(a5)
    2308:	00000097          	auipc	ra,0x0
    230c:	d8c080e7          	jalr	-628(ra) # 2094 <fatfs_init>
    2310:	00050413          	mv	s0,a0
    2314:	02050863          	beqz	a0,2344 <fl_attach_media+0x7c>
    2318:	00050593          	mv	a1,a0
    231c:	00004537          	lui	a0,0x4
    2320:	03450513          	addi	a0,a0,52 # 4034 <LEDS+0x74>
    2324:	fffff097          	auipc	ra,0xfffff
    2328:	ba0080e7          	jalr	-1120(ra) # ec4 <printf>
    232c:	00c12083          	lw	ra,12(sp)
    2330:	00040513          	mv	a0,s0
    2334:	00812403          	lw	s0,8(sp)
    2338:	00412483          	lw	s1,4(sp)
    233c:	01010113          	addi	sp,sp,16
    2340:	00008067          	ret
    2344:	000047b7          	lui	a5,0x4
    2348:	00100713          	li	a4,1
    234c:	2ae7a023          	sw	a4,672(a5) # 42a0 <_filelib_valid>
    2350:	fddff06f          	j	232c <fl_attach_media+0x64>

00002354 <fatfs_fat_purge>:
    2354:	ff010113          	addi	sp,sp,-16
    2358:	00812423          	sw	s0,8(sp)
    235c:	25452403          	lw	s0,596(a0)
    2360:	00912223          	sw	s1,4(sp)
    2364:	00112623          	sw	ra,12(sp)
    2368:	00050493          	mv	s1,a0
    236c:	00041663          	bnez	s0,2378 <fatfs_fat_purge+0x24>
    2370:	00100513          	li	a0,1
    2374:	0280006f          	j	239c <fatfs_fat_purge+0x48>
    2378:	20442783          	lw	a5,516(s0)
    237c:	00079663          	bnez	a5,2388 <fatfs_fat_purge+0x34>
    2380:	20c42403          	lw	s0,524(s0)
    2384:	fe9ff06f          	j	236c <fatfs_fat_purge+0x18>
    2388:	00040593          	mv	a1,s0
    238c:	00048513          	mv	a0,s1
    2390:	fffff097          	auipc	ra,0xfffff
    2394:	d94080e7          	jalr	-620(ra) # 1124 <fatfs_fat_writeback>
    2398:	fe0514e3          	bnez	a0,2380 <fatfs_fat_purge+0x2c>
    239c:	00c12083          	lw	ra,12(sp)
    23a0:	00812403          	lw	s0,8(sp)
    23a4:	00412483          	lw	s1,4(sp)
    23a8:	01010113          	addi	sp,sp,16
    23ac:	00008067          	ret

000023b0 <fatfs_find_next_cluster>:
    23b0:	ff010113          	addi	sp,sp,-16
    23b4:	00812423          	sw	s0,8(sp)
    23b8:	01212023          	sw	s2,0(sp)
    23bc:	00112623          	sw	ra,12(sp)
    23c0:	00912223          	sw	s1,4(sp)
    23c4:	00050913          	mv	s2,a0
    23c8:	00200413          	li	s0,2
    23cc:	00058463          	beqz	a1,23d4 <fatfs_find_next_cluster+0x24>
    23d0:	00058413          	mv	s0,a1
    23d4:	03092783          	lw	a5,48(s2)
    23d8:	00745493          	srli	s1,s0,0x7
    23dc:	00079463          	bnez	a5,23e4 <fatfs_find_next_cluster+0x34>
    23e0:	00845493          	srli	s1,s0,0x8
    23e4:	01492583          	lw	a1,20(s2)
    23e8:	00090513          	mv	a0,s2
    23ec:	00b485b3          	add	a1,s1,a1
    23f0:	fffff097          	auipc	ra,0xfffff
    23f4:	db4080e7          	jalr	-588(ra) # 11a4 <fatfs_fat_read_sector>
    23f8:	00050793          	mv	a5,a0
    23fc:	fff00513          	li	a0,-1
    2400:	04078a63          	beqz	a5,2454 <fatfs_find_next_cluster+0xa4>
    2404:	03092703          	lw	a4,48(s2)
    2408:	2087a783          	lw	a5,520(a5)
    240c:	06071063          	bnez	a4,246c <fatfs_find_next_cluster+0xbc>
    2410:	00849493          	slli	s1,s1,0x8
    2414:	40940433          	sub	s0,s0,s1
    2418:	00010737          	lui	a4,0x10
    241c:	00141413          	slli	s0,s0,0x1
    2420:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x78ee>
    2424:	00e47433          	and	s0,s0,a4
    2428:	008787b3          	add	a5,a5,s0
    242c:	0017c503          	lbu	a0,1(a5)
    2430:	0007c783          	lbu	a5,0(a5)
    2434:	00851513          	slli	a0,a0,0x8
    2438:	00f50533          	add	a0,a0,a5
    243c:	ffff07b7          	lui	a5,0xffff0
    2440:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2444:	00f507b3          	add	a5,a0,a5
    2448:	00700713          	li	a4,7
    244c:	00f76463          	bltu	a4,a5,2454 <fatfs_find_next_cluster+0xa4>
    2450:	fff00513          	li	a0,-1
    2454:	00c12083          	lw	ra,12(sp)
    2458:	00812403          	lw	s0,8(sp)
    245c:	00412483          	lw	s1,4(sp)
    2460:	00012903          	lw	s2,0(sp)
    2464:	01010113          	addi	sp,sp,16
    2468:	00008067          	ret
    246c:	00749493          	slli	s1,s1,0x7
    2470:	40940433          	sub	s0,s0,s1
    2474:	00010737          	lui	a4,0x10
    2478:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x78ec>
    247c:	00241413          	slli	s0,s0,0x2
    2480:	00e47433          	and	s0,s0,a4
    2484:	008787b3          	add	a5,a5,s0
    2488:	0037c503          	lbu	a0,3(a5)
    248c:	0027c703          	lbu	a4,2(a5)
    2490:	01851513          	slli	a0,a0,0x18
    2494:	01071713          	slli	a4,a4,0x10
    2498:	00e50533          	add	a0,a0,a4
    249c:	0007c703          	lbu	a4,0(a5)
    24a0:	0017c783          	lbu	a5,1(a5)
    24a4:	00e50533          	add	a0,a0,a4
    24a8:	00879793          	slli	a5,a5,0x8
    24ac:	00f50533          	add	a0,a0,a5
    24b0:	00451513          	slli	a0,a0,0x4
    24b4:	00455513          	srli	a0,a0,0x4
    24b8:	f00007b7          	lui	a5,0xf0000
    24bc:	f85ff06f          	j	2440 <fatfs_find_next_cluster+0x90>

000024c0 <fatfs_sector_reader>:
    24c0:	03052783          	lw	a5,48(a0)
    24c4:	fd010113          	addi	sp,sp,-48
    24c8:	02812423          	sw	s0,40(sp)
    24cc:	03212023          	sw	s2,32(sp)
    24d0:	01312e23          	sw	s3,28(sp)
    24d4:	02112623          	sw	ra,44(sp)
    24d8:	02912223          	sw	s1,36(sp)
    24dc:	01412c23          	sw	s4,24(sp)
    24e0:	01512a23          	sw	s5,20(sp)
    24e4:	00f5e7b3          	or	a5,a1,a5
    24e8:	00050413          	mv	s0,a0
    24ec:	00060913          	mv	s2,a2
    24f0:	00068993          	mv	s3,a3
    24f4:	06079c63          	bnez	a5,256c <fatfs_sector_reader+0xac>
    24f8:	01052783          	lw	a5,16(a0)
    24fc:	02f66663          	bltu	a2,a5,2528 <fatfs_sector_reader+0x68>
    2500:	00000513          	li	a0,0
    2504:	02c12083          	lw	ra,44(sp)
    2508:	02812403          	lw	s0,40(sp)
    250c:	02412483          	lw	s1,36(sp)
    2510:	02012903          	lw	s2,32(sp)
    2514:	01c12983          	lw	s3,28(sp)
    2518:	01812a03          	lw	s4,24(sp)
    251c:	01412a83          	lw	s5,20(sp)
    2520:	03010113          	addi	sp,sp,48
    2524:	00008067          	ret
    2528:	01c52503          	lw	a0,28(a0)
    252c:	00c42783          	lw	a5,12(s0)
    2530:	00f50533          	add	a0,a0,a5
    2534:	01250533          	add	a0,a0,s2
    2538:	0a098263          	beqz	s3,25dc <fatfs_sector_reader+0x11c>
    253c:	03442783          	lw	a5,52(s0)
    2540:	00100613          	li	a2,1
    2544:	00098593          	mv	a1,s3
    2548:	02812403          	lw	s0,40(sp)
    254c:	02c12083          	lw	ra,44(sp)
    2550:	02412483          	lw	s1,36(sp)
    2554:	02012903          	lw	s2,32(sp)
    2558:	01c12983          	lw	s3,28(sp)
    255c:	01812a03          	lw	s4,24(sp)
    2560:	01412a83          	lw	s5,20(sp)
    2564:	03010113          	addi	sp,sp,48
    2568:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    256c:	00058493          	mv	s1,a1
    2570:	00054583          	lbu	a1,0(a0)
    2574:	00060513          	mv	a0,a2
    2578:	00000a93          	li	s5,0
    257c:	00b12623          	sw	a1,12(sp)
    2580:	ffffe097          	auipc	ra,0xffffe
    2584:	2c4080e7          	jalr	708(ra) # 844 <__udivsi3>
    2588:	00c12583          	lw	a1,12(sp)
    258c:	00050a13          	mv	s4,a0
    2590:	00090513          	mv	a0,s2
    2594:	ffffe097          	auipc	ra,0xffffe
    2598:	2f8080e7          	jalr	760(ra) # 88c <__umodsi3>
    259c:	00050913          	mv	s2,a0
    25a0:	034a9063          	bne	s5,s4,25c0 <fatfs_sector_reader+0x100>
    25a4:	fff00793          	li	a5,-1
    25a8:	f4f48ce3          	beq	s1,a5,2500 <fatfs_sector_reader+0x40>
    25ac:	00048593          	mv	a1,s1
    25b0:	00040513          	mv	a0,s0
    25b4:	fffff097          	auipc	ra,0xfffff
    25b8:	d9c080e7          	jalr	-612(ra) # 1350 <fatfs_lba_of_cluster>
    25bc:	f79ff06f          	j	2534 <fatfs_sector_reader+0x74>
    25c0:	00048593          	mv	a1,s1
    25c4:	00040513          	mv	a0,s0
    25c8:	00000097          	auipc	ra,0x0
    25cc:	de8080e7          	jalr	-536(ra) # 23b0 <fatfs_find_next_cluster>
    25d0:	00050493          	mv	s1,a0
    25d4:	001a8a93          	addi	s5,s5,1
    25d8:	fc9ff06f          	j	25a0 <fatfs_sector_reader+0xe0>
    25dc:	24442783          	lw	a5,580(s0)
    25e0:	00a78c63          	beq	a5,a0,25f8 <fatfs_sector_reader+0x138>
    25e4:	03442783          	lw	a5,52(s0)
    25e8:	24a42223          	sw	a0,580(s0)
    25ec:	00100613          	li	a2,1
    25f0:	04440593          	addi	a1,s0,68
    25f4:	f55ff06f          	j	2548 <fatfs_sector_reader+0x88>
    25f8:	00100513          	li	a0,1
    25fc:	f09ff06f          	j	2504 <fatfs_sector_reader+0x44>

00002600 <fatfs_get_file_entry>:
    2600:	eb010113          	addi	sp,sp,-336
    2604:	14812423          	sw	s0,328(sp)
    2608:	01810413          	addi	s0,sp,24
    260c:	14912223          	sw	s1,324(sp)
    2610:	15212023          	sw	s2,320(sp)
    2614:	13312e23          	sw	s3,316(sp)
    2618:	13412c23          	sw	s4,312(sp)
    261c:	13512a23          	sw	s5,308(sp)
    2620:	13612823          	sw	s6,304(sp)
    2624:	14112623          	sw	ra,332(sp)
    2628:	13712623          	sw	s7,300(sp)
    262c:	13812423          	sw	s8,296(sp)
    2630:	13912223          	sw	s9,292(sp)
    2634:	13a12023          	sw	s10,288(sp)
    2638:	00050493          	mv	s1,a0
    263c:	00058a93          	mv	s5,a1
    2640:	00060913          	mv	s2,a2
    2644:	00068993          	mv	s3,a3
    2648:	10010ea3          	sb	zero,285(sp)
    264c:	11c10a13          	addi	s4,sp,284
    2650:	00040b13          	mv	s6,s0
    2654:	00040513          	mv	a0,s0
    2658:	00d00613          	li	a2,13
    265c:	00000593          	li	a1,0
    2660:	00d40413          	addi	s0,s0,13
    2664:	ffffe097          	auipc	ra,0xffffe
    2668:	28c080e7          	jalr	652(ra) # 8f0 <memset>
    266c:	ff4414e3          	bne	s0,s4,2654 <fatfs_get_file_entry+0x54>
    2670:	00000a13          	li	s4,0
    2674:	24448c13          	addi	s8,s1,580
    2678:	00800c93          	li	s9,8
    267c:	02000b93          	li	s7,32
    2680:	02e00d13          	li	s10,46
    2684:	00000693          	li	a3,0
    2688:	000a0613          	mv	a2,s4
    268c:	000a8593          	mv	a1,s5
    2690:	00048513          	mv	a0,s1
    2694:	00000097          	auipc	ra,0x0
    2698:	e2c080e7          	jalr	-468(ra) # 24c0 <fatfs_sector_reader>
    269c:	16050463          	beqz	a0,2804 <fatfs_get_file_entry+0x204>
    26a0:	04448413          	addi	s0,s1,68
    26a4:	00040513          	mv	a0,s0
    26a8:	fffff097          	auipc	ra,0xfffff
    26ac:	f5c080e7          	jalr	-164(ra) # 1604 <fatfs_entry_lfn_text>
    26b0:	02050263          	beqz	a0,26d4 <fatfs_get_file_entry+0xd4>
    26b4:	00040593          	mv	a1,s0
    26b8:	000b0513          	mv	a0,s6
    26bc:	fffff097          	auipc	ra,0xfffff
    26c0:	e40080e7          	jalr	-448(ra) # 14fc <fatfs_lfn_cache_entry>
    26c4:	02040413          	addi	s0,s0,32
    26c8:	fd841ee3          	bne	s0,s8,26a4 <fatfs_get_file_entry+0xa4>
    26cc:	001a0a13          	addi	s4,s4,1
    26d0:	fb5ff06f          	j	2684 <fatfs_get_file_entry+0x84>
    26d4:	00040513          	mv	a0,s0
    26d8:	fffff097          	auipc	ra,0xfffff
    26dc:	f40080e7          	jalr	-192(ra) # 1618 <fatfs_entry_lfn_invalid>
    26e0:	00050663          	beqz	a0,26ec <fatfs_get_file_entry+0xec>
    26e4:	10010ea3          	sb	zero,285(sp)
    26e8:	fddff06f          	j	26c4 <fatfs_get_file_entry+0xc4>
    26ec:	00040593          	mv	a1,s0
    26f0:	000b0513          	mv	a0,s6
    26f4:	fffff097          	auipc	ra,0xfffff
    26f8:	f5c080e7          	jalr	-164(ra) # 1650 <fatfs_entry_lfn_exists>
    26fc:	06050863          	beqz	a0,276c <fatfs_get_file_entry+0x16c>
    2700:	000b0513          	mv	a0,s6
    2704:	fffff097          	auipc	ra,0xfffff
    2708:	ec4080e7          	jalr	-316(ra) # 15c8 <fatfs_lfn_cache_get>
    270c:	00090593          	mv	a1,s2
    2710:	fffff097          	auipc	ra,0xfffff
    2714:	728080e7          	jalr	1832(ra) # 1e38 <fatfs_compare_names>
    2718:	fc0506e3          	beqz	a0,26e4 <fatfs_get_file_entry+0xe4>
    271c:	02000613          	li	a2,32
    2720:	00040593          	mv	a1,s0
    2724:	00098513          	mv	a0,s3
    2728:	ffffe097          	auipc	ra,0xffffe
    272c:	1e4080e7          	jalr	484(ra) # 90c <memcpy>
    2730:	00100513          	li	a0,1
    2734:	14c12083          	lw	ra,332(sp)
    2738:	14812403          	lw	s0,328(sp)
    273c:	14412483          	lw	s1,324(sp)
    2740:	14012903          	lw	s2,320(sp)
    2744:	13c12983          	lw	s3,316(sp)
    2748:	13812a03          	lw	s4,312(sp)
    274c:	13412a83          	lw	s5,308(sp)
    2750:	13012b03          	lw	s6,304(sp)
    2754:	12c12b83          	lw	s7,300(sp)
    2758:	12812c03          	lw	s8,296(sp)
    275c:	12412c83          	lw	s9,292(sp)
    2760:	12012d03          	lw	s10,288(sp)
    2764:	15010113          	addi	sp,sp,336
    2768:	00008067          	ret
    276c:	00040513          	mv	a0,s0
    2770:	fffff097          	auipc	ra,0xfffff
    2774:	f28080e7          	jalr	-216(ra) # 1698 <fatfs_entry_sfn_only>
    2778:	f40506e3          	beqz	a0,26c4 <fatfs_get_file_entry+0xc4>
    277c:	00d00613          	li	a2,13
    2780:	00000593          	li	a1,0
    2784:	00810513          	addi	a0,sp,8
    2788:	ffffe097          	auipc	ra,0xffffe
    278c:	168080e7          	jalr	360(ra) # 8f0 <memset>
    2790:	00000793          	li	a5,0
    2794:	00f406b3          	add	a3,s0,a5
    2798:	0006c683          	lbu	a3,0(a3)
    279c:	00810713          	addi	a4,sp,8
    27a0:	00f70733          	add	a4,a4,a5
    27a4:	00d70023          	sb	a3,0(a4)
    27a8:	00178793          	addi	a5,a5,1
    27ac:	ff9794e3          	bne	a5,s9,2794 <fatfs_get_file_entry+0x194>
    27b0:	00844783          	lbu	a5,8(s0)
    27b4:	00944683          	lbu	a3,9(s0)
    27b8:	00100713          	li	a4,1
    27bc:	00f108a3          	sb	a5,17(sp)
    27c0:	00d10923          	sb	a3,18(sp)
    27c4:	01769663          	bne	a3,s7,27d0 <fatfs_get_file_entry+0x1d0>
    27c8:	fe078793          	addi	a5,a5,-32
    27cc:	00f03733          	snez	a4,a5
    27d0:	00a44783          	lbu	a5,10(s0)
    27d4:	00f109a3          	sb	a5,19(sp)
    27d8:	01779663          	bne	a5,s7,27e4 <fatfs_get_file_entry+0x1e4>
    27dc:	02000793          	li	a5,32
    27e0:	00070a63          	beqz	a4,27f4 <fatfs_get_file_entry+0x1f4>
    27e4:	00814703          	lbu	a4,8(sp)
    27e8:	02e00793          	li	a5,46
    27ec:	01a71463          	bne	a4,s10,27f4 <fatfs_get_file_entry+0x1f4>
    27f0:	02000793          	li	a5,32
    27f4:	00f10823          	sb	a5,16(sp)
    27f8:	00090593          	mv	a1,s2
    27fc:	00810513          	addi	a0,sp,8
    2800:	f11ff06f          	j	2710 <fatfs_get_file_entry+0x110>
    2804:	00000513          	li	a0,0
    2808:	f2dff06f          	j	2734 <fatfs_get_file_entry+0x134>

0000280c <_open_directory>:
    280c:	eb010113          	addi	sp,sp,-336
    2810:	13512a23          	sw	s5,308(sp)
    2814:	00008ab7          	lui	s5,0x8
    2818:	2a8a8793          	addi	a5,s5,680 # 82a8 <_fs>
    281c:	14812423          	sw	s0,328(sp)
    2820:	14912223          	sw	s1,324(sp)
    2824:	15212023          	sw	s2,320(sp)
    2828:	13312e23          	sw	s3,316(sp)
    282c:	13412c23          	sw	s4,312(sp)
    2830:	13612823          	sw	s6,304(sp)
    2834:	0087a403          	lw	s0,8(a5)
    2838:	14112623          	sw	ra,332(sp)
    283c:	00050a13          	mv	s4,a0
    2840:	00058913          	mv	s2,a1
    2844:	fffff097          	auipc	ra,0xfffff
    2848:	3a4080e7          	jalr	932(ra) # 1be8 <fatfs_total_path_levels>
    284c:	00050993          	mv	s3,a0
    2850:	00000493          	li	s1,0
    2854:	fff00b13          	li	s6,-1
    2858:	0099d863          	bge	s3,s1,2868 <_open_directory+0x5c>
    285c:	00892023          	sw	s0,0(s2)
    2860:	00100513          	li	a0,1
    2864:	0240006f          	j	2888 <_open_directory+0x7c>
    2868:	10400693          	li	a3,260
    286c:	02c10613          	addi	a2,sp,44
    2870:	00048593          	mv	a1,s1
    2874:	000a0513          	mv	a0,s4
    2878:	fffff097          	auipc	ra,0xfffff
    287c:	3e4080e7          	jalr	996(ra) # 1c5c <fatfs_get_substring>
    2880:	03651863          	bne	a0,s6,28b0 <_open_directory+0xa4>
    2884:	00000513          	li	a0,0
    2888:	14c12083          	lw	ra,332(sp)
    288c:	14812403          	lw	s0,328(sp)
    2890:	14412483          	lw	s1,324(sp)
    2894:	14012903          	lw	s2,320(sp)
    2898:	13c12983          	lw	s3,316(sp)
    289c:	13812a03          	lw	s4,312(sp)
    28a0:	13412a83          	lw	s5,308(sp)
    28a4:	13012b03          	lw	s6,304(sp)
    28a8:	15010113          	addi	sp,sp,336
    28ac:	00008067          	ret
    28b0:	00c10693          	addi	a3,sp,12
    28b4:	02c10613          	addi	a2,sp,44
    28b8:	00040593          	mv	a1,s0
    28bc:	2a8a8513          	addi	a0,s5,680
    28c0:	00000097          	auipc	ra,0x0
    28c4:	d40080e7          	jalr	-704(ra) # 2600 <fatfs_get_file_entry>
    28c8:	fa050ee3          	beqz	a0,2884 <_open_directory+0x78>
    28cc:	00c10513          	addi	a0,sp,12
    28d0:	fffff097          	auipc	ra,0xfffff
    28d4:	e04080e7          	jalr	-508(ra) # 16d4 <fatfs_entry_is_dir>
    28d8:	fa0506e3          	beqz	a0,2884 <_open_directory+0x78>
    28dc:	02015403          	lhu	s0,32(sp)
    28e0:	02615783          	lhu	a5,38(sp)
    28e4:	00148493          	addi	s1,s1,1
    28e8:	01041413          	slli	s0,s0,0x10
    28ec:	00f40433          	add	s0,s0,a5
    28f0:	f69ff06f          	j	2858 <_open_directory+0x4c>

000028f4 <_open_file>:
    28f4:	fc010113          	addi	sp,sp,-64
    28f8:	03312623          	sw	s3,44(sp)
    28fc:	02112e23          	sw	ra,60(sp)
    2900:	02812c23          	sw	s0,56(sp)
    2904:	02912a23          	sw	s1,52(sp)
    2908:	03212823          	sw	s2,48(sp)
    290c:	00050993          	mv	s3,a0
    2910:	fffff097          	auipc	ra,0xfffff
    2914:	984080e7          	jalr	-1660(ra) # 1294 <_allocate_file>
    2918:	06050463          	beqz	a0,2980 <_open_file+0x8c>
    291c:	01450913          	addi	s2,a0,20
    2920:	00050413          	mv	s0,a0
    2924:	10400613          	li	a2,260
    2928:	00000593          	li	a1,0
    292c:	00090513          	mv	a0,s2
    2930:	ffffe097          	auipc	ra,0xffffe
    2934:	fc0080e7          	jalr	-64(ra) # 8f0 <memset>
    2938:	11840493          	addi	s1,s0,280
    293c:	10400613          	li	a2,260
    2940:	00000593          	li	a1,0
    2944:	00048513          	mv	a0,s1
    2948:	ffffe097          	auipc	ra,0xffffe
    294c:	fa8080e7          	jalr	-88(ra) # 8f0 <memset>
    2950:	10400713          	li	a4,260
    2954:	00048693          	mv	a3,s1
    2958:	10400613          	li	a2,260
    295c:	00090593          	mv	a1,s2
    2960:	00098513          	mv	a0,s3
    2964:	fffff097          	auipc	ra,0xfffff
    2968:	3ec080e7          	jalr	1004(ra) # 1d50 <fatfs_split_path>
    296c:	fff00793          	li	a5,-1
    2970:	02f51a63          	bne	a0,a5,29a4 <_open_file+0xb0>
    2974:	00040513          	mv	a0,s0
    2978:	fffff097          	auipc	ra,0xfffff
    297c:	990080e7          	jalr	-1648(ra) # 1308 <_free_file>
    2980:	00000413          	li	s0,0
    2984:	03c12083          	lw	ra,60(sp)
    2988:	00040513          	mv	a0,s0
    298c:	03812403          	lw	s0,56(sp)
    2990:	03412483          	lw	s1,52(sp)
    2994:	03012903          	lw	s2,48(sp)
    2998:	02c12983          	lw	s3,44(sp)
    299c:	04010113          	addi	sp,sp,64
    29a0:	00008067          	ret
    29a4:	00040513          	mv	a0,s0
    29a8:	fffff097          	auipc	ra,0xfffff
    29ac:	5fc080e7          	jalr	1532(ra) # 1fa4 <_check_file_open>
    29b0:	fc0512e3          	bnez	a0,2974 <_open_file+0x80>
    29b4:	01444783          	lbu	a5,20(s0)
    29b8:	08079e63          	bnez	a5,2a54 <_open_file+0x160>
    29bc:	000087b7          	lui	a5,0x8
    29c0:	2b07a783          	lw	a5,688(a5) # 82b0 <_fs+0x8>
    29c4:	00f42023          	sw	a5,0(s0)
    29c8:	00042583          	lw	a1,0(s0)
    29cc:	00048613          	mv	a2,s1
    29d0:	000084b7          	lui	s1,0x8
    29d4:	00010693          	mv	a3,sp
    29d8:	2a848513          	addi	a0,s1,680 # 82a8 <_fs>
    29dc:	00000097          	auipc	ra,0x0
    29e0:	c24080e7          	jalr	-988(ra) # 2600 <fatfs_get_file_entry>
    29e4:	f80508e3          	beqz	a0,2974 <_open_file+0x80>
    29e8:	00010513          	mv	a0,sp
    29ec:	fffff097          	auipc	ra,0xfffff
    29f0:	cf8080e7          	jalr	-776(ra) # 16e4 <fatfs_entry_is_file>
    29f4:	f80500e3          	beqz	a0,2974 <_open_file+0x80>
    29f8:	00b00613          	li	a2,11
    29fc:	00010593          	mv	a1,sp
    2a00:	21c40513          	addi	a0,s0,540
    2a04:	ffffe097          	auipc	ra,0xffffe
    2a08:	f08080e7          	jalr	-248(ra) # 90c <memcpy>
    2a0c:	01c12783          	lw	a5,28(sp)
    2a10:	01a15703          	lhu	a4,26(sp)
    2a14:	00042423          	sw	zero,8(s0)
    2a18:	00f42623          	sw	a5,12(s0)
    2a1c:	01415783          	lhu	a5,20(sp)
    2a20:	42042a23          	sw	zero,1076(s0)
    2a24:	00042823          	sw	zero,16(s0)
    2a28:	01079793          	slli	a5,a5,0x10
    2a2c:	00e787b3          	add	a5,a5,a4
    2a30:	00f42223          	sw	a5,4(s0)
    2a34:	fff00793          	li	a5,-1
    2a38:	42f42823          	sw	a5,1072(s0)
    2a3c:	22f42423          	sw	a5,552(s0)
    2a40:	22f42623          	sw	a5,556(s0)
    2a44:	2a848513          	addi	a0,s1,680
    2a48:	00000097          	auipc	ra,0x0
    2a4c:	90c080e7          	jalr	-1780(ra) # 2354 <fatfs_fat_purge>
    2a50:	f35ff06f          	j	2984 <_open_file+0x90>
    2a54:	00040593          	mv	a1,s0
    2a58:	00090513          	mv	a0,s2
    2a5c:	00000097          	auipc	ra,0x0
    2a60:	db0080e7          	jalr	-592(ra) # 280c <_open_directory>
    2a64:	f60512e3          	bnez	a0,29c8 <_open_file+0xd4>
    2a68:	f0dff06f          	j	2974 <_open_file+0x80>

00002a6c <fatfs_sfn_exists>:
    2a6c:	fe010113          	addi	sp,sp,-32
    2a70:	00912a23          	sw	s1,20(sp)
    2a74:	01212823          	sw	s2,16(sp)
    2a78:	01312623          	sw	s3,12(sp)
    2a7c:	01412423          	sw	s4,8(sp)
    2a80:	01512223          	sw	s5,4(sp)
    2a84:	00112e23          	sw	ra,28(sp)
    2a88:	00812c23          	sw	s0,24(sp)
    2a8c:	00050493          	mv	s1,a0
    2a90:	00058993          	mv	s3,a1
    2a94:	00060a13          	mv	s4,a2
    2a98:	00000913          	li	s2,0
    2a9c:	24450a93          	addi	s5,a0,580
    2aa0:	00000693          	li	a3,0
    2aa4:	00090613          	mv	a2,s2
    2aa8:	00098593          	mv	a1,s3
    2aac:	00048513          	mv	a0,s1
    2ab0:	00000097          	auipc	ra,0x0
    2ab4:	a10080e7          	jalr	-1520(ra) # 24c0 <fatfs_sector_reader>
    2ab8:	06050263          	beqz	a0,2b1c <fatfs_sfn_exists+0xb0>
    2abc:	04448413          	addi	s0,s1,68
    2ac0:	00040513          	mv	a0,s0
    2ac4:	fffff097          	auipc	ra,0xfffff
    2ac8:	b40080e7          	jalr	-1216(ra) # 1604 <fatfs_entry_lfn_text>
    2acc:	02051e63          	bnez	a0,2b08 <fatfs_sfn_exists+0x9c>
    2ad0:	00040513          	mv	a0,s0
    2ad4:	fffff097          	auipc	ra,0xfffff
    2ad8:	b44080e7          	jalr	-1212(ra) # 1618 <fatfs_entry_lfn_invalid>
    2adc:	02051663          	bnez	a0,2b08 <fatfs_sfn_exists+0x9c>
    2ae0:	00040513          	mv	a0,s0
    2ae4:	fffff097          	auipc	ra,0xfffff
    2ae8:	bb4080e7          	jalr	-1100(ra) # 1698 <fatfs_entry_sfn_only>
    2aec:	00050e63          	beqz	a0,2b08 <fatfs_sfn_exists+0x9c>
    2af0:	00b00613          	li	a2,11
    2af4:	000a0593          	mv	a1,s4
    2af8:	00040513          	mv	a0,s0
    2afc:	ffffe097          	auipc	ra,0xffffe
    2b00:	e54080e7          	jalr	-428(ra) # 950 <strncmp>
    2b04:	00050a63          	beqz	a0,2b18 <fatfs_sfn_exists+0xac>
    2b08:	02040413          	addi	s0,s0,32
    2b0c:	fb541ae3          	bne	s0,s5,2ac0 <fatfs_sfn_exists+0x54>
    2b10:	00190913          	addi	s2,s2,1
    2b14:	f8dff06f          	j	2aa0 <fatfs_sfn_exists+0x34>
    2b18:	00100513          	li	a0,1
    2b1c:	01c12083          	lw	ra,28(sp)
    2b20:	01812403          	lw	s0,24(sp)
    2b24:	01412483          	lw	s1,20(sp)
    2b28:	01012903          	lw	s2,16(sp)
    2b2c:	00c12983          	lw	s3,12(sp)
    2b30:	00812a03          	lw	s4,8(sp)
    2b34:	00412a83          	lw	s5,4(sp)
    2b38:	02010113          	addi	sp,sp,32
    2b3c:	00008067          	ret

00002b40 <fatfs_update_file_length>:
    2b40:	03852783          	lw	a5,56(a0)
    2b44:	14078e63          	beqz	a5,2ca0 <fatfs_update_file_length+0x160>
    2b48:	fd010113          	addi	sp,sp,-48
    2b4c:	02912223          	sw	s1,36(sp)
    2b50:	03212023          	sw	s2,32(sp)
    2b54:	01312e23          	sw	s3,28(sp)
    2b58:	01412c23          	sw	s4,24(sp)
    2b5c:	01512a23          	sw	s5,20(sp)
    2b60:	01612823          	sw	s6,16(sp)
    2b64:	01712623          	sw	s7,12(sp)
    2b68:	02112623          	sw	ra,44(sp)
    2b6c:	02812423          	sw	s0,40(sp)
    2b70:	00050493          	mv	s1,a0
    2b74:	00058a13          	mv	s4,a1
    2b78:	00060a93          	mv	s5,a2
    2b7c:	00068913          	mv	s2,a3
    2b80:	00000993          	li	s3,0
    2b84:	04450b93          	addi	s7,a0,68
    2b88:	24450b13          	addi	s6,a0,580
    2b8c:	00000693          	li	a3,0
    2b90:	00098613          	mv	a2,s3
    2b94:	000a0593          	mv	a1,s4
    2b98:	00048513          	mv	a0,s1
    2b9c:	00000097          	auipc	ra,0x0
    2ba0:	924080e7          	jalr	-1756(ra) # 24c0 <fatfs_sector_reader>
    2ba4:	0c050663          	beqz	a0,2c70 <fatfs_update_file_length+0x130>
    2ba8:	000b8413          	mv	s0,s7
    2bac:	00040513          	mv	a0,s0
    2bb0:	fffff097          	auipc	ra,0xfffff
    2bb4:	a54080e7          	jalr	-1452(ra) # 1604 <fatfs_entry_lfn_text>
    2bb8:	0a051463          	bnez	a0,2c60 <fatfs_update_file_length+0x120>
    2bbc:	00040513          	mv	a0,s0
    2bc0:	fffff097          	auipc	ra,0xfffff
    2bc4:	a58080e7          	jalr	-1448(ra) # 1618 <fatfs_entry_lfn_invalid>
    2bc8:	08051c63          	bnez	a0,2c60 <fatfs_update_file_length+0x120>
    2bcc:	00040513          	mv	a0,s0
    2bd0:	fffff097          	auipc	ra,0xfffff
    2bd4:	ac8080e7          	jalr	-1336(ra) # 1698 <fatfs_entry_sfn_only>
    2bd8:	08050463          	beqz	a0,2c60 <fatfs_update_file_length+0x120>
    2bdc:	00b00613          	li	a2,11
    2be0:	000a8593          	mv	a1,s5
    2be4:	00040513          	mv	a0,s0
    2be8:	ffffe097          	auipc	ra,0xffffe
    2bec:	d68080e7          	jalr	-664(ra) # 950 <strncmp>
    2bf0:	06051863          	bnez	a0,2c60 <fatfs_update_file_length+0x120>
    2bf4:	00895793          	srli	a5,s2,0x8
    2bf8:	01240e23          	sb	s2,28(s0)
    2bfc:	00f40ea3          	sb	a5,29(s0)
    2c00:	01095793          	srli	a5,s2,0x10
    2c04:	01895913          	srli	s2,s2,0x18
    2c08:	00f40f23          	sb	a5,30(s0)
    2c0c:	01240fa3          	sb	s2,31(s0)
    2c10:	00040593          	mv	a1,s0
    2c14:	02000613          	li	a2,32
    2c18:	00040513          	mv	a0,s0
    2c1c:	ffffe097          	auipc	ra,0xffffe
    2c20:	cf0080e7          	jalr	-784(ra) # 90c <memcpy>
    2c24:	02812403          	lw	s0,40(sp)
    2c28:	0384a783          	lw	a5,56(s1)
    2c2c:	2444a503          	lw	a0,580(s1)
    2c30:	02c12083          	lw	ra,44(sp)
    2c34:	02412483          	lw	s1,36(sp)
    2c38:	02012903          	lw	s2,32(sp)
    2c3c:	01c12983          	lw	s3,28(sp)
    2c40:	01812a03          	lw	s4,24(sp)
    2c44:	01412a83          	lw	s5,20(sp)
    2c48:	01012b03          	lw	s6,16(sp)
    2c4c:	000b8593          	mv	a1,s7
    2c50:	00c12b83          	lw	s7,12(sp)
    2c54:	00100613          	li	a2,1
    2c58:	03010113          	addi	sp,sp,48
    2c5c:	00078067          	jr	a5
    2c60:	02040413          	addi	s0,s0,32
    2c64:	f56414e3          	bne	s0,s6,2bac <fatfs_update_file_length+0x6c>
    2c68:	00198993          	addi	s3,s3,1
    2c6c:	f21ff06f          	j	2b8c <fatfs_update_file_length+0x4c>
    2c70:	02c12083          	lw	ra,44(sp)
    2c74:	02812403          	lw	s0,40(sp)
    2c78:	02412483          	lw	s1,36(sp)
    2c7c:	02012903          	lw	s2,32(sp)
    2c80:	01c12983          	lw	s3,28(sp)
    2c84:	01812a03          	lw	s4,24(sp)
    2c88:	01412a83          	lw	s5,20(sp)
    2c8c:	01012b03          	lw	s6,16(sp)
    2c90:	00c12b83          	lw	s7,12(sp)
    2c94:	00000513          	li	a0,0
    2c98:	03010113          	addi	sp,sp,48
    2c9c:	00008067          	ret
    2ca0:	00000513          	li	a0,0
    2ca4:	00008067          	ret

00002ca8 <_read_sectors>:
    2ca8:	fd010113          	addi	sp,sp,-48
    2cac:	01612823          	sw	s6,16(sp)
    2cb0:	00008b37          	lui	s6,0x8
    2cb4:	01512a23          	sw	s5,20(sp)
    2cb8:	2a8b4a83          	lbu	s5,680(s6) # 82a8 <_fs>
    2cbc:	01412c23          	sw	s4,24(sp)
    2cc0:	00058a13          	mv	s4,a1
    2cc4:	02912223          	sw	s1,36(sp)
    2cc8:	000a8593          	mv	a1,s5
    2ccc:	00050493          	mv	s1,a0
    2cd0:	000a0513          	mv	a0,s4
    2cd4:	02112623          	sw	ra,44(sp)
    2cd8:	02812423          	sw	s0,40(sp)
    2cdc:	03212023          	sw	s2,32(sp)
    2ce0:	00068413          	mv	s0,a3
    2ce4:	01712623          	sw	s7,12(sp)
    2ce8:	01812423          	sw	s8,8(sp)
    2cec:	01312e23          	sw	s3,28(sp)
    2cf0:	00060c13          	mv	s8,a2
    2cf4:	ffffe097          	auipc	ra,0xffffe
    2cf8:	b50080e7          	jalr	-1200(ra) # 844 <__udivsi3>
    2cfc:	00050913          	mv	s2,a0
    2d00:	000a8593          	mv	a1,s5
    2d04:	000a0513          	mv	a0,s4
    2d08:	ffffe097          	auipc	ra,0xffffe
    2d0c:	b84080e7          	jalr	-1148(ra) # 88c <__umodsi3>
    2d10:	00a407b3          	add	a5,s0,a0
    2d14:	00050b93          	mv	s7,a0
    2d18:	00fafe63          	bgeu	s5,a5,2d34 <_read_sectors+0x8c>
    2d1c:	00090593          	mv	a1,s2
    2d20:	000a8513          	mv	a0,s5
    2d24:	ffffe097          	auipc	ra,0xffffe
    2d28:	2d0080e7          	jalr	720(ra) # ff4 <__mulsi3>
    2d2c:	414a87b3          	sub	a5,s5,s4
    2d30:	00f50433          	add	s0,a0,a5
    2d34:	2284a983          	lw	s3,552(s1)
    2d38:	07299863          	bne	s3,s2,2da8 <_read_sectors+0x100>
    2d3c:	22c4a583          	lw	a1,556(s1)
    2d40:	fff00793          	li	a5,-1
    2d44:	02f58663          	beq	a1,a5,2d70 <_read_sectors+0xc8>
    2d48:	2a8b0513          	addi	a0,s6,680
    2d4c:	ffffe097          	auipc	ra,0xffffe
    2d50:	604080e7          	jalr	1540(ra) # 1350 <fatfs_lba_of_cluster>
    2d54:	017505b3          	add	a1,a0,s7
    2d58:	00040693          	mv	a3,s0
    2d5c:	000c0613          	mv	a2,s8
    2d60:	2a8b0513          	addi	a0,s6,680
    2d64:	ffffe097          	auipc	ra,0xffffe
    2d68:	63c080e7          	jalr	1596(ra) # 13a0 <fatfs_sector_read>
    2d6c:	00051463          	bnez	a0,2d74 <_read_sectors+0xcc>
    2d70:	00000413          	li	s0,0
    2d74:	02c12083          	lw	ra,44(sp)
    2d78:	00040513          	mv	a0,s0
    2d7c:	02812403          	lw	s0,40(sp)
    2d80:	02412483          	lw	s1,36(sp)
    2d84:	02012903          	lw	s2,32(sp)
    2d88:	01c12983          	lw	s3,28(sp)
    2d8c:	01812a03          	lw	s4,24(sp)
    2d90:	01412a83          	lw	s5,20(sp)
    2d94:	01012b03          	lw	s6,16(sp)
    2d98:	00c12b83          	lw	s7,12(sp)
    2d9c:	00812c03          	lw	s8,8(sp)
    2da0:	03010113          	addi	sp,sp,48
    2da4:	00008067          	ret
    2da8:	035a6463          	bltu	s4,s5,2dd0 <_read_sectors+0x128>
    2dac:	00198793          	addi	a5,s3,1
    2db0:	03279063          	bne	a5,s2,2dd0 <_read_sectors+0x128>
    2db4:	22c4a583          	lw	a1,556(s1)
    2db8:	0329e263          	bltu	s3,s2,2ddc <_read_sectors+0x134>
    2dbc:	fff00793          	li	a5,-1
    2dc0:	faf588e3          	beq	a1,a5,2d70 <_read_sectors+0xc8>
    2dc4:	22b4a623          	sw	a1,556(s1)
    2dc8:	2324a423          	sw	s2,552(s1)
    2dcc:	f7dff06f          	j	2d48 <_read_sectors+0xa0>
    2dd0:	0044a583          	lw	a1,4(s1)
    2dd4:	00000993          	li	s3,0
    2dd8:	fe1ff06f          	j	2db8 <_read_sectors+0x110>
    2ddc:	2a8b0513          	addi	a0,s6,680
    2de0:	fffff097          	auipc	ra,0xfffff
    2de4:	5d0080e7          	jalr	1488(ra) # 23b0 <fatfs_find_next_cluster>
    2de8:	00050593          	mv	a1,a0
    2dec:	00198993          	addi	s3,s3,1
    2df0:	fc9ff06f          	j	2db8 <_read_sectors+0x110>

00002df4 <fatfs_set_fs_info_next_free_cluster>:
    2df4:	03052783          	lw	a5,48(a0)
    2df8:	0a078863          	beqz	a5,2ea8 <fatfs_set_fs_info_next_free_cluster+0xb4>
    2dfc:	ff010113          	addi	sp,sp,-16
    2e00:	01c52783          	lw	a5,28(a0)
    2e04:	01212023          	sw	s2,0(sp)
    2e08:	00058913          	mv	s2,a1
    2e0c:	01855583          	lhu	a1,24(a0)
    2e10:	00812423          	sw	s0,8(sp)
    2e14:	00912223          	sw	s1,4(sp)
    2e18:	00f585b3          	add	a1,a1,a5
    2e1c:	00112623          	sw	ra,12(sp)
    2e20:	00050493          	mv	s1,a0
    2e24:	ffffe097          	auipc	ra,0xffffe
    2e28:	380080e7          	jalr	896(ra) # 11a4 <fatfs_fat_read_sector>
    2e2c:	00050413          	mv	s0,a0
    2e30:	06050063          	beqz	a0,2e90 <fatfs_set_fs_info_next_free_cluster+0x9c>
    2e34:	20852783          	lw	a5,520(a0)
    2e38:	00895713          	srli	a4,s2,0x8
    2e3c:	1f278623          	sb	s2,492(a5)
    2e40:	20852783          	lw	a5,520(a0)
    2e44:	1ee786a3          	sb	a4,493(a5)
    2e48:	20852783          	lw	a5,520(a0)
    2e4c:	01095713          	srli	a4,s2,0x10
    2e50:	1ee78723          	sb	a4,494(a5)
    2e54:	20852783          	lw	a5,520(a0)
    2e58:	01895713          	srli	a4,s2,0x18
    2e5c:	1ee787a3          	sb	a4,495(a5)
    2e60:	00100793          	li	a5,1
    2e64:	20f52223          	sw	a5,516(a0)
    2e68:	0384a783          	lw	a5,56(s1)
    2e6c:	0324a223          	sw	s2,36(s1)
    2e70:	00078a63          	beqz	a5,2e84 <fatfs_set_fs_info_next_free_cluster+0x90>
    2e74:	00050593          	mv	a1,a0
    2e78:	20052503          	lw	a0,512(a0)
    2e7c:	00100613          	li	a2,1
    2e80:	000780e7          	jalr	a5
    2e84:	fff00793          	li	a5,-1
    2e88:	20f42023          	sw	a5,512(s0)
    2e8c:	20042223          	sw	zero,516(s0)
    2e90:	00c12083          	lw	ra,12(sp)
    2e94:	00812403          	lw	s0,8(sp)
    2e98:	00412483          	lw	s1,4(sp)
    2e9c:	00012903          	lw	s2,0(sp)
    2ea0:	01010113          	addi	sp,sp,16
    2ea4:	00008067          	ret
    2ea8:	00008067          	ret

00002eac <fatfs_find_blank_cluster>:
    2eac:	fe010113          	addi	sp,sp,-32
    2eb0:	01312623          	sw	s3,12(sp)
    2eb4:	01512223          	sw	s5,4(sp)
    2eb8:	000109b7          	lui	s3,0x10
    2ebc:	10000ab7          	lui	s5,0x10000
    2ec0:	00912a23          	sw	s1,20(sp)
    2ec4:	01212823          	sw	s2,16(sp)
    2ec8:	01412423          	sw	s4,8(sp)
    2ecc:	00112e23          	sw	ra,28(sp)
    2ed0:	00812c23          	sw	s0,24(sp)
    2ed4:	00050913          	mv	s2,a0
    2ed8:	00058493          	mv	s1,a1
    2edc:	00060a13          	mv	s4,a2
    2ee0:	fff98993          	addi	s3,s3,-1 # ffff <_files+0x78ef>
    2ee4:	fffa8a93          	addi	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    2ee8:	03092783          	lw	a5,48(s2)
    2eec:	0074d413          	srli	s0,s1,0x7
    2ef0:	00079463          	bnez	a5,2ef8 <fatfs_find_blank_cluster+0x4c>
    2ef4:	0084d413          	srli	s0,s1,0x8
    2ef8:	02092783          	lw	a5,32(s2)
    2efc:	0cf47463          	bgeu	s0,a5,2fc4 <fatfs_find_blank_cluster+0x118>
    2f00:	01492583          	lw	a1,20(s2)
    2f04:	00090513          	mv	a0,s2
    2f08:	00b405b3          	add	a1,s0,a1
    2f0c:	ffffe097          	auipc	ra,0xffffe
    2f10:	298080e7          	jalr	664(ra) # 11a4 <fatfs_fat_read_sector>
    2f14:	0a050863          	beqz	a0,2fc4 <fatfs_find_blank_cluster+0x118>
    2f18:	03092783          	lw	a5,48(s2)
    2f1c:	20852703          	lw	a4,520(a0)
    2f20:	04079c63          	bnez	a5,2f78 <fatfs_find_blank_cluster+0xcc>
    2f24:	00841413          	slli	s0,s0,0x8
    2f28:	40848433          	sub	s0,s1,s0
    2f2c:	00141413          	slli	s0,s0,0x1
    2f30:	01347433          	and	s0,s0,s3
    2f34:	00870733          	add	a4,a4,s0
    2f38:	00174783          	lbu	a5,1(a4)
    2f3c:	00074703          	lbu	a4,0(a4)
    2f40:	00879793          	slli	a5,a5,0x8
    2f44:	00e787b3          	add	a5,a5,a4
    2f48:	06079a63          	bnez	a5,2fbc <fatfs_find_blank_cluster+0x110>
    2f4c:	009a2023          	sw	s1,0(s4)
    2f50:	00100513          	li	a0,1
    2f54:	01c12083          	lw	ra,28(sp)
    2f58:	01812403          	lw	s0,24(sp)
    2f5c:	01412483          	lw	s1,20(sp)
    2f60:	01012903          	lw	s2,16(sp)
    2f64:	00c12983          	lw	s3,12(sp)
    2f68:	00812a03          	lw	s4,8(sp)
    2f6c:	00412a83          	lw	s5,4(sp)
    2f70:	02010113          	addi	sp,sp,32
    2f74:	00008067          	ret
    2f78:	00741413          	slli	s0,s0,0x7
    2f7c:	40848433          	sub	s0,s1,s0
    2f80:	00241413          	slli	s0,s0,0x2
    2f84:	01347433          	and	s0,s0,s3
    2f88:	00870733          	add	a4,a4,s0
    2f8c:	00374783          	lbu	a5,3(a4)
    2f90:	00274683          	lbu	a3,2(a4)
    2f94:	01879793          	slli	a5,a5,0x18
    2f98:	01069693          	slli	a3,a3,0x10
    2f9c:	00d787b3          	add	a5,a5,a3
    2fa0:	00074683          	lbu	a3,0(a4)
    2fa4:	00174703          	lbu	a4,1(a4)
    2fa8:	00d787b3          	add	a5,a5,a3
    2fac:	00871713          	slli	a4,a4,0x8
    2fb0:	00e787b3          	add	a5,a5,a4
    2fb4:	0157f7b3          	and	a5,a5,s5
    2fb8:	f91ff06f          	j	2f48 <fatfs_find_blank_cluster+0x9c>
    2fbc:	00148493          	addi	s1,s1,1
    2fc0:	f29ff06f          	j	2ee8 <fatfs_find_blank_cluster+0x3c>
    2fc4:	00000513          	li	a0,0
    2fc8:	f8dff06f          	j	2f54 <fatfs_find_blank_cluster+0xa8>

00002fcc <fatfs_fat_set_cluster>:
    2fcc:	03052783          	lw	a5,48(a0)
    2fd0:	fe010113          	addi	sp,sp,-32
    2fd4:	00812c23          	sw	s0,24(sp)
    2fd8:	00912a23          	sw	s1,20(sp)
    2fdc:	01212823          	sw	s2,16(sp)
    2fe0:	01312623          	sw	s3,12(sp)
    2fe4:	00112e23          	sw	ra,28(sp)
    2fe8:	00050993          	mv	s3,a0
    2fec:	00058413          	mv	s0,a1
    2ff0:	00060493          	mv	s1,a2
    2ff4:	0085d913          	srli	s2,a1,0x8
    2ff8:	00078463          	beqz	a5,3000 <fatfs_fat_set_cluster+0x34>
    2ffc:	0075d913          	srli	s2,a1,0x7
    3000:	0149a583          	lw	a1,20(s3)
    3004:	00098513          	mv	a0,s3
    3008:	00b905b3          	add	a1,s2,a1
    300c:	ffffe097          	auipc	ra,0xffffe
    3010:	198080e7          	jalr	408(ra) # 11a4 <fatfs_fat_read_sector>
    3014:	00050693          	mv	a3,a0
    3018:	00000513          	li	a0,0
    301c:	04068c63          	beqz	a3,3074 <fatfs_fat_set_cluster+0xa8>
    3020:	0309a703          	lw	a4,48(s3)
    3024:	2086a783          	lw	a5,520(a3)
    3028:	0ff4f613          	zext.b	a2,s1
    302c:	06071263          	bnez	a4,3090 <fatfs_fat_set_cluster+0xc4>
    3030:	00891913          	slli	s2,s2,0x8
    3034:	41240433          	sub	s0,s0,s2
    3038:	00010737          	lui	a4,0x10
    303c:	00141413          	slli	s0,s0,0x1
    3040:	ffe70713          	addi	a4,a4,-2 # fffe <_files+0x78ee>
    3044:	00e47433          	and	s0,s0,a4
    3048:	008787b3          	add	a5,a5,s0
    304c:	00c78023          	sb	a2,0(a5)
    3050:	2086a783          	lw	a5,520(a3)
    3054:	01049493          	slli	s1,s1,0x10
    3058:	0104d493          	srli	s1,s1,0x10
    305c:	008787b3          	add	a5,a5,s0
    3060:	0084d493          	srli	s1,s1,0x8
    3064:	009780a3          	sb	s1,1(a5)
    3068:	00100793          	li	a5,1
    306c:	20f6a223          	sw	a5,516(a3)
    3070:	00100513          	li	a0,1
    3074:	01c12083          	lw	ra,28(sp)
    3078:	01812403          	lw	s0,24(sp)
    307c:	01412483          	lw	s1,20(sp)
    3080:	01012903          	lw	s2,16(sp)
    3084:	00c12983          	lw	s3,12(sp)
    3088:	02010113          	addi	sp,sp,32
    308c:	00008067          	ret
    3090:	00791913          	slli	s2,s2,0x7
    3094:	41240433          	sub	s0,s0,s2
    3098:	00010737          	lui	a4,0x10
    309c:	ffc70713          	addi	a4,a4,-4 # fffc <_files+0x78ec>
    30a0:	00241413          	slli	s0,s0,0x2
    30a4:	00e47433          	and	s0,s0,a4
    30a8:	008787b3          	add	a5,a5,s0
    30ac:	00c78023          	sb	a2,0(a5)
    30b0:	2086a783          	lw	a5,520(a3)
    30b4:	0084d713          	srli	a4,s1,0x8
    30b8:	008787b3          	add	a5,a5,s0
    30bc:	00e780a3          	sb	a4,1(a5)
    30c0:	2086a783          	lw	a5,520(a3)
    30c4:	0104d713          	srli	a4,s1,0x10
    30c8:	0184d493          	srli	s1,s1,0x18
    30cc:	008787b3          	add	a5,a5,s0
    30d0:	00e78123          	sb	a4,2(a5)
    30d4:	2086a783          	lw	a5,520(a3)
    30d8:	008787b3          	add	a5,a5,s0
    30dc:	009781a3          	sb	s1,3(a5)
    30e0:	f89ff06f          	j	3068 <fatfs_fat_set_cluster+0x9c>

000030e4 <fatfs_free_cluster_chain>:
    30e4:	fe010113          	addi	sp,sp,-32
    30e8:	00812c23          	sw	s0,24(sp)
    30ec:	01212823          	sw	s2,16(sp)
    30f0:	00112e23          	sw	ra,28(sp)
    30f4:	00912a23          	sw	s1,20(sp)
    30f8:	00050413          	mv	s0,a0
    30fc:	ffd00913          	li	s2,-3
    3100:	fff58793          	addi	a5,a1,-1
    3104:	02f97063          	bgeu	s2,a5,3124 <fatfs_free_cluster_chain+0x40>
    3108:	01c12083          	lw	ra,28(sp)
    310c:	01812403          	lw	s0,24(sp)
    3110:	01412483          	lw	s1,20(sp)
    3114:	01012903          	lw	s2,16(sp)
    3118:	00100513          	li	a0,1
    311c:	02010113          	addi	sp,sp,32
    3120:	00008067          	ret
    3124:	00040513          	mv	a0,s0
    3128:	00b12623          	sw	a1,12(sp)
    312c:	fffff097          	auipc	ra,0xfffff
    3130:	284080e7          	jalr	644(ra) # 23b0 <fatfs_find_next_cluster>
    3134:	00c12583          	lw	a1,12(sp)
    3138:	00050493          	mv	s1,a0
    313c:	00000613          	li	a2,0
    3140:	00040513          	mv	a0,s0
    3144:	00000097          	auipc	ra,0x0
    3148:	e88080e7          	jalr	-376(ra) # 2fcc <fatfs_fat_set_cluster>
    314c:	00048593          	mv	a1,s1
    3150:	fb1ff06f          	j	3100 <fatfs_free_cluster_chain+0x1c>

00003154 <fatfs_fat_add_cluster_to_chain>:
    3154:	fff00793          	li	a5,-1
    3158:	02f59463          	bne	a1,a5,3180 <fatfs_fat_add_cluster_to_chain+0x2c>
    315c:	00000513          	li	a0,0
    3160:	00008067          	ret
    3164:	00000513          	li	a0,0
    3168:	01c12083          	lw	ra,28(sp)
    316c:	01812403          	lw	s0,24(sp)
    3170:	01412483          	lw	s1,20(sp)
    3174:	01012903          	lw	s2,16(sp)
    3178:	02010113          	addi	sp,sp,32
    317c:	00008067          	ret
    3180:	fe010113          	addi	sp,sp,-32
    3184:	00812c23          	sw	s0,24(sp)
    3188:	00912a23          	sw	s1,20(sp)
    318c:	01212823          	sw	s2,16(sp)
    3190:	00050413          	mv	s0,a0
    3194:	00112e23          	sw	ra,28(sp)
    3198:	00058513          	mv	a0,a1
    319c:	00060493          	mv	s1,a2
    31a0:	fff00913          	li	s2,-1
    31a4:	00050593          	mv	a1,a0
    31a8:	00a12623          	sw	a0,12(sp)
    31ac:	00040513          	mv	a0,s0
    31b0:	fffff097          	auipc	ra,0xfffff
    31b4:	200080e7          	jalr	512(ra) # 23b0 <fatfs_find_next_cluster>
    31b8:	fa0506e3          	beqz	a0,3164 <fatfs_fat_add_cluster_to_chain+0x10>
    31bc:	00c12583          	lw	a1,12(sp)
    31c0:	ff2512e3          	bne	a0,s2,31a4 <fatfs_fat_add_cluster_to_chain+0x50>
    31c4:	00048613          	mv	a2,s1
    31c8:	00040513          	mv	a0,s0
    31cc:	00000097          	auipc	ra,0x0
    31d0:	e00080e7          	jalr	-512(ra) # 2fcc <fatfs_fat_set_cluster>
    31d4:	fff00613          	li	a2,-1
    31d8:	00048593          	mv	a1,s1
    31dc:	00040513          	mv	a0,s0
    31e0:	00000097          	auipc	ra,0x0
    31e4:	dec080e7          	jalr	-532(ra) # 2fcc <fatfs_fat_set_cluster>
    31e8:	00100513          	li	a0,1
    31ec:	f7dff06f          	j	3168 <fatfs_fat_add_cluster_to_chain+0x14>

000031f0 <fatfs_add_free_space>:
    31f0:	02452703          	lw	a4,36(a0)
    31f4:	fd010113          	addi	sp,sp,-48
    31f8:	02812423          	sw	s0,40(sp)
    31fc:	03212023          	sw	s2,32(sp)
    3200:	01412c23          	sw	s4,24(sp)
    3204:	01512a23          	sw	s5,20(sp)
    3208:	02112623          	sw	ra,44(sp)
    320c:	02912223          	sw	s1,36(sp)
    3210:	01312e23          	sw	s3,28(sp)
    3214:	fff00793          	li	a5,-1
    3218:	0005aa83          	lw	s5,0(a1)
    321c:	00050413          	mv	s0,a0
    3220:	00058913          	mv	s2,a1
    3224:	00060a13          	mv	s4,a2
    3228:	00f70863          	beq	a4,a5,3238 <fatfs_add_free_space+0x48>
    322c:	fff00593          	li	a1,-1
    3230:	00000097          	auipc	ra,0x0
    3234:	bc4080e7          	jalr	-1084(ra) # 2df4 <fatfs_set_fs_info_next_free_cluster>
    3238:	00000493          	li	s1,0
    323c:	03449663          	bne	s1,s4,3268 <fatfs_add_free_space+0x78>
    3240:	00100513          	li	a0,1
    3244:	02c12083          	lw	ra,44(sp)
    3248:	02812403          	lw	s0,40(sp)
    324c:	02412483          	lw	s1,36(sp)
    3250:	02012903          	lw	s2,32(sp)
    3254:	01c12983          	lw	s3,28(sp)
    3258:	01812a03          	lw	s4,24(sp)
    325c:	01412a83          	lw	s5,20(sp)
    3260:	03010113          	addi	sp,sp,48
    3264:	00008067          	ret
    3268:	00842583          	lw	a1,8(s0)
    326c:	00c10613          	addi	a2,sp,12
    3270:	00040513          	mv	a0,s0
    3274:	00000097          	auipc	ra,0x0
    3278:	c38080e7          	jalr	-968(ra) # 2eac <fatfs_find_blank_cluster>
    327c:	fc0504e3          	beqz	a0,3244 <fatfs_add_free_space+0x54>
    3280:	00c12983          	lw	s3,12(sp)
    3284:	000a8593          	mv	a1,s5
    3288:	00040513          	mv	a0,s0
    328c:	00098613          	mv	a2,s3
    3290:	00000097          	auipc	ra,0x0
    3294:	d3c080e7          	jalr	-708(ra) # 2fcc <fatfs_fat_set_cluster>
    3298:	fff00613          	li	a2,-1
    329c:	00098593          	mv	a1,s3
    32a0:	00040513          	mv	a0,s0
    32a4:	00000097          	auipc	ra,0x0
    32a8:	d28080e7          	jalr	-728(ra) # 2fcc <fatfs_fat_set_cluster>
    32ac:	00049463          	bnez	s1,32b4 <fatfs_add_free_space+0xc4>
    32b0:	01392023          	sw	s3,0(s2)
    32b4:	00148493          	addi	s1,s1,1
    32b8:	00098a93          	mv	s5,s3
    32bc:	f81ff06f          	j	323c <fatfs_add_free_space+0x4c>

000032c0 <_write_sectors>:
    32c0:	fb010113          	addi	sp,sp,-80
    32c4:	03312e23          	sw	s3,60(sp)
    32c8:	000089b7          	lui	s3,0x8
    32cc:	03612823          	sw	s6,48(sp)
    32d0:	2a89cb03          	lbu	s6,680(s3) # 82a8 <_fs>
    32d4:	03512a23          	sw	s5,52(sp)
    32d8:	00058a93          	mv	s5,a1
    32dc:	fff00793          	li	a5,-1
    32e0:	04812423          	sw	s0,72(sp)
    32e4:	000b0593          	mv	a1,s6
    32e8:	00050413          	mv	s0,a0
    32ec:	000a8513          	mv	a0,s5
    32f0:	00f12e23          	sw	a5,28(sp)
    32f4:	04112623          	sw	ra,76(sp)
    32f8:	04912223          	sw	s1,68(sp)
    32fc:	05212023          	sw	s2,64(sp)
    3300:	03712623          	sw	s7,44(sp)
    3304:	03812423          	sw	s8,40(sp)
    3308:	00068b93          	mv	s7,a3
    330c:	03912223          	sw	s9,36(sp)
    3310:	03a12023          	sw	s10,32(sp)
    3314:	00060c93          	mv	s9,a2
    3318:	03412c23          	sw	s4,56(sp)
    331c:	ffffd097          	auipc	ra,0xffffd
    3320:	528080e7          	jalr	1320(ra) # 844 <__udivsi3>
    3324:	00050493          	mv	s1,a0
    3328:	000b0593          	mv	a1,s6
    332c:	000a8513          	mv	a0,s5
    3330:	ffffd097          	auipc	ra,0xffffd
    3334:	55c080e7          	jalr	1372(ra) # 88c <__umodsi3>
    3338:	00ab87b3          	add	a5,s7,a0
    333c:	00050c13          	mv	s8,a0
    3340:	2a898d13          	addi	s10,s3,680
    3344:	000b8913          	mv	s2,s7
    3348:	00fb7e63          	bgeu	s6,a5,3364 <_write_sectors+0xa4>
    334c:	00048593          	mv	a1,s1
    3350:	000b0513          	mv	a0,s6
    3354:	ffffe097          	auipc	ra,0xffffe
    3358:	ca0080e7          	jalr	-864(ra) # ff4 <__mulsi3>
    335c:	415b07b3          	sub	a5,s6,s5
    3360:	00f50933          	add	s2,a0,a5
    3364:	22842a03          	lw	s4,552(s0)
    3368:	029a1a63          	bne	s4,s1,339c <_write_sectors+0xdc>
    336c:	22c42583          	lw	a1,556(s0)
    3370:	2a898513          	addi	a0,s3,680
    3374:	ffffe097          	auipc	ra,0xffffe
    3378:	fdc080e7          	jalr	-36(ra) # 1350 <fatfs_lba_of_cluster>
    337c:	018505b3          	add	a1,a0,s8
    3380:	00090693          	mv	a3,s2
    3384:	000c8613          	mv	a2,s9
    3388:	2a898513          	addi	a0,s3,680
    338c:	ffffe097          	auipc	ra,0xffffe
    3390:	02c080e7          	jalr	44(ra) # 13b8 <fatfs_sector_write>
    3394:	04050a63          	beqz	a0,33e8 <_write_sectors+0x128>
    3398:	0540006f          	j	33ec <_write_sectors+0x12c>
    339c:	096ae663          	bltu	s5,s6,3428 <_write_sectors+0x168>
    33a0:	001a0793          	addi	a5,s4,1
    33a4:	08979263          	bne	a5,s1,3428 <_write_sectors+0x168>
    33a8:	22c42583          	lw	a1,556(s0)
    33ac:	fff00a93          	li	s5,-1
    33b0:	089a6263          	bltu	s4,s1,3434 <_write_sectors+0x174>
    33b4:	fff00793          	li	a5,-1
    33b8:	0af59463          	bne	a1,a5,3460 <_write_sectors+0x1a0>
    33bc:	000d4583          	lbu	a1,0(s10)
    33c0:	fff58513          	addi	a0,a1,-1
    33c4:	01750533          	add	a0,a0,s7
    33c8:	ffffd097          	auipc	ra,0xffffd
    33cc:	47c080e7          	jalr	1148(ra) # 844 <__udivsi3>
    33d0:	00050613          	mv	a2,a0
    33d4:	01c10593          	addi	a1,sp,28
    33d8:	2a898513          	addi	a0,s3,680
    33dc:	00000097          	auipc	ra,0x0
    33e0:	e14080e7          	jalr	-492(ra) # 31f0 <fatfs_add_free_space>
    33e4:	06051c63          	bnez	a0,345c <_write_sectors+0x19c>
    33e8:	00000913          	li	s2,0
    33ec:	04c12083          	lw	ra,76(sp)
    33f0:	04812403          	lw	s0,72(sp)
    33f4:	04412483          	lw	s1,68(sp)
    33f8:	03c12983          	lw	s3,60(sp)
    33fc:	03812a03          	lw	s4,56(sp)
    3400:	03412a83          	lw	s5,52(sp)
    3404:	03012b03          	lw	s6,48(sp)
    3408:	02c12b83          	lw	s7,44(sp)
    340c:	02812c03          	lw	s8,40(sp)
    3410:	02412c83          	lw	s9,36(sp)
    3414:	02012d03          	lw	s10,32(sp)
    3418:	00090513          	mv	a0,s2
    341c:	04012903          	lw	s2,64(sp)
    3420:	05010113          	addi	sp,sp,80
    3424:	00008067          	ret
    3428:	00442583          	lw	a1,4(s0)
    342c:	00000a13          	li	s4,0
    3430:	f7dff06f          	j	33ac <_write_sectors+0xec>
    3434:	2a898513          	addi	a0,s3,680
    3438:	00b12623          	sw	a1,12(sp)
    343c:	fffff097          	auipc	ra,0xfffff
    3440:	f74080e7          	jalr	-140(ra) # 23b0 <fatfs_find_next_cluster>
    3444:	00c12583          	lw	a1,12(sp)
    3448:	00b12e23          	sw	a1,28(sp)
    344c:	f75508e3          	beq	a0,s5,33bc <_write_sectors+0xfc>
    3450:	001a0a13          	addi	s4,s4,1
    3454:	00050593          	mv	a1,a0
    3458:	f59ff06f          	j	33b0 <_write_sectors+0xf0>
    345c:	01c12583          	lw	a1,28(sp)
    3460:	22b42623          	sw	a1,556(s0)
    3464:	22942423          	sw	s1,552(s0)
    3468:	f09ff06f          	j	3370 <_write_sectors+0xb0>

0000346c <fl_fflush>:
    346c:	000047b7          	lui	a5,0x4
    3470:	2a47a783          	lw	a5,676(a5) # 42a4 <_filelib_init>
    3474:	ff010113          	addi	sp,sp,-16
    3478:	00812423          	sw	s0,8(sp)
    347c:	00112623          	sw	ra,12(sp)
    3480:	00912223          	sw	s1,4(sp)
    3484:	00050413          	mv	s0,a0
    3488:	00079663          	bnez	a5,3494 <fl_fflush+0x28>
    348c:	ffffe097          	auipc	ra,0xffffe
    3490:	000080e7          	jalr	ra # 148c <fl_init>
    3494:	04040863          	beqz	s0,34e4 <fl_fflush+0x78>
    3498:	000087b7          	lui	a5,0x8
    349c:	2a878713          	addi	a4,a5,680 # 82a8 <_fs>
    34a0:	03c72703          	lw	a4,60(a4)
    34a4:	2a878493          	addi	s1,a5,680
    34a8:	00070463          	beqz	a4,34b0 <fl_fflush+0x44>
    34ac:	000700e7          	jalr	a4
    34b0:	43442783          	lw	a5,1076(s0)
    34b4:	02078263          	beqz	a5,34d8 <fl_fflush+0x6c>
    34b8:	43042583          	lw	a1,1072(s0)
    34bc:	00100693          	li	a3,1
    34c0:	23040613          	addi	a2,s0,560
    34c4:	00040513          	mv	a0,s0
    34c8:	00000097          	auipc	ra,0x0
    34cc:	df8080e7          	jalr	-520(ra) # 32c0 <_write_sectors>
    34d0:	00050463          	beqz	a0,34d8 <fl_fflush+0x6c>
    34d4:	42042a23          	sw	zero,1076(s0)
    34d8:	0404a783          	lw	a5,64(s1)
    34dc:	00078463          	beqz	a5,34e4 <fl_fflush+0x78>
    34e0:	000780e7          	jalr	a5
    34e4:	00c12083          	lw	ra,12(sp)
    34e8:	00812403          	lw	s0,8(sp)
    34ec:	00412483          	lw	s1,4(sp)
    34f0:	00000513          	li	a0,0
    34f4:	01010113          	addi	sp,sp,16
    34f8:	00008067          	ret

000034fc <fl_fclose>:
    34fc:	000047b7          	lui	a5,0x4
    3500:	2a47a783          	lw	a5,676(a5) # 42a4 <_filelib_init>
    3504:	ff010113          	addi	sp,sp,-16
    3508:	00812423          	sw	s0,8(sp)
    350c:	00112623          	sw	ra,12(sp)
    3510:	00912223          	sw	s1,4(sp)
    3514:	01212023          	sw	s2,0(sp)
    3518:	00050413          	mv	s0,a0
    351c:	00079663          	bnez	a5,3528 <fl_fclose+0x2c>
    3520:	ffffe097          	auipc	ra,0xffffe
    3524:	f6c080e7          	jalr	-148(ra) # 148c <fl_init>
    3528:	08040e63          	beqz	s0,35c4 <fl_fclose+0xc8>
    352c:	000084b7          	lui	s1,0x8
    3530:	2a848793          	addi	a5,s1,680 # 82a8 <_fs>
    3534:	03c7a783          	lw	a5,60(a5)
    3538:	2a848913          	addi	s2,s1,680
    353c:	00078463          	beqz	a5,3544 <fl_fclose+0x48>
    3540:	000780e7          	jalr	a5
    3544:	00040513          	mv	a0,s0
    3548:	00000097          	auipc	ra,0x0
    354c:	f24080e7          	jalr	-220(ra) # 346c <fl_fflush>
    3550:	01042783          	lw	a5,16(s0)
    3554:	00078e63          	beqz	a5,3570 <fl_fclose+0x74>
    3558:	00c42683          	lw	a3,12(s0)
    355c:	00042583          	lw	a1,0(s0)
    3560:	21c40613          	addi	a2,s0,540
    3564:	2a848513          	addi	a0,s1,680
    3568:	fffff097          	auipc	ra,0xfffff
    356c:	5d8080e7          	jalr	1496(ra) # 2b40 <fatfs_update_file_length>
    3570:	fff00793          	li	a5,-1
    3574:	42f42823          	sw	a5,1072(s0)
    3578:	00040513          	mv	a0,s0
    357c:	00042423          	sw	zero,8(s0)
    3580:	00042623          	sw	zero,12(s0)
    3584:	00042223          	sw	zero,4(s0)
    3588:	42042a23          	sw	zero,1076(s0)
    358c:	00042823          	sw	zero,16(s0)
    3590:	ffffe097          	auipc	ra,0xffffe
    3594:	d78080e7          	jalr	-648(ra) # 1308 <_free_file>
    3598:	2a848513          	addi	a0,s1,680
    359c:	fffff097          	auipc	ra,0xfffff
    35a0:	db8080e7          	jalr	-584(ra) # 2354 <fatfs_fat_purge>
    35a4:	04092783          	lw	a5,64(s2)
    35a8:	00078e63          	beqz	a5,35c4 <fl_fclose+0xc8>
    35ac:	00812403          	lw	s0,8(sp)
    35b0:	00c12083          	lw	ra,12(sp)
    35b4:	00412483          	lw	s1,4(sp)
    35b8:	00012903          	lw	s2,0(sp)
    35bc:	01010113          	addi	sp,sp,16
    35c0:	00078067          	jr	a5
    35c4:	00c12083          	lw	ra,12(sp)
    35c8:	00812403          	lw	s0,8(sp)
    35cc:	00412483          	lw	s1,4(sp)
    35d0:	00012903          	lw	s2,0(sp)
    35d4:	01010113          	addi	sp,sp,16
    35d8:	00008067          	ret

000035dc <fl_fread>:
    35dc:	fd010113          	addi	sp,sp,-48
    35e0:	01612823          	sw	s6,16(sp)
    35e4:	00050b13          	mv	s6,a0
    35e8:	00058513          	mv	a0,a1
    35ec:	00060593          	mv	a1,a2
    35f0:	02812423          	sw	s0,40(sp)
    35f4:	02912223          	sw	s1,36(sp)
    35f8:	02112623          	sw	ra,44(sp)
    35fc:	03212023          	sw	s2,32(sp)
    3600:	01312e23          	sw	s3,28(sp)
    3604:	01412c23          	sw	s4,24(sp)
    3608:	01512a23          	sw	s5,20(sp)
    360c:	01712623          	sw	s7,12(sp)
    3610:	01812423          	sw	s8,8(sp)
    3614:	01912223          	sw	s9,4(sp)
    3618:	00068413          	mv	s0,a3
    361c:	ffffe097          	auipc	ra,0xffffe
    3620:	9d8080e7          	jalr	-1576(ra) # ff4 <__mulsi3>
    3624:	000047b7          	lui	a5,0x4
    3628:	2a47a783          	lw	a5,676(a5) # 42a4 <_filelib_init>
    362c:	00050493          	mv	s1,a0
    3630:	00079663          	bnez	a5,363c <fl_fread+0x60>
    3634:	ffffe097          	auipc	ra,0xffffe
    3638:	e58080e7          	jalr	-424(ra) # 148c <fl_init>
    363c:	120b0e63          	beqz	s6,3778 <fl_fread+0x19c>
    3640:	12040c63          	beqz	s0,3778 <fl_fread+0x19c>
    3644:	43844783          	lbu	a5,1080(s0)
    3648:	0017f793          	andi	a5,a5,1
    364c:	12078663          	beqz	a5,3778 <fl_fread+0x19c>
    3650:	0a048e63          	beqz	s1,370c <fl_fread+0x130>
    3654:	00842583          	lw	a1,8(s0)
    3658:	00c42783          	lw	a5,12(s0)
    365c:	10f5fe63          	bgeu	a1,a5,3778 <fl_fread+0x19c>
    3660:	00b48733          	add	a4,s1,a1
    3664:	00e7f463          	bgeu	a5,a4,366c <fl_fread+0x90>
    3668:	40b784b3          	sub	s1,a5,a1
    366c:	0095da13          	srli	s4,a1,0x9
    3670:	1ff5f913          	andi	s2,a1,511
    3674:	00000993          	li	s3,0
    3678:	23040b93          	addi	s7,s0,560
    367c:	20000c13          	li	s8,512
    3680:	1ff00c93          	li	s9,511
    3684:	0899d263          	bge	s3,s1,3708 <fl_fread+0x12c>
    3688:	04091463          	bnez	s2,36d0 <fl_fread+0xf4>
    368c:	413486b3          	sub	a3,s1,s3
    3690:	04dcd063          	bge	s9,a3,36d0 <fl_fread+0xf4>
    3694:	4096d693          	srai	a3,a3,0x9
    3698:	013b0633          	add	a2,s6,s3
    369c:	000a0593          	mv	a1,s4
    36a0:	00040513          	mv	a0,s0
    36a4:	fffff097          	auipc	ra,0xfffff
    36a8:	604080e7          	jalr	1540(ra) # 2ca8 <_read_sectors>
    36ac:	04050e63          	beqz	a0,3708 <fl_fread+0x12c>
    36b0:	00951a93          	slli	s5,a0,0x9
    36b4:	00aa0a33          	add	s4,s4,a0
    36b8:	00842783          	lw	a5,8(s0)
    36bc:	015989b3          	add	s3,s3,s5
    36c0:	00000913          	li	s2,0
    36c4:	015787b3          	add	a5,a5,s5
    36c8:	00f42423          	sw	a5,8(s0)
    36cc:	fb9ff06f          	j	3684 <fl_fread+0xa8>
    36d0:	43042783          	lw	a5,1072(s0)
    36d4:	07478c63          	beq	a5,s4,374c <fl_fread+0x170>
    36d8:	43442783          	lw	a5,1076(s0)
    36dc:	00078863          	beqz	a5,36ec <fl_fread+0x110>
    36e0:	00040513          	mv	a0,s0
    36e4:	00000097          	auipc	ra,0x0
    36e8:	d88080e7          	jalr	-632(ra) # 346c <fl_fflush>
    36ec:	00100693          	li	a3,1
    36f0:	000b8613          	mv	a2,s7
    36f4:	000a0593          	mv	a1,s4
    36f8:	00040513          	mv	a0,s0
    36fc:	fffff097          	auipc	ra,0xfffff
    3700:	5ac080e7          	jalr	1452(ra) # 2ca8 <_read_sectors>
    3704:	04051063          	bnez	a0,3744 <fl_fread+0x168>
    3708:	00098493          	mv	s1,s3
    370c:	02c12083          	lw	ra,44(sp)
    3710:	02812403          	lw	s0,40(sp)
    3714:	02012903          	lw	s2,32(sp)
    3718:	01c12983          	lw	s3,28(sp)
    371c:	01812a03          	lw	s4,24(sp)
    3720:	01412a83          	lw	s5,20(sp)
    3724:	01012b03          	lw	s6,16(sp)
    3728:	00c12b83          	lw	s7,12(sp)
    372c:	00812c03          	lw	s8,8(sp)
    3730:	00412c83          	lw	s9,4(sp)
    3734:	00048513          	mv	a0,s1
    3738:	02412483          	lw	s1,36(sp)
    373c:	03010113          	addi	sp,sp,48
    3740:	00008067          	ret
    3744:	43442823          	sw	s4,1072(s0)
    3748:	42042a23          	sw	zero,1076(s0)
    374c:	412c07b3          	sub	a5,s8,s2
    3750:	41348ab3          	sub	s5,s1,s3
    3754:	0157d463          	bge	a5,s5,375c <fl_fread+0x180>
    3758:	00078a93          	mv	s5,a5
    375c:	000a8613          	mv	a2,s5
    3760:	012b85b3          	add	a1,s7,s2
    3764:	013b0533          	add	a0,s6,s3
    3768:	ffffd097          	auipc	ra,0xffffd
    376c:	1a4080e7          	jalr	420(ra) # 90c <memcpy>
    3770:	001a0a13          	addi	s4,s4,1
    3774:	f45ff06f          	j	36b8 <fl_fread+0xdc>
    3778:	fff00493          	li	s1,-1
    377c:	f91ff06f          	j	370c <fl_fread+0x130>

00003780 <fatfs_allocate_free_space>:
    3780:	02069a63          	bnez	a3,37b4 <fatfs_allocate_free_space+0x34>
    3784:	00000513          	li	a0,0
    3788:	00008067          	ret
    378c:	00000513          	li	a0,0
    3790:	02c12083          	lw	ra,44(sp)
    3794:	02812403          	lw	s0,40(sp)
    3798:	02412483          	lw	s1,36(sp)
    379c:	02012903          	lw	s2,32(sp)
    37a0:	01c12983          	lw	s3,28(sp)
    37a4:	01812a03          	lw	s4,24(sp)
    37a8:	01412a83          	lw	s5,20(sp)
    37ac:	03010113          	addi	sp,sp,48
    37b0:	00008067          	ret
    37b4:	02452703          	lw	a4,36(a0)
    37b8:	fd010113          	addi	sp,sp,-48
    37bc:	02812423          	sw	s0,40(sp)
    37c0:	03212023          	sw	s2,32(sp)
    37c4:	01312e23          	sw	s3,28(sp)
    37c8:	01512a23          	sw	s5,20(sp)
    37cc:	02112623          	sw	ra,44(sp)
    37d0:	02912223          	sw	s1,36(sp)
    37d4:	01412c23          	sw	s4,24(sp)
    37d8:	fff00793          	li	a5,-1
    37dc:	00050413          	mv	s0,a0
    37e0:	00058a93          	mv	s5,a1
    37e4:	00060993          	mv	s3,a2
    37e8:	00068913          	mv	s2,a3
    37ec:	00f70863          	beq	a4,a5,37fc <fatfs_allocate_free_space+0x7c>
    37f0:	fff00593          	li	a1,-1
    37f4:	fffff097          	auipc	ra,0xfffff
    37f8:	600080e7          	jalr	1536(ra) # 2df4 <fatfs_set_fs_info_next_free_cluster>
    37fc:	00044a03          	lbu	s4,0(s0)
    3800:	00090513          	mv	a0,s2
    3804:	009a1a13          	slli	s4,s4,0x9
    3808:	000a0593          	mv	a1,s4
    380c:	ffffd097          	auipc	ra,0xffffd
    3810:	038080e7          	jalr	56(ra) # 844 <__udivsi3>
    3814:	00050493          	mv	s1,a0
    3818:	00050593          	mv	a1,a0
    381c:	000a0513          	mv	a0,s4
    3820:	ffffd097          	auipc	ra,0xffffd
    3824:	7d4080e7          	jalr	2004(ra) # ff4 <__mulsi3>
    3828:	01250463          	beq	a0,s2,3830 <fatfs_allocate_free_space+0xb0>
    382c:	00148493          	addi	s1,s1,1
    3830:	040a8463          	beqz	s5,3878 <fatfs_allocate_free_space+0xf8>
    3834:	00842583          	lw	a1,8(s0)
    3838:	00c10613          	addi	a2,sp,12
    383c:	00040513          	mv	a0,s0
    3840:	fffff097          	auipc	ra,0xfffff
    3844:	66c080e7          	jalr	1644(ra) # 2eac <fatfs_find_blank_cluster>
    3848:	f40502e3          	beqz	a0,378c <fatfs_allocate_free_space+0xc>
    384c:	00100793          	li	a5,1
    3850:	02f49863          	bne	s1,a5,3880 <fatfs_allocate_free_space+0x100>
    3854:	00c12483          	lw	s1,12(sp)
    3858:	fff00613          	li	a2,-1
    385c:	00040513          	mv	a0,s0
    3860:	00048593          	mv	a1,s1
    3864:	fffff097          	auipc	ra,0xfffff
    3868:	768080e7          	jalr	1896(ra) # 2fcc <fatfs_fat_set_cluster>
    386c:	00100513          	li	a0,1
    3870:	0099a023          	sw	s1,0(s3)
    3874:	f1dff06f          	j	3790 <fatfs_allocate_free_space+0x10>
    3878:	0009a783          	lw	a5,0(s3)
    387c:	00f12623          	sw	a5,12(sp)
    3880:	00048613          	mv	a2,s1
    3884:	00c10593          	addi	a1,sp,12
    3888:	00040513          	mv	a0,s0
    388c:	00000097          	auipc	ra,0x0
    3890:	964080e7          	jalr	-1692(ra) # 31f0 <fatfs_add_free_space>
    3894:	00a03533          	snez	a0,a0
    3898:	ef9ff06f          	j	3790 <fatfs_allocate_free_space+0x10>

0000389c <fatfs_add_file_entry>:
    389c:	f8010113          	addi	sp,sp,-128
    38a0:	00f12a23          	sw	a5,20(sp)
    38a4:	03852783          	lw	a5,56(a0)
    38a8:	06112e23          	sw	ra,124(sp)
    38ac:	06812c23          	sw	s0,120(sp)
    38b0:	06912a23          	sw	s1,116(sp)
    38b4:	07212823          	sw	s2,112(sp)
    38b8:	07312623          	sw	s3,108(sp)
    38bc:	07412423          	sw	s4,104(sp)
    38c0:	07512223          	sw	s5,100(sp)
    38c4:	07612023          	sw	s6,96(sp)
    38c8:	05712e23          	sw	s7,92(sp)
    38cc:	05812c23          	sw	s8,88(sp)
    38d0:	05912a23          	sw	s9,84(sp)
    38d4:	05a12823          	sw	s10,80(sp)
    38d8:	05b12623          	sw	s11,76(sp)
    38dc:	00b12423          	sw	a1,8(sp)
    38e0:	00c12623          	sw	a2,12(sp)
    38e4:	00e12823          	sw	a4,16(sp)
    38e8:	01012c23          	sw	a6,24(sp)
    38ec:	04079263          	bnez	a5,3930 <fatfs_add_file_entry+0x94>
    38f0:	00000513          	li	a0,0
    38f4:	07c12083          	lw	ra,124(sp)
    38f8:	07812403          	lw	s0,120(sp)
    38fc:	07412483          	lw	s1,116(sp)
    3900:	07012903          	lw	s2,112(sp)
    3904:	06c12983          	lw	s3,108(sp)
    3908:	06812a03          	lw	s4,104(sp)
    390c:	06412a83          	lw	s5,100(sp)
    3910:	06012b03          	lw	s6,96(sp)
    3914:	05c12b83          	lw	s7,92(sp)
    3918:	05812c03          	lw	s8,88(sp)
    391c:	05412c83          	lw	s9,84(sp)
    3920:	05012d03          	lw	s10,80(sp)
    3924:	04c12d83          	lw	s11,76(sp)
    3928:	08010113          	addi	sp,sp,128
    392c:	00008067          	ret
    3930:	00050413          	mv	s0,a0
    3934:	00c12503          	lw	a0,12(sp)
    3938:	00068a93          	mv	s5,a3
    393c:	ffffe097          	auipc	ra,0xffffe
    3940:	db8080e7          	jalr	-584(ra) # 16f4 <fatfs_lfn_entries_required>
    3944:	00150713          	addi	a4,a0,1
    3948:	00100793          	li	a5,1
    394c:	00050493          	mv	s1,a0
    3950:	fae7f0e3          	bgeu	a5,a4,38f0 <fatfs_add_file_entry+0x54>
    3954:	00000913          	li	s2,0
    3958:	00000a13          	li	s4,0
    395c:	00000993          	li	s3,0
    3960:	00000b13          	li	s6,0
    3964:	00000d93          	li	s11,0
    3968:	0e500b93          	li	s7,229
    396c:	01000c13          	li	s8,16
    3970:	00812583          	lw	a1,8(sp)
    3974:	00000693          	li	a3,0
    3978:	00090613          	mv	a2,s2
    397c:	00040513          	mv	a0,s0
    3980:	fffff097          	auipc	ra,0xfffff
    3984:	b40080e7          	jalr	-1216(ra) # 24c0 <fatfs_sector_reader>
    3988:	14050463          	beqz	a0,3ad0 <fatfs_add_file_entry+0x234>
    398c:	04440d13          	addi	s10,s0,68
    3990:	000d8793          	mv	a5,s11
    3994:	00000c93          	li	s9,0
    3998:	000d0513          	mv	a0,s10
    399c:	00f12e23          	sw	a5,28(sp)
    39a0:	ffffe097          	auipc	ra,0xffffe
    39a4:	c64080e7          	jalr	-924(ra) # 1604 <fatfs_entry_lfn_text>
    39a8:	01c12783          	lw	a5,28(sp)
    39ac:	00050d93          	mv	s11,a0
    39b0:	02050c63          	beqz	a0,39e8 <fatfs_add_file_entry+0x14c>
    39b4:	00079863          	bnez	a5,39c4 <fatfs_add_file_entry+0x128>
    39b8:	000c8a13          	mv	s4,s9
    39bc:	00090993          	mv	s3,s2
    39c0:	00100b13          	li	s6,1
    39c4:	00178d93          	addi	s11,a5,1
    39c8:	001c8713          	addi	a4,s9,1
    39cc:	0ff77c93          	zext.b	s9,a4
    39d0:	020d0d13          	addi	s10,s10,32
    39d4:	018c9663          	bne	s9,s8,39e0 <fatfs_add_file_entry+0x144>
    39d8:	00190913          	addi	s2,s2,1
    39dc:	f95ff06f          	j	3970 <fatfs_add_file_entry+0xd4>
    39e0:	000d8793          	mv	a5,s11
    39e4:	fb5ff06f          	j	3998 <fatfs_add_file_entry+0xfc>
    39e8:	000d4603          	lbu	a2,0(s10)
    39ec:	0d761c63          	bne	a2,s7,3ac4 <fatfs_add_file_entry+0x228>
    39f0:	00079863          	bnez	a5,3a00 <fatfs_add_file_entry+0x164>
    39f4:	000c8a13          	mv	s4,s9
    39f8:	00090993          	mv	s3,s2
    39fc:	00100b13          	li	s6,1
    3a00:	00178d93          	addi	s11,a5,1
    3a04:	fc97c2e3          	blt	a5,s1,39c8 <fatfs_add_file_entry+0x12c>
    3a08:	00ba8693          	addi	a3,s5,11
    3a0c:	000a8713          	mv	a4,s5
    3a10:	00000913          	li	s2,0
    3a14:	00074603          	lbu	a2,0(a4)
    3a18:	00195793          	srli	a5,s2,0x1
    3a1c:	00791913          	slli	s2,s2,0x7
    3a20:	0127e7b3          	or	a5,a5,s2
    3a24:	00170713          	addi	a4,a4,1
    3a28:	00c787b3          	add	a5,a5,a2
    3a2c:	0ff7f913          	zext.b	s2,a5
    3a30:	fed712e3          	bne	a4,a3,3a14 <fatfs_add_file_entry+0x178>
    3a34:	00098b13          	mv	s6,s3
    3a38:	00000d93          	li	s11,0
    3a3c:	04440c13          	addi	s8,s0,68
    3a40:	01000c93          	li	s9,16
    3a44:	00812583          	lw	a1,8(sp)
    3a48:	00000693          	li	a3,0
    3a4c:	000b0613          	mv	a2,s6
    3a50:	00040513          	mv	a0,s0
    3a54:	fffff097          	auipc	ra,0xfffff
    3a58:	a6c080e7          	jalr	-1428(ra) # 24c0 <fatfs_sector_reader>
    3a5c:	e8050ae3          	beqz	a0,38f0 <fatfs_add_file_entry+0x54>
    3a60:	000c0b93          	mv	s7,s8
    3a64:	00000713          	li	a4,0
    3a68:	00000d13          	li	s10,0
    3a6c:	000d9663          	bnez	s11,3a78 <fatfs_add_file_entry+0x1dc>
    3a70:	11699863          	bne	s3,s6,3b80 <fatfs_add_file_entry+0x2e4>
    3a74:	114d1663          	bne	s10,s4,3b80 <fatfs_add_file_entry+0x2e4>
    3a78:	0e049263          	bnez	s1,3b5c <fatfs_add_file_entry+0x2c0>
    3a7c:	01812703          	lw	a4,24(sp)
    3a80:	01012603          	lw	a2,16(sp)
    3a84:	01412583          	lw	a1,20(sp)
    3a88:	02010693          	addi	a3,sp,32
    3a8c:	000a8513          	mv	a0,s5
    3a90:	ffffe097          	auipc	ra,0xffffe
    3a94:	dbc080e7          	jalr	-580(ra) # 184c <fatfs_sfn_create_entry>
    3a98:	02010593          	addi	a1,sp,32
    3a9c:	02000613          	li	a2,32
    3aa0:	000b8513          	mv	a0,s7
    3aa4:	ffffd097          	auipc	ra,0xffffd
    3aa8:	e68080e7          	jalr	-408(ra) # 90c <memcpy>
    3aac:	03842783          	lw	a5,56(s0)
    3ab0:	24442503          	lw	a0,580(s0)
    3ab4:	00100613          	li	a2,1
    3ab8:	000c0593          	mv	a1,s8
    3abc:	000780e7          	jalr	a5
    3ac0:	e35ff06f          	j	38f4 <fatfs_add_file_entry+0x58>
    3ac4:	f20606e3          	beqz	a2,39f0 <fatfs_add_file_entry+0x154>
    3ac8:	00000b13          	li	s6,0
    3acc:	efdff06f          	j	39c8 <fatfs_add_file_entry+0x12c>
    3ad0:	00842583          	lw	a1,8(s0)
    3ad4:	02010613          	addi	a2,sp,32
    3ad8:	00040513          	mv	a0,s0
    3adc:	fffff097          	auipc	ra,0xfffff
    3ae0:	3d0080e7          	jalr	976(ra) # 2eac <fatfs_find_blank_cluster>
    3ae4:	e00506e3          	beqz	a0,38f0 <fatfs_add_file_entry+0x54>
    3ae8:	02012b83          	lw	s7,32(sp)
    3aec:	00812583          	lw	a1,8(sp)
    3af0:	00040513          	mv	a0,s0
    3af4:	000b8613          	mv	a2,s7
    3af8:	fffff097          	auipc	ra,0xfffff
    3afc:	65c080e7          	jalr	1628(ra) # 3154 <fatfs_fat_add_cluster_to_chain>
    3b00:	de0508e3          	beqz	a0,38f0 <fatfs_add_file_entry+0x54>
    3b04:	20000613          	li	a2,512
    3b08:	00000593          	li	a1,0
    3b0c:	04440513          	addi	a0,s0,68
    3b10:	ffffd097          	auipc	ra,0xffffd
    3b14:	de0080e7          	jalr	-544(ra) # 8f0 <memset>
    3b18:	00000c13          	li	s8,0
    3b1c:	00044783          	lbu	a5,0(s0)
    3b20:	00fc6a63          	bltu	s8,a5,3b34 <fatfs_add_file_entry+0x298>
    3b24:	ee0b12e3          	bnez	s6,3a08 <fatfs_add_file_entry+0x16c>
    3b28:	00090993          	mv	s3,s2
    3b2c:	00000a13          	li	s4,0
    3b30:	ed9ff06f          	j	3a08 <fatfs_add_file_entry+0x16c>
    3b34:	00000693          	li	a3,0
    3b38:	000c0613          	mv	a2,s8
    3b3c:	000b8593          	mv	a1,s7
    3b40:	00040513          	mv	a0,s0
    3b44:	ffffe097          	auipc	ra,0xffffe
    3b48:	88c080e7          	jalr	-1908(ra) # 13d0 <fatfs_write_sector>
    3b4c:	da0502e3          	beqz	a0,38f0 <fatfs_add_file_entry+0x54>
    3b50:	001c0c13          	addi	s8,s8,1
    3b54:	0ffc7c13          	zext.b	s8,s8
    3b58:	fc5ff06f          	j	3b1c <fatfs_add_file_entry+0x280>
    3b5c:	00c12503          	lw	a0,12(sp)
    3b60:	fff48493          	addi	s1,s1,-1
    3b64:	00090693          	mv	a3,s2
    3b68:	00048613          	mv	a2,s1
    3b6c:	000b8593          	mv	a1,s7
    3b70:	ffffe097          	auipc	ra,0xffffe
    3b74:	bb4080e7          	jalr	-1100(ra) # 1724 <fatfs_filename_to_lfn>
    3b78:	00100d93          	li	s11,1
    3b7c:	00100713          	li	a4,1
    3b80:	001d0793          	addi	a5,s10,1
    3b84:	0ff7fd13          	zext.b	s10,a5
    3b88:	020b8b93          	addi	s7,s7,32
    3b8c:	ef9d10e3          	bne	s10,s9,3a6c <fatfs_add_file_entry+0x1d0>
    3b90:	00070e63          	beqz	a4,3bac <fatfs_add_file_entry+0x310>
    3b94:	03842783          	lw	a5,56(s0)
    3b98:	24442503          	lw	a0,580(s0)
    3b9c:	00100613          	li	a2,1
    3ba0:	000c0593          	mv	a1,s8
    3ba4:	000780e7          	jalr	a5
    3ba8:	d40504e3          	beqz	a0,38f0 <fatfs_add_file_entry+0x54>
    3bac:	001b0b13          	addi	s6,s6,1
    3bb0:	e95ff06f          	j	3a44 <fatfs_add_file_entry+0x1a8>

00003bb4 <fl_fopen>:
    3bb4:	000047b7          	lui	a5,0x4
    3bb8:	2a47a783          	lw	a5,676(a5) # 42a4 <_filelib_init>
    3bbc:	fa010113          	addi	sp,sp,-96
    3bc0:	04812c23          	sw	s0,88(sp)
    3bc4:	05412423          	sw	s4,72(sp)
    3bc8:	04112e23          	sw	ra,92(sp)
    3bcc:	04912a23          	sw	s1,84(sp)
    3bd0:	05212823          	sw	s2,80(sp)
    3bd4:	05312623          	sw	s3,76(sp)
    3bd8:	05512223          	sw	s5,68(sp)
    3bdc:	05612023          	sw	s6,64(sp)
    3be0:	03712e23          	sw	s7,60(sp)
    3be4:	03812c23          	sw	s8,56(sp)
    3be8:	03912a23          	sw	s9,52(sp)
    3bec:	00050a13          	mv	s4,a0
    3bf0:	00058413          	mv	s0,a1
    3bf4:	00079663          	bnez	a5,3c00 <fl_fopen+0x4c>
    3bf8:	ffffe097          	auipc	ra,0xffffe
    3bfc:	894080e7          	jalr	-1900(ra) # 148c <fl_init>
    3c00:	000047b7          	lui	a5,0x4
    3c04:	2a07a783          	lw	a5,672(a5) # 42a0 <_filelib_valid>
    3c08:	36078c63          	beqz	a5,3f80 <fl_fopen+0x3cc>
    3c0c:	360a0a63          	beqz	s4,3f80 <fl_fopen+0x3cc>
    3c10:	10040863          	beqz	s0,3d20 <fl_fopen+0x16c>
    3c14:	00040513          	mv	a0,s0
    3c18:	ffffd097          	auipc	ra,0xffffd
    3c1c:	d18080e7          	jalr	-744(ra) # 930 <strlen>
    3c20:	00000493          	li	s1,0
    3c24:	00000713          	li	a4,0
    3c28:	05700693          	li	a3,87
    3c2c:	07200613          	li	a2,114
    3c30:	07700813          	li	a6,119
    3c34:	06100893          	li	a7,97
    3c38:	06200313          	li	t1,98
    3c3c:	04100593          	li	a1,65
    3c40:	04200e13          	li	t3,66
    3c44:	05200e93          	li	t4,82
    3c48:	02b00f13          	li	t5,43
    3c4c:	10a74663          	blt	a4,a0,3d58 <fl_fopen+0x1a4>
    3c50:	00008937          	lui	s2,0x8
    3c54:	2a890793          	addi	a5,s2,680 # 82a8 <_fs>
    3c58:	0387a783          	lw	a5,56(a5)
    3c5c:	2a890b13          	addi	s6,s2,680
    3c60:	00079463          	bnez	a5,3c68 <fl_fopen+0xb4>
    3c64:	0d94f493          	andi	s1,s1,217
    3c68:	03cb2783          	lw	a5,60(s6)
    3c6c:	00078463          	beqz	a5,3c74 <fl_fopen+0xc0>
    3c70:	000780e7          	jalr	a5
    3c74:	0014fc93          	andi	s9,s1,1
    3c78:	160c9863          	bnez	s9,3de8 <fl_fopen+0x234>
    3c7c:	0204f793          	andi	a5,s1,32
    3c80:	08078863          	beqz	a5,3d10 <fl_fopen+0x15c>
    3c84:	038b2783          	lw	a5,56(s6)
    3c88:	06078a63          	beqz	a5,3cfc <fl_fopen+0x148>
    3c8c:	ffffd097          	auipc	ra,0xffffd
    3c90:	608080e7          	jalr	1544(ra) # 1294 <_allocate_file>
    3c94:	00050413          	mv	s0,a0
    3c98:	06050263          	beqz	a0,3cfc <fl_fopen+0x148>
    3c9c:	01450b93          	addi	s7,a0,20
    3ca0:	10400613          	li	a2,260
    3ca4:	00000593          	li	a1,0
    3ca8:	000b8513          	mv	a0,s7
    3cac:	ffffd097          	auipc	ra,0xffffd
    3cb0:	c44080e7          	jalr	-956(ra) # 8f0 <memset>
    3cb4:	11840a93          	addi	s5,s0,280
    3cb8:	10400613          	li	a2,260
    3cbc:	00000593          	li	a1,0
    3cc0:	000a8513          	mv	a0,s5
    3cc4:	ffffd097          	auipc	ra,0xffffd
    3cc8:	c2c080e7          	jalr	-980(ra) # 8f0 <memset>
    3ccc:	10400713          	li	a4,260
    3cd0:	000a8693          	mv	a3,s5
    3cd4:	10400613          	li	a2,260
    3cd8:	000b8593          	mv	a1,s7
    3cdc:	000a0513          	mv	a0,s4
    3ce0:	ffffe097          	auipc	ra,0xffffe
    3ce4:	070080e7          	jalr	112(ra) # 1d50 <fatfs_split_path>
    3ce8:	fff00793          	li	a5,-1
    3cec:	10f51c63          	bne	a0,a5,3e04 <fl_fopen+0x250>
    3cf0:	00040513          	mv	a0,s0
    3cf4:	ffffd097          	auipc	ra,0xffffd
    3cf8:	614080e7          	jalr	1556(ra) # 1308 <_free_file>
    3cfc:	00000413          	li	s0,0
    3d00:	260c9c63          	bnez	s9,3f78 <fl_fopen+0x3c4>
    3d04:	0e041c63          	bnez	s0,3dfc <fl_fopen+0x248>
    3d08:	0064f793          	andi	a5,s1,6
    3d0c:	24079e63          	bnez	a5,3f68 <fl_fopen+0x3b4>
    3d10:	00000413          	li	s0,0
    3d14:	040b2783          	lw	a5,64(s6)
    3d18:	00078463          	beqz	a5,3d20 <fl_fopen+0x16c>
    3d1c:	000780e7          	jalr	a5
    3d20:	05c12083          	lw	ra,92(sp)
    3d24:	00040513          	mv	a0,s0
    3d28:	05812403          	lw	s0,88(sp)
    3d2c:	05412483          	lw	s1,84(sp)
    3d30:	05012903          	lw	s2,80(sp)
    3d34:	04c12983          	lw	s3,76(sp)
    3d38:	04812a03          	lw	s4,72(sp)
    3d3c:	04412a83          	lw	s5,68(sp)
    3d40:	04012b03          	lw	s6,64(sp)
    3d44:	03c12b83          	lw	s7,60(sp)
    3d48:	03812c03          	lw	s8,56(sp)
    3d4c:	03412c83          	lw	s9,52(sp)
    3d50:	06010113          	addi	sp,sp,96
    3d54:	00008067          	ret
    3d58:	00e407b3          	add	a5,s0,a4
    3d5c:	0007c783          	lbu	a5,0(a5)
    3d60:	04d78463          	beq	a5,a3,3da8 <fl_fopen+0x1f4>
    3d64:	02f6e463          	bltu	a3,a5,3d8c <fl_fopen+0x1d8>
    3d68:	04b78463          	beq	a5,a1,3db0 <fl_fopen+0x1fc>
    3d6c:	00f5e863          	bltu	a1,a5,3d7c <fl_fopen+0x1c8>
    3d70:	05e78463          	beq	a5,t5,3db8 <fl_fopen+0x204>
    3d74:	00170713          	addi	a4,a4,1
    3d78:	ed5ff06f          	j	3c4c <fl_fopen+0x98>
    3d7c:	03c78063          	beq	a5,t3,3d9c <fl_fopen+0x1e8>
    3d80:	ffd79ae3          	bne	a5,t4,3d74 <fl_fopen+0x1c0>
    3d84:	0014e493          	ori	s1,s1,1
    3d88:	fedff06f          	j	3d74 <fl_fopen+0x1c0>
    3d8c:	fec78ce3          	beq	a5,a2,3d84 <fl_fopen+0x1d0>
    3d90:	00f66a63          	bltu	a2,a5,3da4 <fl_fopen+0x1f0>
    3d94:	01178e63          	beq	a5,a7,3db0 <fl_fopen+0x1fc>
    3d98:	fc679ee3          	bne	a5,t1,3d74 <fl_fopen+0x1c0>
    3d9c:	0084e493          	ori	s1,s1,8
    3da0:	fd5ff06f          	j	3d74 <fl_fopen+0x1c0>
    3da4:	fd0798e3          	bne	a5,a6,3d74 <fl_fopen+0x1c0>
    3da8:	0324e493          	ori	s1,s1,50
    3dac:	fc9ff06f          	j	3d74 <fl_fopen+0x1c0>
    3db0:	0264e493          	ori	s1,s1,38
    3db4:	fc1ff06f          	j	3d74 <fl_fopen+0x1c0>
    3db8:	0014f793          	andi	a5,s1,1
    3dbc:	00078663          	beqz	a5,3dc8 <fl_fopen+0x214>
    3dc0:	0024e493          	ori	s1,s1,2
    3dc4:	fb1ff06f          	j	3d74 <fl_fopen+0x1c0>
    3dc8:	0024f793          	andi	a5,s1,2
    3dcc:	00078663          	beqz	a5,3dd8 <fl_fopen+0x224>
    3dd0:	0314e493          	ori	s1,s1,49
    3dd4:	fa1ff06f          	j	3d74 <fl_fopen+0x1c0>
    3dd8:	0044f793          	andi	a5,s1,4
    3ddc:	f8078ce3          	beqz	a5,3d74 <fl_fopen+0x1c0>
    3de0:	0274e493          	ori	s1,s1,39
    3de4:	f91ff06f          	j	3d74 <fl_fopen+0x1c0>
    3de8:	000a0513          	mv	a0,s4
    3dec:	fffff097          	auipc	ra,0xfffff
    3df0:	b08080e7          	jalr	-1272(ra) # 28f4 <_open_file>
    3df4:	00050413          	mv	s0,a0
    3df8:	e80502e3          	beqz	a0,3c7c <fl_fopen+0xc8>
    3dfc:	42940c23          	sb	s1,1080(s0)
    3e00:	f15ff06f          	j	3d14 <fl_fopen+0x160>
    3e04:	00040513          	mv	a0,s0
    3e08:	ffffe097          	auipc	ra,0xffffe
    3e0c:	19c080e7          	jalr	412(ra) # 1fa4 <_check_file_open>
    3e10:	00050993          	mv	s3,a0
    3e14:	ec051ee3          	bnez	a0,3cf0 <fl_fopen+0x13c>
    3e18:	01444783          	lbu	a5,20(s0)
    3e1c:	0e079663          	bnez	a5,3f08 <fl_fopen+0x354>
    3e20:	008b2783          	lw	a5,8(s6)
    3e24:	00f42023          	sw	a5,0(s0)
    3e28:	00042583          	lw	a1,0(s0)
    3e2c:	01010693          	addi	a3,sp,16
    3e30:	000a8613          	mv	a2,s5
    3e34:	2a890513          	addi	a0,s2,680
    3e38:	ffffe097          	auipc	ra,0xffffe
    3e3c:	7c8080e7          	jalr	1992(ra) # 2600 <fatfs_get_file_entry>
    3e40:	00100793          	li	a5,1
    3e44:	eaf506e3          	beq	a0,a5,3cf0 <fl_fopen+0x13c>
    3e48:	00042223          	sw	zero,4(s0)
    3e4c:	00100693          	li	a3,1
    3e50:	00440613          	addi	a2,s0,4
    3e54:	00100593          	li	a1,1
    3e58:	2a890513          	addi	a0,s2,680
    3e5c:	00000097          	auipc	ra,0x0
    3e60:	924080e7          	jalr	-1756(ra) # 3780 <fatfs_allocate_free_space>
    3e64:	e80506e3          	beqz	a0,3cf0 <fl_fopen+0x13c>
    3e68:	00002c37          	lui	s8,0x2
    3e6c:	21c40b93          	addi	s7,s0,540
    3e70:	70fc0c13          	addi	s8,s8,1807 # 270f <fatfs_get_file_entry+0x10f>
    3e74:	000a8593          	mv	a1,s5
    3e78:	00410513          	addi	a0,sp,4
    3e7c:	ffffe097          	auipc	ra,0xffffe
    3e80:	a78080e7          	jalr	-1416(ra) # 18f4 <fatfs_lfn_create_sfn>
    3e84:	08098e63          	beqz	s3,3f20 <fl_fopen+0x36c>
    3e88:	00098613          	mv	a2,s3
    3e8c:	00410593          	addi	a1,sp,4
    3e90:	000b8513          	mv	a0,s7
    3e94:	ffffe097          	auipc	ra,0xffffe
    3e98:	bdc080e7          	jalr	-1060(ra) # 1a70 <fatfs_lfn_generate_tail>
    3e9c:	00042583          	lw	a1,0(s0)
    3ea0:	000b8613          	mv	a2,s7
    3ea4:	2a890513          	addi	a0,s2,680
    3ea8:	fffff097          	auipc	ra,0xfffff
    3eac:	bc4080e7          	jalr	-1084(ra) # 2a6c <fatfs_sfn_exists>
    3eb0:	00050663          	beqz	a0,3ebc <fl_fopen+0x308>
    3eb4:	00198993          	addi	s3,s3,1
    3eb8:	fb899ee3          	bne	s3,s8,3e74 <fl_fopen+0x2c0>
    3ebc:	00442703          	lw	a4,4(s0)
    3ec0:	000027b7          	lui	a5,0x2
    3ec4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_get_file_entry+0x10f>
    3ec8:	00070593          	mv	a1,a4
    3ecc:	02f98663          	beq	s3,a5,3ef8 <fl_fopen+0x344>
    3ed0:	00042583          	lw	a1,0(s0)
    3ed4:	00000813          	li	a6,0
    3ed8:	00000793          	li	a5,0
    3edc:	000b8693          	mv	a3,s7
    3ee0:	000a8613          	mv	a2,s5
    3ee4:	2a890513          	addi	a0,s2,680
    3ee8:	00000097          	auipc	ra,0x0
    3eec:	9b4080e7          	jalr	-1612(ra) # 389c <fatfs_add_file_entry>
    3ef0:	04051463          	bnez	a0,3f38 <fl_fopen+0x384>
    3ef4:	00442583          	lw	a1,4(s0)
    3ef8:	2a890513          	addi	a0,s2,680
    3efc:	fffff097          	auipc	ra,0xfffff
    3f00:	1e8080e7          	jalr	488(ra) # 30e4 <fatfs_free_cluster_chain>
    3f04:	dedff06f          	j	3cf0 <fl_fopen+0x13c>
    3f08:	00040593          	mv	a1,s0
    3f0c:	000b8513          	mv	a0,s7
    3f10:	fffff097          	auipc	ra,0xfffff
    3f14:	8fc080e7          	jalr	-1796(ra) # 280c <_open_directory>
    3f18:	f00518e3          	bnez	a0,3e28 <fl_fopen+0x274>
    3f1c:	dd5ff06f          	j	3cf0 <fl_fopen+0x13c>
    3f20:	00b00613          	li	a2,11
    3f24:	00410593          	addi	a1,sp,4
    3f28:	000b8513          	mv	a0,s7
    3f2c:	ffffd097          	auipc	ra,0xffffd
    3f30:	9e0080e7          	jalr	-1568(ra) # 90c <memcpy>
    3f34:	f69ff06f          	j	3e9c <fl_fopen+0x2e8>
    3f38:	fff00793          	li	a5,-1
    3f3c:	00042623          	sw	zero,12(s0)
    3f40:	00042423          	sw	zero,8(s0)
    3f44:	42f42823          	sw	a5,1072(s0)
    3f48:	42042a23          	sw	zero,1076(s0)
    3f4c:	00042823          	sw	zero,16(s0)
    3f50:	22f42423          	sw	a5,552(s0)
    3f54:	22f42623          	sw	a5,556(s0)
    3f58:	2a890513          	addi	a0,s2,680
    3f5c:	ffffe097          	auipc	ra,0xffffe
    3f60:	3f8080e7          	jalr	1016(ra) # 2354 <fatfs_fat_purge>
    3f64:	d9dff06f          	j	3d00 <fl_fopen+0x14c>
    3f68:	000a0513          	mv	a0,s4
    3f6c:	fffff097          	auipc	ra,0xfffff
    3f70:	988080e7          	jalr	-1656(ra) # 28f4 <_open_file>
    3f74:	00050413          	mv	s0,a0
    3f78:	e80412e3          	bnez	s0,3dfc <fl_fopen+0x248>
    3f7c:	d95ff06f          	j	3d10 <fl_fopen+0x15c>
    3f80:	00000413          	li	s0,0
    3f84:	d9dff06f          	j	3d20 <fl_fopen+0x16c>

00003f88 <cmd16>:
    3f88:	02000050 00001500                       P.......

00003f90 <acmd41>:
    3f90:	00004069 00000100                       i@......

00003f98 <cmd55>:
    3f98:	00000077 00000100                       w.......

00003fa0 <cmd8>:
    3fa0:	01000048 000087aa                       H.......

00003fa8 <cmd0>:
    3fa8:	00000040 00009500                       @.......

00003fb0 <AUDIO>:
    3fb0:	00018000                                ....

00003fb4 <SDCARD>:
    3fb4:	00010080                                ....

00003fb8 <OLED_RST>:
    3fb8:	00010010                                ....

00003fbc <OLED>:
    3fbc:	00010008                                ....

00003fc0 <LEDS>:
    3fc0:	00010004 74696e69 2e2e2e20 00000020     ....init ... ...
    3fd0:	656e6f64 00000a2e 00006272 73756d2f     done....rb../mus
    3fe0:	722e6369 00007761 656c6966 746f6e20     ic.raw..file not
    3ff0:	756f6620 0a2e646e 00000000 6973756d      found......musi
    4000:	69662063 6620656c 646e756f 00000a2e     c file found....
    4010:	79616c70 20676e69 202e2e2e 00000000     playing ... ....
    4020:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    4030:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    4040:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    4050:	54414620 74656420 736c6961 64252820      FAT details (%d
    4060:	0a0d2129 00000000                       )!......

00004068 <font>:
    4068:	00000000 00002f00 00030000 14000003     ...../..........
    4078:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4088:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4098:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    40a8:	00080800 00200000 20000000 02040810     ...... .... ....
    40b8:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    40c8:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    40d8:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    40e8:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    40f8:	00141400 0a110000 01000004 0007052d     ............-...
    4108:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4118:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4128:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4138:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4148:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4158:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4168:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4178:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4188:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4198:	003f2102 01020000 20000201 00000020     .!?........  ...
    41a8:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    41b8:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    41c8:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    41d8:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    41e8:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    41f8:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4208:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4218:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    4228:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    4238:	043f2100 02010000 00000102 00000000     .!?.............
    4248:	00000001 00000003 00000005 00000007     ................
    4258:	00000009 0000000e 00000010 00000012     ................
    4268:	00000014 00000016 00000018 0000001c     ................
    4278:	0000001e                                ....

0000427c <sdcard_while_loading_callback>:
    427c:	00000000                                ....

00004280 <back_color>:
	...

00004281 <front_color>:
    4281:	                                         ...

00004284 <cursor_y>:
    4284:	00000000                                ....

00004288 <cursor_x>:
    4288:	00000000                                ....

0000428c <f_putchar>:
    428c:	00000000                                ....

00004290 <_free_file_list>:
	...

00004298 <_open_file_list>:
	...

000042a0 <_filelib_valid>:
    42a0:	00000000                                ....

000042a4 <_filelib_init>:
    42a4:	00000000                                ....
