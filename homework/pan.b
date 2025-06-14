	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f6 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f5 */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f4 */
;
		;
		;
		;
		
	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f3 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f2 */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f1 */
;
		;
		;
		;
		
	case 20: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l6 */
;
		;
		;
		;
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l5 */
;
		;
		;
		;
		
	case 26: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l4 */
;
		;
		;
		;
		
	case 29: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l3 */
;
		;
		;
		;
		
	case 32: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l2 */
;
		;
		;
		;
		
	case 35: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM l1 */
;
		;
		;
		;
		
	case 38: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM s6 */
;
		
	case 39: // STATE 1
		goto R999;

	case 40: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM s5 */
;
		
	case 41: // STATE 1
		goto R999;

	case 42: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM s4 */
;
		
	case 43: // STATE 1
		goto R999;

	case 44: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM s3 */
;
		
	case 45: // STATE 1
		goto R999;

	case 46: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM s2 */
;
		
	case 47: // STATE 1
		goto R999;

	case 48: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM s1 */
;
		
	case 49: // STATE 1
		goto R999;

	case 50: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 51: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 52: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 53: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 54: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 55: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 56: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 57: // STATE 7
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 58: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC TrafficGenerator */

	case 59: // STATE 1
		;
		_m = unsend(now.SN_light);
		;
		goto R999;

	case 60: // STATE 2
		;
		_m = unsend(now.WN_light);
		;
		goto R999;

	case 61: // STATE 3
		;
		_m = unsend(now.EW_light);
		;
		goto R999;

	case 62: // STATE 4
		;
		_m = unsend(now.ES_light);
		;
		goto R999;

	case 63: // STATE 5
		;
		_m = unsend(now.NE_light);
		;
		goto R999;

	case 64: // STATE 6
		;
		_m = unsend(now.P_light);
		;
		goto R999;

	case 65: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC TrafficLight */
;
		;
		
	case 67: // STATE 2
		;
		XX = 1;
		unrecv(((P0 *)_this)->traffic, XX-1, 0, ((int)((P0 *)_this)->tmp), 1);
		((P0 *)_this)->tmp = trpt->bup.oval;
		;
		;
		goto R999;

	case 68: // STATE 3
		;
		now.requests[0] = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 4
		;
		now.queue[ Index((((P0 *)_this)->curr-1), 6) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 6
		;
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 7
		;
		now.statuses[ Index((((P0 *)_this)->curr-1), 6) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 75: // STATE 14
		;
		now.statuses[ Index((((P0 *)_this)->curr-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 15
		;
		now.queue[ Index((((P0 *)_this)->curr-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 16
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 79: // STATE 19
		;
		((P0 *)_this)->firsthirdValue = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 21
		;
		((P0 *)_this)->firsthirdValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 82: // STATE 25
		;
		((P0 *)_this)->secondValue = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 27
		;
		((P0 *)_this)->secondValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 85: // STATE 31
		;
		((P0 *)_this)->thirdValue = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 33
		;
		((P0 *)_this)->thirdValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 88: // STATE 37
		;
		((P0 *)_this)->forthValue = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 39
		;
		((P0 *)_this)->forthValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 91: // STATE 43
		;
		((P0 *)_this)->fifthValue = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 45
		;
		((P0 *)_this)->fifthValue = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 48
		;
		((P0 *)_this)->nValue = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 95: // STATE 50
		;
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 51
		;
		now.requests[ Index(((P0 *)_this)->first, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 52
		;
		now.requests[ Index(((P0 *)_this)->second, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 53
		;
		now.requests[ Index(((P0 *)_this)->third, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 54
		;
		now.requests[ Index(((P0 *)_this)->forth, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 55
		;
		now.requests[ Index(((P0 *)_this)->fifth, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 58
		;
		now.statuses[ Index((((P0 *)_this)->curr-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 59
		;
		now.queue[ Index((((P0 *)_this)->curr-1), 6) ] = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 60
		;
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 63
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 105: // STATE 64
		;
		now.requests[0] = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 68
		;
		now.requests[ Index(((P0 *)_this)->curr, 7) ] = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 69
		;
		now.currentTurn = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 77
		;
		p_restor(II);
		;
		;
		goto R999;
	}

