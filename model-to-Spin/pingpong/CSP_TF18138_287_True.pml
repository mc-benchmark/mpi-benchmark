chan D0_0 = [1] of {int};
chan D0_1 = [1] of {int};
chan D0_2 = [1] of {int};
chan D0_3 = [1] of {int};
chan D0_4 = [1] of {int};
chan D0_5 = [1] of {int};
chan D0_6 = [1] of {int};
chan D0_7 = [1] of {int};
chan D0_8 = [1] of {int};
chan D0_9 = [1] of {int};
chan D0_10 = [1] of {int};
chan D0_11 = [1] of {int};
chan D0_12 = [1] of {int};
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D1_2 = [1] of {int};
chan D1_3 = [1] of {int};
chan D1_4 = [1] of {int};
chan D1_5 = [1] of {int};
chan D1_6 = [1] of {int};
chan D1_7 = [1] of {int};
chan D1_8 = [1] of {int};
chan D1_9 = [1] of {int};
chan D1_10 = [1] of {int};
chan D1_11 = [1] of {int};
int x0;
int x1;

/* ========================================================= */ 
proctype P0() {
	x1++;
	x1==2;
	D0_0!1;
	x0++;
	x0==2;
	D0_1!1;
	atomic {
		if
		::D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		
		fi
	};
	D0_2!1;
	atomic {
		if
		::D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: (empty(D1_2) && nempty(D1_3)) -> D1_3?1
		
		fi
	};
	D0_3!1;
	atomic {
		if
		::D1_2?1
		:: (empty(D1_2) && nempty(D1_3)) -> D1_3?1
		:: (empty(D1_3) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		
		fi
	};
	D0_4!1;
	atomic {
		if
		:: D1_3?1
		:: (empty(D1_3) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		fi
	};
	D0_5!1;
	atomic {
		if
		::D1_3?1
		:: (empty(D1_3) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		
		fi
	};
	D0_6!1;
	atomic {
		if
		::D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		
		fi
	};
	D0_7!1;
	atomic {
		if
		::D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		
		fi
	};
	D0_8!1;
	atomic {
		if
		:: D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		fi
	};
	D0_9!1;
	atomic {
		if
		:: D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		fi
	};
	D0_10!1;
	atomic {
		if
		:: D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		fi
	};
	D0_11!1;
	atomic {
		if
		:: D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		fi
	};
	D0_12!1;
	atomic {
		if
		:: D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	x1++;
	x1==2;
	x0++;
	x0==2;
	atomic {
		if
		::D0_0?1
		:: (empty(D0_0) && nempty(D0_1)) -> D0_1?1
		
		fi
	};
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_2)) -> D0_2?1
		:: (empty(D0_2) && nempty(D0_3)) -> D0_3?1
		
		fi
	};
	D1_0!1;
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_3)) -> D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		
		fi
	};
	D1_1!1;
	atomic {
		if
		::D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		
		fi
	};
	D1_2!1;
	atomic {
		if
		::D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		
		fi
	};
	D1_3!1;
	atomic {
		if
		::D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		
		fi
	};
	D1_4!1;
	atomic {
		if
		::D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	D1_5!1;
	atomic {
		if
		::D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	D1_6!1;
	atomic {
		if
		::D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	D1_7!1;
	atomic {
		if
		::D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	D1_8!1;
	atomic {
		if
		::D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	D1_9!1;
	atomic {
		if
		::D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	D1_10!1;
	atomic {
		D0_12?1
		
	};
	D1_11!1
}

/* ========================================================= */ 
init {
		x0=0; x1=0; run P0(); run P1()
}