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

		 /* CLAIM ok */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((((((A1&&A2)&&A3)&&G1)&&G2)&&G3))] (6:0:0 - 1)
		
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
		reached[1][1] = 1;
		if (!((((((((int)now.A1)&&((int)now.A2))&&((int)now.A3))&&((int)now.G1))&&((int)now.G2))&&((int)now.G3))))
			continue;
		/* merge: assert(!((((((A1&&A2)&&A3)&&G1)&&G2)&&G3)))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !((((((((int)now.A1)&&((int)now.A2))&&((int)now.A3))&&((int)now.G1))&&((int)now.G2))&&((int)now.G3))), " !((((((A1&&A2)&&A3)&&G1)&&G2)&&G3))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 4 - _spin_nvr.tmp:4 - [(!(((((A1!=G1)&&((A1==G2)||(A1==G3)))||((A2!=G2)&&((A2==G1)||(A2==G3))))||((A3!=G3)&&((A3==G1)||(A3==G2))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][4] = 1;
		if (!( !(((((((int)now.A1)!=((int)now.G1))&&((((int)now.A1)==((int)now.G2))||(((int)now.A1)==((int)now.G3))))||((((int)now.A2)!=((int)now.G2))&&((((int)now.A2)==((int)now.G1))||(((int)now.A2)==((int)now.G3)))))||((((int)now.A3)!=((int)now.G3))&&((((int)now.A3)==((int)now.G1))||(((int)now.A3)==((int)now.G2))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
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
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 6: // STATE 1 - river-puzzle-hw.pml:5 - [(((boat==A1)&&(boat==A2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((int)now.boat)==((int)now.A1))&&(((int)now.boat)==((int)now.A2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 6 - river-puzzle-hw.pml:5 - [D_STEP5]
		IfNotBlocked

		reached[0][6] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_001_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_002_0: /* 2 */
		now.A1 =  !(((int)now.A1));
#ifdef VAR_RANGES
		logval("A1", ((int)now.A1));
#endif
		;
S_003_0: /* 2 */
		now.A2 =  !(((int)now.A2));
#ifdef VAR_RANGES
		logval("A2", ((int)now.A2));
#endif
		;
S_004_0: /* 2 */
		Printf("A1 and A2 cross the river\n");
		goto S_121_0;
S_121_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 8: // STATE 7 - river-puzzle-hw.pml:6 - [(((boat==A1)&&(boat==A3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!(((((int)now.boat)==((int)now.A1))&&(((int)now.boat)==((int)now.A3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 12 - river-puzzle-hw.pml:6 - [D_STEP6]
		IfNotBlocked

		reached[0][12] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_007_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_008_0: /* 2 */
		now.A1 =  !(((int)now.A1));
#ifdef VAR_RANGES
		logval("A1", ((int)now.A1));
#endif
		;
S_009_0: /* 2 */
		now.A3 =  !(((int)now.A3));
#ifdef VAR_RANGES
		logval("A3", ((int)now.A3));
#endif
		;
