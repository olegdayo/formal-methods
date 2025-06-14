#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(22*sizeof(Trans **));

	/* proctype 20: f6 */

	trans[20] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[20][6]	= settr(303,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[20][5] = settr(302,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(302,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(302,0,3,0,0,"DO", 0, 2, 0);
	trans[20][1]	= settr(298,0,10,3,0,"(!(!(statuses[5])))", 1, 2, 0);
	trans[20][2]	= settr(299,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[20][3]	= settr(300,0,5,1,0,"(1)", 0, 2, 0);
	trans[20][4]	= settr(301,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[20][7]	= settr(304,0,10,1,0,"break", 0, 2, 0);
	trans[20][11]	= settr(308,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[20][10] = settr(307,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(307,0,8,0,0,"DO", 0, 2, 0);
	trans[20][8]	= settr(305,0,10,4,0,"(!(!(statuses[5])))", 1, 2, 0);
	trans[20][9]	= settr(306,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[20][12]	= settr(309,0,13,1,0,"break", 0, 2, 0);
	trans[20][13]	= settr(310,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 19: f5 */

	trans[19] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[19][6]	= settr(290,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[19][5] = settr(289,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(289,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(289,0,3,0,0,"DO", 0, 2, 0);
	trans[19][1]	= settr(285,0,10,6,0,"(!(!(statuses[4])))", 1, 2, 0);
	trans[19][2]	= settr(286,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[19][3]	= settr(287,0,5,1,0,"(1)", 0, 2, 0);
	trans[19][4]	= settr(288,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[19][7]	= settr(291,0,10,1,0,"break", 0, 2, 0);
	trans[19][11]	= settr(295,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[19][10] = settr(294,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(294,0,8,0,0,"DO", 0, 2, 0);
	trans[19][8]	= settr(292,0,10,7,0,"(!(!(statuses[4])))", 1, 2, 0);
	trans[19][9]	= settr(293,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[19][12]	= settr(296,0,13,1,0,"break", 0, 2, 0);
	trans[19][13]	= settr(297,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 18: f4 */

	trans[18] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[18][6]	= settr(277,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[18][5] = settr(276,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(276,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(276,0,3,0,0,"DO", 0, 2, 0);
	trans[18][1]	= settr(272,0,10,9,0,"(!(!(statuses[3])))", 1, 2, 0);
	trans[18][2]	= settr(273,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[18][3]	= settr(274,0,5,1,0,"(1)", 0, 2, 0);
	trans[18][4]	= settr(275,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[18][7]	= settr(278,0,10,1,0,"break", 0, 2, 0);
	trans[18][11]	= settr(282,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[18][10] = settr(281,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(281,0,8,0,0,"DO", 0, 2, 0);
	trans[18][8]	= settr(279,0,10,10,0,"(!(!(statuses[3])))", 1, 2, 0);
	trans[18][9]	= settr(280,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[18][12]	= settr(283,0,13,1,0,"break", 0, 2, 0);
	trans[18][13]	= settr(284,0,0,11,11,"-end-", 0, 3500, 0);

	/* proctype 17: f3 */

	trans[17] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[17][6]	= settr(264,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[17][5] = settr(263,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(263,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(263,0,3,0,0,"DO", 0, 2, 0);
	trans[17][1]	= settr(259,0,10,12,0,"(!(!(statuses[2])))", 1, 2, 0);
	trans[17][2]	= settr(260,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[17][3]	= settr(261,0,5,1,0,"(1)", 0, 2, 0);
	trans[17][4]	= settr(262,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[17][7]	= settr(265,0,10,1,0,"break", 0, 2, 0);
	trans[17][11]	= settr(269,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[17][10] = settr(268,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(268,0,8,0,0,"DO", 0, 2, 0);
	trans[17][8]	= settr(266,0,10,13,0,"(!(!(statuses[2])))", 1, 2, 0);
	trans[17][9]	= settr(267,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[17][12]	= settr(270,0,13,1,0,"break", 0, 2, 0);
	trans[17][13]	= settr(271,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 16: f2 */

	trans[16] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[16][6]	= settr(251,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[16][5] = settr(250,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(250,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(250,0,3,0,0,"DO", 0, 2, 0);
	trans[16][1]	= settr(246,0,10,15,0,"(!(!(statuses[1])))", 1, 2, 0);
	trans[16][2]	= settr(247,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[16][3]	= settr(248,0,5,1,0,"(1)", 0, 2, 0);
	trans[16][4]	= settr(249,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[16][7]	= settr(252,0,10,1,0,"break", 0, 2, 0);
	trans[16][11]	= settr(256,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[16][10] = settr(255,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(255,0,8,0,0,"DO", 0, 2, 0);
	trans[16][8]	= settr(253,0,10,16,0,"(!(!(statuses[1])))", 1, 2, 0);
	trans[16][9]	= settr(254,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[16][12]	= settr(257,0,13,1,0,"break", 0, 2, 0);
	trans[16][13]	= settr(258,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 15: f1 */

	trans[15] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[15][6]	= settr(238,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[15][5] = settr(237,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(237,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(237,0,3,0,0,"DO", 0, 2, 0);
	trans[15][1]	= settr(233,0,10,18,0,"(!(!(statuses[0])))", 1, 2, 0);
	trans[15][2]	= settr(234,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[15][3]	= settr(235,0,5,1,0,"(1)", 0, 2, 0);
	trans[15][4]	= settr(236,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[15][7]	= settr(239,0,10,1,0,"break", 0, 2, 0);
	trans[15][11]	= settr(243,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[15][10] = settr(242,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(242,0,8,0,0,"DO", 0, 2, 0);
	trans[15][8]	= settr(240,0,10,19,0,"(!(!(statuses[0])))", 1, 2, 0);
	trans[15][9]	= settr(241,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[15][12]	= settr(244,0,13,1,0,"break", 0, 2, 0);
	trans[15][13]	= settr(245,0,0,20,20,"-end-", 0, 3500, 0);

	/* proctype 14: l6 */

	trans[14] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[14][6]	= settr(225,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[14][5] = settr(224,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(224,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(224,0,3,0,0,"DO", 0, 2, 0);
	trans[14][1]	= settr(220,0,10,21,0,"((!(!(((queue[5]==1)&&!(statuses[5]))))&&!(statuses[5])))", 1, 2, 0);
	trans[14][2]	= settr(221,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[14][3]	= settr(222,0,5,1,0,"(1)", 0, 2, 0);
	trans[14][4]	= settr(223,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[14][7]	= settr(226,0,10,1,0,"break", 0, 2, 0);
	trans[14][11]	= settr(230,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[14][10] = settr(229,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(229,0,8,0,0,"DO", 0, 2, 0);
	trans[14][8]	= settr(227,0,10,22,0,"(!(statuses[5]))", 1, 2, 0);
	trans[14][9]	= settr(228,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[14][12]	= settr(231,0,13,1,0,"break", 0, 2, 0);
	trans[14][13]	= settr(232,0,0,23,23,"-end-", 0, 3500, 0);

	/* proctype 13: l5 */

	trans[13] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[13][6]	= settr(212,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[13][5] = settr(211,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(211,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(211,0,3,0,0,"DO", 0, 2, 0);
	trans[13][1]	= settr(207,0,10,24,0,"((!(!(((queue[4]==1)&&!(statuses[4]))))&&!(statuses[4])))", 1, 2, 0);
	trans[13][2]	= settr(208,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[13][3]	= settr(209,0,5,1,0,"(1)", 0, 2, 0);
	trans[13][4]	= settr(210,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[13][7]	= settr(213,0,10,1,0,"break", 0, 2, 0);
	trans[13][11]	= settr(217,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[13][10] = settr(216,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(216,0,8,0,0,"DO", 0, 2, 0);
	trans[13][8]	= settr(214,0,10,25,0,"(!(statuses[4]))", 1, 2, 0);
	trans[13][9]	= settr(215,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[13][12]	= settr(218,0,13,1,0,"break", 0, 2, 0);
	trans[13][13]	= settr(219,0,0,26,26,"-end-", 0, 3500, 0);

	/* proctype 12: l4 */

	trans[12] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[12][6]	= settr(199,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[12][5] = settr(198,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(198,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(198,0,3,0,0,"DO", 0, 2, 0);
	trans[12][1]	= settr(194,0,10,27,0,"((!(!(((queue[3]==1)&&!(statuses[3]))))&&!(statuses[3])))", 1, 2, 0);
	trans[12][2]	= settr(195,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[12][3]	= settr(196,0,5,1,0,"(1)", 0, 2, 0);
	trans[12][4]	= settr(197,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[12][7]	= settr(200,0,10,1,0,"break", 0, 2, 0);
	trans[12][11]	= settr(204,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[12][10] = settr(203,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(203,0,8,0,0,"DO", 0, 2, 0);
	trans[12][8]	= settr(201,0,10,28,0,"(!(statuses[3]))", 1, 2, 0);
	trans[12][9]	= settr(202,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[12][12]	= settr(205,0,13,1,0,"break", 0, 2, 0);
	trans[12][13]	= settr(206,0,0,29,29,"-end-", 0, 3500, 0);

	/* proctype 11: l3 */

	trans[11] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[11][6]	= settr(186,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[11][5] = settr(185,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(185,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(185,0,3,0,0,"DO", 0, 2, 0);
	trans[11][1]	= settr(181,0,10,30,0,"((!(!(((queue[2]==1)&&!(statuses[2]))))&&!(statuses[2])))", 1, 2, 0);
	trans[11][2]	= settr(182,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[11][3]	= settr(183,0,5,1,0,"(1)", 0, 2, 0);
	trans[11][4]	= settr(184,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[11][7]	= settr(187,0,10,1,0,"break", 0, 2, 0);
	trans[11][11]	= settr(191,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[11][10] = settr(190,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(190,0,8,0,0,"DO", 0, 2, 0);
	trans[11][8]	= settr(188,0,10,31,0,"(!(statuses[2]))", 1, 2, 0);
	trans[11][9]	= settr(189,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[11][12]	= settr(192,0,13,1,0,"break", 0, 2, 0);
	trans[11][13]	= settr(193,0,0,32,32,"-end-", 0, 3500, 0);

	/* proctype 10: l2 */

	trans[10] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[10][6]	= settr(173,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[10][5] = settr(172,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(172,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(172,0,3,0,0,"DO", 0, 2, 0);
	trans[10][1]	= settr(168,0,10,33,0,"((!(!(((queue[1]==1)&&!(statuses[1]))))&&!(statuses[1])))", 1, 2, 0);
	trans[10][2]	= settr(169,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[10][3]	= settr(170,0,5,1,0,"(1)", 0, 2, 0);
	trans[10][4]	= settr(171,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[10][7]	= settr(174,0,10,1,0,"break", 0, 2, 0);
	trans[10][11]	= settr(178,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[10][10] = settr(177,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(177,0,8,0,0,"DO", 0, 2, 0);
	trans[10][8]	= settr(175,0,10,34,0,"(!(statuses[1]))", 1, 2, 0);
	trans[10][9]	= settr(176,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[10][12]	= settr(179,0,13,1,0,"break", 0, 2, 0);
	trans[10][13]	= settr(180,0,0,35,35,"-end-", 0, 3500, 0);

	/* proctype 9: l1 */

	trans[9] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[9][6]	= settr(160,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[9][5] = settr(159,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(159,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(159,0,3,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(155,0,10,36,0,"((!(!(((queue[0]==1)&&!(statuses[0]))))&&!(statuses[0])))", 1, 2, 0);
	trans[9][2]	= settr(156,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[9][3]	= settr(157,0,5,1,0,"(1)", 0, 2, 0);
	trans[9][4]	= settr(158,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[9][7]	= settr(161,0,10,1,0,"break", 0, 2, 0);
	trans[9][11]	= settr(165,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[9][10] = settr(164,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(164,0,8,0,0,"DO", 0, 2, 0);
	trans[9][8]	= settr(162,0,10,37,0,"(!(statuses[0]))", 1, 2, 0);
	trans[9][9]	= settr(163,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[9][12]	= settr(166,0,13,1,0,"break", 0, 2, 0);
	trans[9][13]	= settr(167,0,0,38,38,"-end-", 0, 3500, 0);

	/* proctype 8: s6 */

	trans[8] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[8][7]	= settr(151,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[8][6] = settr(150,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(150,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(150,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 8][3] = settr(147,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(147,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[8][1]	= settr(145,0,6,39,39,"(!(!((statuses[5]&&((statuses[2]||statuses[3])||statuses[4])))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached8[2] = 1;
	trans[8][2]	= settr(0,0,0,0,0,"assert(!(!(!((statuses[5]&&((statuses[2]||statuses[3])||statuses[4]))))))",0,0,0);
	trans[8][4]	= settr(148,0,6,1,0,"(1)", 0, 2, 0);
	trans[8][5]	= settr(149,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[8][8]	= settr(152,0,9,1,0,"break", 0, 2, 0);
	trans[8][9]	= settr(153,0,10,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(154,0,0,40,40,"-end-", 0, 3500, 0);

	/* proctype 7: s5 */

	trans[7] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[7][7]	= settr(141,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[7][6] = settr(140,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(140,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(140,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 7][3] = settr(137,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(137,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[7][1]	= settr(135,0,6,41,41,"(!(!((statuses[4]&&((((statuses[2]||statuses[1])||statuses[3])||statuses[0])||statuses[5])))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached7[2] = 1;
	trans[7][2]	= settr(0,0,0,0,0,"assert(!(!(!((statuses[4]&&((((statuses[2]||statuses[1])||statuses[3])||statuses[0])||statuses[5]))))))",0,0,0);
	trans[7][4]	= settr(138,0,6,1,0,"(1)", 0, 2, 0);
	trans[7][5]	= settr(139,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[7][8]	= settr(142,0,9,1,0,"break", 0, 2, 0);
	trans[7][9]	= settr(143,0,10,1,0,"(1)", 0, 2, 0);
	trans[7][10]	= settr(144,0,0,42,42,"-end-", 0, 3500, 0);

	/* proctype 6: s4 */

	trans[6] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[6][7]	= settr(131,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[6][6] = settr(130,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(130,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(130,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 6][3] = settr(127,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(127,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[6][1]	= settr(125,0,6,43,43,"(!(!((statuses[3]&&((statuses[5]||statuses[0])||statuses[4])))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached6[2] = 1;
	trans[6][2]	= settr(0,0,0,0,0,"assert(!(!(!((statuses[3]&&((statuses[5]||statuses[0])||statuses[4]))))))",0,0,0);
	trans[6][4]	= settr(128,0,6,1,0,"(1)", 0, 2, 0);
	trans[6][5]	= settr(129,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[6][8]	= settr(132,0,9,1,0,"break", 0, 2, 0);
	trans[6][9]	= settr(133,0,10,1,0,"(1)", 0, 2, 0);
	trans[6][10]	= settr(134,0,0,44,44,"-end-", 0, 3500, 0);

	/* proctype 5: s3 */

	trans[5] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[5][7]	= settr(121,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[5][6] = settr(120,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(120,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(120,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 5][3] = settr(117,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(117,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[5][1]	= settr(115,0,6,45,45,"(!(!((statuses[2]&&(((statuses[0]||statuses[1])||statuses[4])||statuses[5])))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached5[2] = 1;
	trans[5][2]	= settr(0,0,0,0,0,"assert(!(!(!((statuses[2]&&(((statuses[0]||statuses[1])||statuses[4])||statuses[5]))))))",0,0,0);
	trans[5][4]	= settr(118,0,6,1,0,"(1)", 0, 2, 0);
	trans[5][5]	= settr(119,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[5][8]	= settr(122,0,9,1,0,"break", 0, 2, 0);
	trans[5][9]	= settr(123,0,10,1,0,"(1)", 0, 2, 0);
	trans[5][10]	= settr(124,0,0,46,46,"-end-", 0, 3500, 0);

	/* proctype 4: s2 */

	trans[4] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[4][7]	= settr(111,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[4][6] = settr(110,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(110,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(110,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 4][3] = settr(107,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(107,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[4][1]	= settr(105,0,6,47,47,"(!(!((statuses[1]&&(statuses[2]||statuses[4])))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached4[2] = 1;
	trans[4][2]	= settr(0,0,0,0,0,"assert(!(!(!((statuses[1]&&(statuses[2]||statuses[4]))))))",0,0,0);
	trans[4][4]	= settr(108,0,6,1,0,"(1)", 0, 2, 0);
	trans[4][5]	= settr(109,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[4][8]	= settr(112,0,9,1,0,"break", 0, 2, 0);
	trans[4][9]	= settr(113,0,10,1,0,"(1)", 0, 2, 0);
	trans[4][10]	= settr(114,0,0,48,48,"-end-", 0, 3500, 0);

	/* proctype 3: s1 */

	trans[3] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[3][7]	= settr(101,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[3][6] = settr(100,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(100,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(100,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 3][3] = settr(97,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(97,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(95,0,6,49,49,"(!(!((statuses[0]&&((statuses[2]||statuses[3])||statuses[4])))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"assert(!(!(!((statuses[0]&&((statuses[2]||statuses[3])||statuses[4]))))))",0,0,0);
	trans[3][4]	= settr(98,0,6,1,0,"(1)", 0, 2, 0);
	trans[3][5]	= settr(99,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[3][8]	= settr(102,0,9,1,0,"break", 0, 2, 0);
	trans[3][9]	= settr(103,0,10,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(104,0,0,50,50,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(9*sizeof(Trans *));

	trans[2][1]	= settr(87,0,2,51,51,"(run TrafficLight(1,2,3,4,5,0,0,SN_light))", 0, 2, 0);
	trans[2][2]	= settr(88,0,3,52,52,"(run TrafficLight(2,3,3,5,0,0,0,WN_light))", 0, 2, 0);
	trans[2][3]	= settr(89,0,4,53,53,"(run TrafficLight(3,4,1,2,5,6,0,EW_light))", 0, 2, 0);
	trans[2][4]	= settr(90,0,5,54,54,"(run TrafficLight(4,5,6,1,5,0,0,ES_light))", 0, 2, 0);
	trans[2][5]	= settr(91,0,6,55,55,"(run TrafficLight(5,6,3,2,4,1,6,NE_light))", 0, 2, 0);
	trans[2][6]	= settr(92,0,7,56,56,"(run TrafficLight(6,1,3,4,5,0,0,P_light))", 0, 2, 0);
	trans[2][7]	= settr(93,0,8,57,57,"(run TrafficGenerator())", 0, 2, 0);
	trans[2][8]	= settr(94,0,0,58,58,"-end-", 0, 3500, 0);

	/* proctype 1: TrafficGenerator */

	trans[1] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[1][8]	= settr(84,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[1][7] = settr(83,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(83,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(83,0,2,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(83,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(83,0,4,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(83,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(83,0,6,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(77,0,7,59,59,"SN_light!1", 1, 3, 0);
	trans[1][2]	= settr(78,0,7,60,60,"WN_light!1", 1, 4, 0);
	trans[1][3]	= settr(79,0,7,61,61,"EW_light!1", 1, 5, 0);
	trans[1][4]	= settr(80,0,7,62,62,"ES_light!1", 1, 6, 0);
	trans[1][5]	= settr(81,0,7,63,63,"NE_light!1", 1, 7, 0);
	trans[1][6]	= settr(82,0,7,64,64,"P_light!1", 1, 8, 0);
	trans[1][9]	= settr(85,0,10,1,0,"break", 0, 2, 0);
	trans[1][10]	= settr(86,0,0,65,65,"-end-", 0, 3500, 0);

	/* proctype 0: TrafficLight */

	trans[0] = (Trans **) emalloc(78*sizeof(Trans *));

	trans[0][75]	= settr(74,0,74,1,0,".(goto)", 0, 2, 0);
	T = trans[0][74] = settr(73,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(73,0,1,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,72,66,0,"((currentTurn==curr))", 1, 2, 0);
	T = trans[0][72] = settr(71,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(71,0,2,0,0,"IF", 0, 2, 0);
	trans[0][2]	= settr(1,0,3,67,67,"traffic?tmp", 1, 509, 0);
	trans[0][3]	= settr(2,0,4,68,68,"requests[0] = 0", 1, 2, 0);
	trans[0][4]	= settr(3,0,10,69,69,"queue[(curr-1)] = tmp", 1, 2, 0);
	T = trans[0][10] = settr(9,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(9,0,5,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(9,0,8,0,0,"IF", 0, 2, 0);
	trans[0][5]	= settr(4,0,6,70,0,"((statuses[(curr-1)]==1))", 1, 2, 0);
	trans[0][6]	= settr(5,0,7,71,71,"requests[curr] = 0", 1, 2, 0);
	trans[0][7]	= settr(6,0,70,72,72,"statuses[(curr-1)] = 0", 1, 2, 0);
	trans[0][11]	= settr(10,0,70,1,0,".(goto)", 0, 2, 0);
	trans[0][8]	= settr(7,0,9,2,0,"else", 0, 2, 0);
	trans[0][9]	= settr(8,0,70,1,0,"(1)", 0, 2, 0);
	T = trans[0][70] = settr(69,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(69,0,12,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(69,0,67,0,0,"IF", 0, 2, 0);
	trans[0][12]	= settr(11,0,65,73,0,"((requests[curr]>0))", 1, 2, 0);
	T = trans[0][65] = settr(64,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(64,0,13,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(64,0,17,0,0,"IF", 0, 2, 0);
	trans[0][13]	= settr(12,0,14,74,0,"((((((requests[first]==0)&&(requests[second]==0))&&(requests[third]==0))&&(requests[forth]==0))&&(requests[fifth]==0)))", 1, 2, 0);
	trans[0][14]	= settr(13,0,15,75,75,"statuses[(curr-1)] = 1", 1, 2, 0);
	trans[0][15]	= settr(14,0,16,76,76,"queue[(curr-1)] = 0", 1, 2, 0);
	trans[0][16]	= settr(15,0,74,77,77,"currentTurn = next", 1, 2, 0);
	trans[0][66]	= settr(65,0,74,1,0,".(goto)", 0, 2, 0);
	trans[0][17]	= settr(16,0,22,2,0,"else", 0, 2, 0);
	T = trans[0][22] = settr(21,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(21,0,18,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(21,0,20,0,0,"IF", 0, 2, 0);
	trans[0][18]	= settr(17,0,19,78,0,"((requests[first]>0))", 1, 2, 0);
	trans[0][19]	= settr(18,0,28,79,79,"firsthirdValue = requests[first]", 1, 2, 0);
	trans[0][23]	= settr(22,0,28,1,0,".(goto)", 0, 2, 0);
	trans[0][20]	= settr(19,0,21,2,0,"else", 0, 2, 0);
	trans[0][21]	= settr(20,0,28,80,80,"firsthirdValue = 0", 0, 2, 0);
	T = trans[0][28] = settr(27,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(27,0,24,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(27,0,26,0,0,"IF", 0, 2, 0);
	trans[0][24]	= settr(23,0,25,81,0,"((requests[second]>0))", 1, 2, 0);
	trans[0][25]	= settr(24,0,34,82,82,"secondValue = requests[second]", 1, 2, 0);
	trans[0][29]	= settr(28,0,34,1,0,".(goto)", 0, 2, 0);
	trans[0][26]	= settr(25,0,27,2,0,"else", 0, 2, 0);
	trans[0][27]	= settr(26,0,34,83,83,"secondValue = 0", 0, 2, 0);
	T = trans[0][34] = settr(33,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(33,0,30,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(33,0,32,0,0,"IF", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,84,0,"((requests[third]>0))", 1, 2, 0);
	trans[0][31]	= settr(30,0,40,85,85,"thirdValue = requests[third]", 1, 2, 0);
	trans[0][35]	= settr(34,0,40,1,0,".(goto)", 0, 2, 0);
	trans[0][32]	= settr(31,0,33,2,0,"else", 0, 2, 0);
	trans[0][33]	= settr(32,0,40,86,86,"thirdValue = 0", 0, 2, 0);
	T = trans[0][40] = settr(39,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(39,0,36,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(39,0,38,0,0,"IF", 0, 2, 0);
	trans[0][36]	= settr(35,0,37,87,0,"((requests[forth]>0))", 1, 2, 0);
	trans[0][37]	= settr(36,0,46,88,88,"forthValue = requests[forth]", 1, 2, 0);
	trans[0][41]	= settr(40,0,46,1,0,".(goto)", 0, 2, 0);
	trans[0][38]	= settr(37,0,39,2,0,"else", 0, 2, 0);
	trans[0][39]	= settr(38,0,46,89,89,"forthValue = 0", 0, 2, 0);
	T = trans[0][46] = settr(45,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(45,0,42,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(45,0,44,0,0,"IF", 0, 2, 0);
	trans[0][42]	= settr(41,0,43,90,0,"((requests[fifth]>0))", 1, 2, 0);
	trans[0][43]	= settr(42,0,48,91,91,"fifthValue = requests[fifth]", 1, 2, 0);
	trans[0][47]	= settr(46,0,48,1,0,".(goto)", 0, 2, 0);
	trans[0][44]	= settr(43,0,45,2,0,"else", 0, 2, 0);
	trans[0][45]	= settr(44,0,48,92,92,"fifthValue = 0", 0, 2, 0);
	trans[0][48]	= settr(47,0,61,93,93,"nValue = requests[curr]", 1, 2, 0);
	T = trans[0][61] = settr(60,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,49,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(60,0,57,0,0,"IF", 0, 2, 0);
	trans[0][49]	= settr(48,0,50,94,0,"((((firsthirdValue>nValue)||(secondValue>nValue))||(thirdValue>nValue)))", 0, 2, 0);
	trans[0][50]	= settr(49,0,51,95,95,"requests[curr] = (nValue+n)", 1, 2, 0);
	trans[0][51]	= settr(50,0,52,96,96,"requests[first] = (firsthirdValue+n)", 1, 2, 0);
	trans[0][52]	= settr(51,0,53,97,97,"requests[second] = (secondValue+n)", 1, 2, 0);
	trans[0][53]	= settr(52,0,54,98,98,"requests[third] = (thirdValue+n)", 1, 2, 0);
	trans[0][54]	= settr(53,0,55,99,99,"requests[forth] = (forthValue+n)", 1, 2, 0);
	trans[0][55]	= settr(54,0,56,100,100,"requests[fifth] = (fifthValue+n)", 1, 2, 0);
	trans[0][56]	= settr(55,0,63,1,0,"(1)", 0, 2, 0);
	trans[0][62]	= settr(61,0,63,1,0,".(goto)", 0, 2, 0);
	trans[0][57]	= settr(56,0,58,2,0,"else", 0, 2, 0);
	trans[0][58]	= settr(57,0,59,101,101,"statuses[(curr-1)] = 1", 1, 2, 0);
	trans[0][59]	= settr(58,0,60,102,102,"queue[(curr-1)] = 0", 1, 2, 0);
	trans[0][60]	= settr(59,0,63,103,103,"requests[curr] = (999+curr)", 1, 2, 0);
	trans[0][63]	= settr(62,0,64,104,104,"currentTurn = next", 1, 2, 0);
	trans[0][64]	= settr(63,0,74,105,105,"requests[0] = 0", 1, 2, 0);
	trans[0][71]	= settr(70,0,74,1,0,".(goto)", 0, 2, 0);
	trans[0][67]	= settr(66,0,68,2,0,"else", 0, 2, 0);
	trans[0][68]	= settr(67,0,69,106,106,"requests[curr] = curr", 1, 2, 0);
	trans[0][69]	= settr(68,0,74,107,107,"currentTurn = next", 1, 2, 0);
	trans[0][73]	= settr(72,0,74,1,0,".(goto)", 0, 2, 0);
	trans[0][76]	= settr(75,0,77,1,0,"break", 0, 2, 0);
	trans[0][77]	= settr(76,0,0,108,108,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
