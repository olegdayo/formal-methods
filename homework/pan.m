#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM f6 */
	case 3: // STATE 1 - _spin_nvr.tmp:178 - [(!(!(statuses[5])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][1] = 1;
		if (!( !( !(((int)now.statuses[5])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:183 - [(!(!(statuses[5])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][8] = 1;
		if (!( !( !(((int)now.statuses[5])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:185 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f5 */
	case 6: // STATE 1 - _spin_nvr.tmp:167 - [(!(!(statuses[4])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][1] = 1;
		if (!( !( !(((int)now.statuses[4])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:172 - [(!(!(statuses[4])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][8] = 1;
		if (!( !( !(((int)now.statuses[4])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:174 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f4 */
	case 9: // STATE 1 - _spin_nvr.tmp:156 - [(!(!(statuses[3])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][1] = 1;
		if (!( !( !(((int)now.statuses[3])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:161 - [(!(!(statuses[3])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][8] = 1;
		if (!( !( !(((int)now.statuses[3])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:163 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f3 */
	case 12: // STATE 1 - _spin_nvr.tmp:145 - [(!(!(statuses[2])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][1] = 1;
		if (!( !( !(((int)now.statuses[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:150 - [(!(!(statuses[2])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][8] = 1;
		if (!( !( !(((int)now.statuses[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:152 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f2 */
	case 15: // STATE 1 - _spin_nvr.tmp:134 - [(!(!(statuses[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][1] = 1;
		if (!( !( !(((int)now.statuses[1])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:139 - [(!(!(statuses[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][8] = 1;
		if (!( !( !(((int)now.statuses[1])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:141 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f1 */
	case 18: // STATE 1 - _spin_nvr.tmp:123 - [(!(!(statuses[0])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!( !( !(((int)now.statuses[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - _spin_nvr.tmp:128 - [(!(!(statuses[0])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][8] = 1;
		if (!( !( !(((int)now.statuses[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - _spin_nvr.tmp:130 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l6 */
	case 21: // STATE 1 - _spin_nvr.tmp:112 - [((!(!(((queue[5]==1)&&!(statuses[5]))))&&!(statuses[5])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!(( !( !(((((int)now.queue[5])==1)&& !(((int)now.statuses[5])))))&& !(((int)now.statuses[5])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:117 - [(!(statuses[5]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][8] = 1;
		if (!( !(((int)now.statuses[5]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:119 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l5 */
	case 24: // STATE 1 - _spin_nvr.tmp:101 - [((!(!(((queue[4]==1)&&!(statuses[4]))))&&!(statuses[4])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!(( !( !(((((int)now.queue[4])==1)&& !(((int)now.statuses[4])))))&& !(((int)now.statuses[4])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - _spin_nvr.tmp:106 - [(!(statuses[4]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][8] = 1;
		if (!( !(((int)now.statuses[4]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:108 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l4 */
	case 27: // STATE 1 - _spin_nvr.tmp:90 - [((!(!(((queue[3]==1)&&!(statuses[3]))))&&!(statuses[3])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!(( !( !(((((int)now.queue[3])==1)&& !(((int)now.statuses[3])))))&& !(((int)now.statuses[3])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 8 - _spin_nvr.tmp:95 - [(!(statuses[3]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][8] = 1;
		if (!( !(((int)now.statuses[3]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 13 - _spin_nvr.tmp:97 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l3 */
	case 30: // STATE 1 - _spin_nvr.tmp:79 - [((!(!(((queue[2]==1)&&!(statuses[2]))))&&!(statuses[2])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!(( !( !(((((int)now.queue[2])==1)&& !(((int)now.statuses[2])))))&& !(((int)now.statuses[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 8 - _spin_nvr.tmp:84 - [(!(statuses[2]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][8] = 1;
		if (!( !(((int)now.statuses[2]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 13 - _spin_nvr.tmp:86 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l2 */
	case 33: // STATE 1 - _spin_nvr.tmp:68 - [((!(!(((queue[1]==1)&&!(statuses[1]))))&&!(statuses[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!(( !( !(((((int)now.queue[1])==1)&& !(((int)now.statuses[1])))))&& !(((int)now.statuses[1])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 8 - _spin_nvr.tmp:73 - [(!(statuses[1]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][8] = 1;
		if (!( !(((int)now.statuses[1]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 13 - _spin_nvr.tmp:75 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM l1 */
	case 36: // STATE 1 - _spin_nvr.tmp:57 - [((!(!(((queue[0]==1)&&!(statuses[0]))))&&!(statuses[0])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!(( !( !(((((int)now.queue[0])==1)&& !(((int)now.statuses[0])))))&& !(((int)now.statuses[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 8 - _spin_nvr.tmp:62 - [(!(statuses[0]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][8] = 1;
		if (!( !(((int)now.statuses[0]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 13 - _spin_nvr.tmp:64 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM s6 */
	case 39: // STATE 1 - _spin_nvr.tmp:48 - [(!(!((statuses[5]&&((statuses[2]||statuses[3])||statuses[4])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!( !( !((((int)now.statuses[5])&&((((int)now.statuses[2])||((int)now.statuses[3]))||((int)now.statuses[4])))))))
			continue;
		/* merge: assert(!(!(!((statuses[5]&&((statuses[2]||statuses[3])||statuses[4]))))))(0, 2, 6) */
		reached[8][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[5])&&((((int)now.statuses[2])||((int)now.statuses[3]))||((int)now.statuses[4])))))), " !( !( !((statuses[5]&&((statuses[2]||statuses[3])||statuses[4])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[8][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 40: // STATE 10 - _spin_nvr.tmp:53 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM s5 */
	case 41: // STATE 1 - _spin_nvr.tmp:39 - [(!(!((statuses[4]&&((((statuses[2]||statuses[1])||statuses[3])||statuses[0])||statuses[5])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !( !((((int)now.statuses[4])&&((((((int)now.statuses[2])||((int)now.statuses[1]))||((int)now.statuses[3]))||((int)now.statuses[0]))||((int)now.statuses[5])))))))
			continue;
		/* merge: assert(!(!(!((statuses[4]&&((((statuses[2]||statuses[1])||statuses[3])||statuses[0])||statuses[5]))))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[4])&&((((((int)now.statuses[2])||((int)now.statuses[1]))||((int)now.statuses[3]))||((int)now.statuses[0]))||((int)now.statuses[5])))))), " !( !( !((statuses[4]&&((((statuses[2]||statuses[1])||statuses[3])||statuses[0])||statuses[5])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 42: // STATE 10 - _spin_nvr.tmp:44 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM s4 */
	case 43: // STATE 1 - _spin_nvr.tmp:30 - [(!(!((statuses[3]&&((statuses[5]||statuses[0])||statuses[4])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !( !((((int)now.statuses[3])&&((((int)now.statuses[5])||((int)now.statuses[0]))||((int)now.statuses[4])))))))
			continue;
		/* merge: assert(!(!(!((statuses[3]&&((statuses[5]||statuses[0])||statuses[4]))))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[3])&&((((int)now.statuses[5])||((int)now.statuses[0]))||((int)now.statuses[4])))))), " !( !( !((statuses[3]&&((statuses[5]||statuses[0])||statuses[4])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 10 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM s3 */
	case 45: // STATE 1 - _spin_nvr.tmp:21 - [(!(!((statuses[2]&&(((statuses[0]||statuses[1])||statuses[4])||statuses[5])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !( !((((int)now.statuses[2])&&(((((int)now.statuses[0])||((int)now.statuses[1]))||((int)now.statuses[4]))||((int)now.statuses[5])))))))
			continue;
		/* merge: assert(!(!(!((statuses[2]&&(((statuses[0]||statuses[1])||statuses[4])||statuses[5]))))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[2])&&(((((int)now.statuses[0])||((int)now.statuses[1]))||((int)now.statuses[4]))||((int)now.statuses[5])))))), " !( !( !((statuses[2]&&(((statuses[0]||statuses[1])||statuses[4])||statuses[5])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 46: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM s2 */
	case 47: // STATE 1 - _spin_nvr.tmp:12 - [(!(!((statuses[1]&&(statuses[2]||statuses[4])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !( !((((int)now.statuses[1])&&(((int)now.statuses[2])||((int)now.statuses[4])))))))
			continue;
		/* merge: assert(!(!(!((statuses[1]&&(statuses[2]||statuses[4]))))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[1])&&(((int)now.statuses[2])||((int)now.statuses[4])))))), " !( !( !((statuses[1]&&(statuses[2]||statuses[4])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM s1 */
	case 49: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((statuses[0]&&((statuses[2]||statuses[3])||statuses[4])))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !( !((((int)now.statuses[0])&&((((int)now.statuses[2])||((int)now.statuses[3]))||((int)now.statuses[4])))))))
			continue;
		/* merge: assert(!(!(!((statuses[0]&&((statuses[2]||statuses[3])||statuses[4]))))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !( !((((int)now.statuses[0])&&((((int)now.statuses[2])||((int)now.statuses[3]))||((int)now.statuses[4])))))), " !( !( !((statuses[0]&&((statuses[2]||statuses[3])||statuses[4])))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 50: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 51: // STATE 1 - system.pml:119 - [(run TrafficLight(1,2,3,4,5,0,0,SN_light))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 1, 2, 3, 4, 5, 0, 0, now.SN_light)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 2 - system.pml:122 - [(run TrafficLight(2,3,3,5,0,0,0,WN_light))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 0, 2, 3, 3, 5, 0, 0, 0, now.WN_light)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 3 - system.pml:125 - [(run TrafficLight(3,4,1,2,5,6,0,EW_light))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 0, 3, 4, 1, 2, 5, 6, 0, now.EW_light)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 4 - system.pml:128 - [(run TrafficLight(4,5,6,1,5,0,0,ES_light))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(addproc(II, 1, 0, 4, 5, 6, 1, 5, 0, 0, now.ES_light)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 5 - system.pml:131 - [(run TrafficLight(5,6,3,2,4,1,6,NE_light))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!(addproc(II, 1, 0, 5, 6, 3, 2, 4, 1, 6, now.NE_light)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 6 - system.pml:134 - [(run TrafficLight(6,1,3,4,5,0,0,P_light))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!(addproc(II, 1, 0, 6, 1, 3, 4, 5, 0, 0, now.P_light)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 7 - system.pml:136 - [(run TrafficGenerator())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!(addproc(II, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 8 - system.pml:137 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC TrafficGenerator */
	case 59: // STATE 1 - system.pml:108 - [SN_light!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.SN_light))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.SN_light);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.SN_light, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 2 - system.pml:109 - [WN_light!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.WN_light))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.WN_light);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.WN_light, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 61: // STATE 3 - system.pml:110 - [EW_light!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.EW_light))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.EW_light);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.EW_light, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 62: // STATE 4 - system.pml:111 - [ES_light!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.ES_light))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ES_light);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ES_light, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 5 - system.pml:112 - [NE_light!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (q_full(now.NE_light))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.NE_light);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.NE_light, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 64: // STATE 6 - system.pml:113 - [P_light!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (q_full(now.P_light))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P_light);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P_light, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 10 - system.pml:115 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC TrafficLight */
	case 66: // STATE 1 - system.pml:30 - [((currentTurn==curr))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.currentTurn)==((int)((P0 *)_this)->curr))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 2 - system.pml:32 - [traffic?tmp] (0:0:1 - 1)
		reached[0][2] = 1;
		if (q_len(((P0 *)_this)->traffic) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->tmp);
		;
		((P0 *)_this)->tmp = qrecv(((P0 *)_this)->traffic, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("TrafficLight:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->traffic);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->tmp)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 68: // STATE 3 - system.pml:33 - [requests[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.requests[0];
		now.requests[0] = 0;
#ifdef VAR_RANGES
		logval("requests[0]", now.requests[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 4 - system.pml:34 - [queue[(curr-1)] = tmp] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.queue[ Index((((int)((P0 *)_this)->curr)-1), 6) ]);
		now.queue[ Index((((P0 *)_this)->curr-1), 6) ] = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("queue[(TrafficLight:curr-1)]", ((int)now.queue[ Index((((int)((P0 *)_this)->curr)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 5 - system.pml:37 - [((statuses[(curr-1)]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 6 - system.pml:38 - [requests[curr] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->curr), 7) ];
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = 0;
#ifdef VAR_RANGES
		logval("requests[TrafficLight:curr]", now.requests[ Index(((int)((P0 *)_this)->curr), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 7 - system.pml:39 - [statuses[(curr-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ]);
		now.statuses[ Index((((P0 *)_this)->curr-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLight:curr-1)]", ((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 12 - system.pml:44 - [((requests[curr]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->curr), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 13 - system.pml:50 - [((((((requests[first]==0)&&(requests[second]==0))&&(requests[third]==0))&&(requests[forth]==0))&&(requests[fifth]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((((now.requests[ Index(((int)((P0 *)_this)->first), 7) ]==0)&&(now.requests[ Index(((int)((P0 *)_this)->second), 7) ]==0))&&(now.requests[ Index(((int)((P0 *)_this)->third), 7) ]==0))&&(now.requests[ Index(((int)((P0 *)_this)->forth), 7) ]==0))&&(now.requests[ Index(((int)((P0 *)_this)->fifth), 7) ]==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 14 - system.pml:52 - [statuses[(curr-1)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ]);
		now.statuses[ Index((((P0 *)_this)->curr-1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLight:curr-1)]", ((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 15 - system.pml:53 - [queue[(curr-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.queue[ Index((((int)((P0 *)_this)->curr)-1), 6) ]);
		now.queue[ Index((((P0 *)_this)->curr-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("queue[(TrafficLight:curr-1)]", ((int)now.queue[ Index((((int)((P0 *)_this)->curr)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 16 - system.pml:54 - [currentTurn = next] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P0 *)_this)->next);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 18 - system.pml:58 - [((requests[first]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->first), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 19 - system.pml:58 - [firsthirdValue = requests[first]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->firsthirdValue;
		((P0 *)_this)->firsthirdValue = now.requests[ Index(((int)((P0 *)_this)->first), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:firsthirdValue", ((P0 *)_this)->firsthirdValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 21 - system.pml:59 - [firsthirdValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->firsthirdValue;
		((P0 *)_this)->firsthirdValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:firsthirdValue", ((P0 *)_this)->firsthirdValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 24 - system.pml:62 - [((requests[second]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->second), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 25 - system.pml:62 - [secondValue = requests[second]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->secondValue;
		((P0 *)_this)->secondValue = now.requests[ Index(((int)((P0 *)_this)->second), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:secondValue", ((P0 *)_this)->secondValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 27 - system.pml:63 - [secondValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->secondValue;
		((P0 *)_this)->secondValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:secondValue", ((P0 *)_this)->secondValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 30 - system.pml:66 - [((requests[third]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->third), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 31 - system.pml:66 - [thirdValue = requests[third]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->thirdValue;
		((P0 *)_this)->thirdValue = now.requests[ Index(((int)((P0 *)_this)->third), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:thirdValue", ((P0 *)_this)->thirdValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 33 - system.pml:67 - [thirdValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->thirdValue;
		((P0 *)_this)->thirdValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:thirdValue", ((P0 *)_this)->thirdValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 36 - system.pml:70 - [((requests[forth]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->forth), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 37 - system.pml:70 - [forthValue = requests[forth]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->forthValue;
		((P0 *)_this)->forthValue = now.requests[ Index(((int)((P0 *)_this)->forth), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:forthValue", ((P0 *)_this)->forthValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 39 - system.pml:71 - [forthValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->forthValue;
		((P0 *)_this)->forthValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:forthValue", ((P0 *)_this)->forthValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 42 - system.pml:74 - [((requests[fifth]>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.requests[ Index(((int)((P0 *)_this)->fifth), 7) ]>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 43 - system.pml:74 - [fifthValue = requests[fifth]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->fifthValue;
		((P0 *)_this)->fifthValue = now.requests[ Index(((int)((P0 *)_this)->fifth), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:fifthValue", ((P0 *)_this)->fifthValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 45 - system.pml:75 - [fifthValue = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->fifthValue;
		((P0 *)_this)->fifthValue = 0;
#ifdef VAR_RANGES
		logval("TrafficLight:fifthValue", ((P0 *)_this)->fifthValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 48 - system.pml:78 - [nValue = requests[curr]] (0:0:1 - 3)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->nValue;
		((P0 *)_this)->nValue = now.requests[ Index(((int)((P0 *)_this)->curr), 7) ];
#ifdef VAR_RANGES
		logval("TrafficLight:nValue", ((P0 *)_this)->nValue);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 49 - system.pml:81 - [((((firsthirdValue>nValue)||(secondValue>nValue))||(thirdValue>nValue)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((((P0 *)_this)->firsthirdValue>((P0 *)_this)->nValue)||(((P0 *)_this)->secondValue>((P0 *)_this)->nValue))||(((P0 *)_this)->thirdValue>((P0 *)_this)->nValue))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 50 - system.pml:82 - [requests[curr] = (nValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->curr), 7) ];
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = (((P0 *)_this)->nValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:curr]", now.requests[ Index(((int)((P0 *)_this)->curr), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 51 - system.pml:83 - [requests[first] = (firsthirdValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->first), 7) ];
		now.requests[ Index(((P0 *)_this)->first, 7) ] = (((P0 *)_this)->firsthirdValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:first]", now.requests[ Index(((int)((P0 *)_this)->first), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 52 - system.pml:84 - [requests[second] = (secondValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->second), 7) ];
		now.requests[ Index(((P0 *)_this)->second, 7) ] = (((P0 *)_this)->secondValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:second]", now.requests[ Index(((int)((P0 *)_this)->second), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 53 - system.pml:85 - [requests[third] = (thirdValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->third), 7) ];
		now.requests[ Index(((P0 *)_this)->third, 7) ] = (((P0 *)_this)->thirdValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:third]", now.requests[ Index(((int)((P0 *)_this)->third), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 54 - system.pml:86 - [requests[forth] = (forthValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->forth), 7) ];
		now.requests[ Index(((P0 *)_this)->forth, 7) ] = (((P0 *)_this)->forthValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:forth]", now.requests[ Index(((int)((P0 *)_this)->forth), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 55 - system.pml:87 - [requests[fifth] = (fifthValue+n)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->fifth), 7) ];
		now.requests[ Index(((P0 *)_this)->fifth, 7) ] = (((P0 *)_this)->fifthValue+((int)now.n));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:fifth]", now.requests[ Index(((int)((P0 *)_this)->fifth), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 58 - system.pml:90 - [statuses[(curr-1)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.oval = ((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ]);
		now.statuses[ Index((((P0 *)_this)->curr-1), 6) ] = 1;
#ifdef VAR_RANGES
		logval("statuses[(TrafficLight:curr-1)]", ((int)now.statuses[ Index((((int)((P0 *)_this)->curr)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 59 - system.pml:91 - [queue[(curr-1)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.oval = ((int)now.queue[ Index((((int)((P0 *)_this)->curr)-1), 6) ]);
		now.queue[ Index((((P0 *)_this)->curr-1), 6) ] = 0;
#ifdef VAR_RANGES
		logval("queue[(TrafficLight:curr-1)]", ((int)now.queue[ Index((((int)((P0 *)_this)->curr)-1), 6) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 60 - system.pml:92 - [requests[curr] = (999+curr)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->curr), 7) ];
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = (999+((int)((P0 *)_this)->curr));
#ifdef VAR_RANGES
		logval("requests[TrafficLight:curr]", now.requests[ Index(((int)((P0 *)_this)->curr), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 63 - system.pml:95 - [currentTurn = next] (0:0:1 - 3)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P0 *)_this)->next);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 64 - system.pml:96 - [requests[0] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.requests[0];
		now.requests[0] = 0;
#ifdef VAR_RANGES
		logval("requests[0]", now.requests[0]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 68 - system.pml:99 - [requests[curr] = curr] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = now.requests[ Index(((int)((P0 *)_this)->curr), 7) ];
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = ((int)((P0 *)_this)->curr);
#ifdef VAR_RANGES
		logval("requests[TrafficLight:curr]", now.requests[ Index(((int)((P0 *)_this)->curr), 7) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 69 - system.pml:100 - [currentTurn = next] (0:0:1 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = ((int)now.currentTurn);
		now.currentTurn = ((int)((P0 *)_this)->next);
#ifdef VAR_RANGES
		logval("currentTurn", ((int)now.currentTurn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 77 - system.pml:104 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

