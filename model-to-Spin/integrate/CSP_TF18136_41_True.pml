chan D0_0 = [1] of {int};
chan D0_1 = [1] of {int};
chan D0_2 = [1] of {int};
chan D0_3 = [1] of {int};
chan D0_4 = [1] of {int};
chan D0_5 = [1] of {int};
chan D0_6 = [1] of {int};
chan D1_0 = [1] of {int};
chan D2_0 = [1] of {int};
chan D3_0 = [1] of {int};
chan D4_0 = [1] of {int};
chan D5_0 = [1] of {int};
chan D6_0 = [1] of {int};
chan D7_0 = [1] of {int};

/* ========================================================= */ 
proctype P0() {
	D0_0!1;
	D0_1!1;
	D0_2!1;
	D0_3!1;
	D0_4!1;
	D0_5!1;
	D0_6!1;
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
		:: D6_0?1
		:: D7_0?1
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	atomic {
		if
		:: D0_0?1
		fi
	};
	D1_0!1
}

/* ========================================================= */ 
proctype P2() {
	atomic {
		D0_1?1
		
	};
	D2_0!1
}

/* ========================================================= */ 
proctype P3() {
	atomic {
		if
		:: D0_2?1
		fi
	};
	D3_0!1
}

/* ========================================================= */ 
proctype P4() {
	atomic {
		D0_3?1
		
	};
	D4_0!1
}

/* ========================================================= */ 
proctype P5() {
	atomic {
		D0_4?1
		
	};
	D5_0!1
}

/* ========================================================= */ 
proctype P6() {
	atomic {
		D0_5?1
		
	};
	D6_0!1
}

/* ========================================================= */ 
proctype P7() {
	atomic {
		D0_6?1
		
	};
	D7_0!1
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3(); run P4(); run P5(); run P6(); run P7()
}