S_010_0: /* 2 */
		Printf("A1 and A3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 10: // STATE 13 - river-puzzle-hw.pml:7 - [(((boat==A1)&&(boat==G1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((((int)now.boat)==((int)now.A1))&&(((int)now.boat)==((int)now.G1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 18 - river-puzzle-hw.pml:7 - [D_STEP7]
		IfNotBlocked

		reached[0][18] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_013_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_014_0: /* 2 */
		now.A1 =  !(((int)now.A1));
#ifdef VAR_RANGES
		logval("A1", ((int)now.A1));
#endif
		;
S_015_0: /* 2 */
		now.G1 =  !(((int)now.G1));
#ifdef VAR_RANGES
		logval("G1", ((int)now.G1));
#endif
		;
S_016_0: /* 2 */
		Printf("A1 and G1 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 12: // STATE 19 - river-puzzle-hw.pml:8 - [(((boat==A1)&&(boat==G2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((((int)now.boat)==((int)now.A1))&&(((int)now.boat)==((int)now.G2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 24 - river-puzzle-hw.pml:8 - [D_STEP8]
		IfNotBlocked

		reached[0][24] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_019_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_020_0: /* 2 */
		now.A1 =  !(((int)now.A1));
#ifdef VAR_RANGES
		logval("A1", ((int)now.A1));
#endif
		;
S_021_0: /* 2 */
		now.G2 =  !(((int)now.G2));
#ifdef VAR_RANGES
		logval("G2", ((int)now.G2));
#endif
		;
S_022_0: /* 2 */
		Printf("A1 and G2 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 14: // STATE 25 - river-puzzle-hw.pml:9 - [(((boat==A1)&&(boat==G3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!(((((int)now.boat)==((int)now.A1))&&(((int)now.boat)==((int)now.G3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 30 - river-puzzle-hw.pml:9 - [D_STEP9]
		IfNotBlocked

		reached[0][30] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_025_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_026_0: /* 2 */
		now.A1 =  !(((int)now.A1));
#ifdef VAR_RANGES
		logval("A1", ((int)now.A1));
#endif
		;
S_027_0: /* 2 */
		now.G3 =  !(((int)now.G3));
#ifdef VAR_RANGES
		logval("G3", ((int)now.G3));
#endif
		;
S_028_0: /* 2 */
		Printf("A1 and G3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 16: // STATE 31 - river-puzzle-hw.pml:10 - [(((boat==A2)&&(boat==A3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!(((((int)now.boat)==((int)now.A2))&&(((int)now.boat)==((int)now.A3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 36 - river-puzzle-hw.pml:10 - [D_STEP10]
		IfNotBlocked

		reached[0][36] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_031_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_032_0: /* 2 */
		now.A2 =  !(((int)now.A2));
#ifdef VAR_RANGES
		logval("A2", ((int)now.A2));
#endif
		;
S_033_0: /* 2 */
		now.A3 =  !(((int)now.A3));
#ifdef VAR_RANGES
		logval("A3", ((int)now.A3));
#endif
		;
S_034_0: /* 2 */
		Printf("A2 and A3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 18: // STATE 37 - river-puzzle-hw.pml:11 - [(((boat==A2)&&(boat==G1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((int)now.boat)==((int)now.A2))&&(((int)now.boat)==((int)now.G1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 42 - river-puzzle-hw.pml:11 - [D_STEP11]
		IfNotBlocked

		reached[0][42] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_037_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_038_0: /* 2 */
		now.A2 =  !(((int)now.A2));
#ifdef VAR_RANGES
		logval("A2", ((int)now.A2));
#endif
		;
S_039_0: /* 2 */
		now.G1 =  !(((int)now.G1));
#ifdef VAR_RANGES
		logval("G1", ((int)now.G1));
#endif
		;
S_040_0: /* 2 */
		Printf("A2 and G1 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 20: // STATE 43 - river-puzzle-hw.pml:12 - [(((boat==A2)&&(boat==G2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!(((((int)now.boat)==((int)now.A2))&&(((int)now.boat)==((int)now.G2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 48 - river-puzzle-hw.pml:12 - [D_STEP12]
		IfNotBlocked

		reached[0][48] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_043_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_044_0: /* 2 */
		now.A2 =  !(((int)now.A2));
#ifdef VAR_RANGES
		logval("A2", ((int)now.A2));
#endif
		;
S_045_0: /* 2 */
		now.G2 =  !(((int)now.G2));
#ifdef VAR_RANGES
		logval("G2", ((int)now.G2));
#endif
		;
S_046_0: /* 2 */
		Printf("A2 and G2 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 22: // STATE 49 - river-puzzle-hw.pml:13 - [(((boat==A2)&&(boat==G3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!(((((int)now.boat)==((int)now.A2))&&(((int)now.boat)==((int)now.G3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 54 - river-puzzle-hw.pml:13 - [D_STEP13]
		IfNotBlocked

		reached[0][54] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_049_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_050_0: /* 2 */
		now.A2 =  !(((int)now.A2));
#ifdef VAR_RANGES
		logval("A2", ((int)now.A2));
#endif
		;
S_051_0: /* 2 */
		now.G3 =  !(((int)now.G3));
#ifdef VAR_RANGES
		logval("G3", ((int)now.G3));
#endif
		;
S_052_0: /* 2 */
		Printf("A2 and G3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 24: // STATE 55 - river-puzzle-hw.pml:14 - [(((boat==A3)&&(boat==G1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!(((((int)now.boat)==((int)now.A3))&&(((int)now.boat)==((int)now.G1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 60 - river-puzzle-hw.pml:14 - [D_STEP14]
		IfNotBlocked

		reached[0][60] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_055_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_056_0: /* 2 */
		now.A3 =  !(((int)now.A3));
#ifdef VAR_RANGES
		logval("A3", ((int)now.A3));
#endif
		;
S_057_0: /* 2 */
		now.G1 =  !(((int)now.G1));
#ifdef VAR_RANGES
		logval("G1", ((int)now.G1));
#endif
		;
S_058_0: /* 2 */
		Printf("A3 and G1 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 26: // STATE 61 - river-puzzle-hw.pml:15 - [(((boat==A3)&&(boat==G2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!(((((int)now.boat)==((int)now.A3))&&(((int)now.boat)==((int)now.G2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 66 - river-puzzle-hw.pml:15 - [D_STEP15]
		IfNotBlocked

		reached[0][66] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_061_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_062_0: /* 2 */
		now.A3 =  !(((int)now.A3));
#ifdef VAR_RANGES
		logval("A3", ((int)now.A3));
#endif
		;
S_063_0: /* 2 */
		now.G2 =  !(((int)now.G2));
#ifdef VAR_RANGES
		logval("G2", ((int)now.G2));
#endif
		;
S_064_0: /* 2 */
		Printf("A3 and G2 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 28: // STATE 67 - river-puzzle-hw.pml:16 - [(((boat==A3)&&(boat==G3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!(((((int)now.boat)==((int)now.A3))&&(((int)now.boat)==((int)now.G3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 72 - river-puzzle-hw.pml:16 - [D_STEP16]
		IfNotBlocked

		reached[0][72] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_067_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_068_0: /* 2 */
		now.A3 =  !(((int)now.A3));
#ifdef VAR_RANGES
		logval("A3", ((int)now.A3));
#endif
		;
S_069_0: /* 2 */
		now.G3 =  !(((int)now.G3));
#ifdef VAR_RANGES
		logval("G3", ((int)now.G3));
#endif
		;
S_070_0: /* 2 */
		Printf("A3 and G3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 30: // STATE 73 - river-puzzle-hw.pml:17 - [(((boat==G1)&&(boat==G2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!(((((int)now.boat)==((int)now.G1))&&(((int)now.boat)==((int)now.G2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 78 - river-puzzle-hw.pml:17 - [D_STEP17]
		IfNotBlocked

		reached[0][78] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_073_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_074_0: /* 2 */
		now.G1 =  !(((int)now.G1));
#ifdef VAR_RANGES
		logval("G1", ((int)now.G1));
#endif
		;
S_075_0: /* 2 */
		now.G2 =  !(((int)now.G2));
#ifdef VAR_RANGES
		logval("G2", ((int)now.G2));
#endif
		;
S_076_0: /* 2 */
		Printf("G1 and G2 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 32: // STATE 79 - river-puzzle-hw.pml:18 - [(((boat==G1)&&(boat==G3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		if (!(((((int)now.boat)==((int)now.G1))&&(((int)now.boat)==((int)now.G3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 84 - river-puzzle-hw.pml:18 - [D_STEP18]
		IfNotBlocked

		reached[0][84] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_079_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_080_0: /* 2 */
		now.G1 =  !(((int)now.G1));
#ifdef VAR_RANGES
		logval("G1", ((int)now.G1));
#endif
		;
S_081_0: /* 2 */
		now.G3 =  !(((int)now.G3));
#ifdef VAR_RANGES
		logval("G3", ((int)now.G3));
#endif
		;
S_082_0: /* 2 */
		Printf("G1 and G3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 34: // STATE 85 - river-puzzle-hw.pml:19 - [(((boat==G2)&&(boat==G3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!(((((int)now.boat)==((int)now.G2))&&(((int)now.boat)==((int)now.G3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 90 - river-puzzle-hw.pml:19 - [D_STEP19]
		IfNotBlocked

		reached[0][90] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_085_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_086_0: /* 2 */
		now.G2 =  !(((int)now.G2));
#ifdef VAR_RANGES
		logval("G2", ((int)now.G2));
#endif
		;
S_087_0: /* 2 */
		now.G3 =  !(((int)now.G3));
#ifdef VAR_RANGES
		logval("G3", ((int)now.G3));
#endif
		;
S_088_0: /* 2 */
		Printf("G2 and G3 cross the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 36: // STATE 91 - river-puzzle-hw.pml:20 - [((boat==A1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!((((int)now.boat)==((int)now.A1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 95 - river-puzzle-hw.pml:20 - [D_STEP20]
		IfNotBlocked

		reached[0][95] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_091_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_092_0: /* 2 */
		now.A1 =  !(((int)now.A1));
#ifdef VAR_RANGES
		logval("A1", ((int)now.A1));
#endif
		;
S_093_0: /* 2 */
		Printf("A1 crosses the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 38: // STATE 96 - river-puzzle-hw.pml:21 - [((boat==A2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		if (!((((int)now.boat)==((int)now.A2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 100 - river-puzzle-hw.pml:21 - [D_STEP21]
		IfNotBlocked

		reached[0][100] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_096_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_097_0: /* 2 */
		now.A2 =  !(((int)now.A2));
#ifdef VAR_RANGES
		logval("A2", ((int)now.A2));
#endif
		;
S_098_0: /* 2 */
		Printf("A2 crosses the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 40: // STATE 101 - river-puzzle-hw.pml:22 - [((boat==A3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		if (!((((int)now.boat)==((int)now.A3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 105 - river-puzzle-hw.pml:22 - [D_STEP22]
		IfNotBlocked

		reached[0][105] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_101_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_102_0: /* 2 */
		now.A3 =  !(((int)now.A3));
#ifdef VAR_RANGES
		logval("A3", ((int)now.A3));
#endif
		;
S_103_0: /* 2 */
		Printf("A3 crosses the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 42: // STATE 106 - river-puzzle-hw.pml:23 - [((boat==G1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		if (!((((int)now.boat)==((int)now.G1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 110 - river-puzzle-hw.pml:23 - [D_STEP23]
		IfNotBlocked

		reached[0][110] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_106_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_107_0: /* 2 */
		now.G1 =  !(((int)now.G1));
#ifdef VAR_RANGES
		logval("G1", ((int)now.G1));
#endif
		;
S_108_0: /* 2 */
		Printf("G1 crosses the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 44: // STATE 111 - river-puzzle-hw.pml:24 - [((boat==G2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!((((int)now.boat)==((int)now.G2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 115 - river-puzzle-hw.pml:24 - [D_STEP24]
		IfNotBlocked

		reached[0][115] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_111_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_112_0: /* 2 */
		now.G2 =  !(((int)now.G2));
#ifdef VAR_RANGES
		logval("G2", ((int)now.G2));
#endif
		;
S_113_0: /* 2 */
		Printf("G2 crosses the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 46: // STATE 116 - river-puzzle-hw.pml:25 - [((boat==G3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][116] = 1;
		if (!((((int)now.boat)==((int)now.G3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 120 - river-puzzle-hw.pml:25 - [D_STEP25]
		IfNotBlocked

		reached[0][120] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_116_0: /* 2 */
		now.boat =  !(((int)now.boat));
#ifdef VAR_RANGES
		logval("boat", ((int)now.boat));
#endif
		;
S_117_0: /* 2 */
		now.G3 =  !(((int)now.G3));
#ifdef VAR_RANGES
		logval("G3", ((int)now.G3));
#endif
		;
S_118_0: /* 2 */
		Printf("G3 crosses the river\n");
		goto S_121_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 48: // STATE 124 - river-puzzle-hw.pml:27 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][124] = 1;
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

