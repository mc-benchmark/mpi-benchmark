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
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D1_2 = [1] of {int};
chan D1_3 = [1] of {int};
chan D1_4 = [1] of {int};
chan D1_5 = [1] of {int};
chan D1_6 = [1] of {int};
chan D2_0 = [1] of {int};
chan D2_1 = [1] of {int};
chan D2_2 = [1] of {int};
chan D2_3 = [1] of {int};
chan D2_4 = [1] of {int};
chan D2_5 = [1] of {int};
chan D2_6 = [1] of {int};
chan D3_0 = [1] of {int};
chan D3_1 = [1] of {int};
chan D3_2 = [1] of {int};
chan D3_3 = [1] of {int};
chan D3_4 = [1] of {int};
chan D3_5 = [1] of {int};
chan D3_6 = [1] of {int};
chan D4_0 = [1] of {int};
chan D4_1 = [1] of {int};
chan D4_2 = [1] of {int};
chan D4_3 = [1] of {int};
chan D4_4 = [1] of {int};
chan D4_5 = [1] of {int};
chan D4_6 = [1] of {int};
chan D5_0 = [1] of {int};
chan D5_1 = [1] of {int};
chan D5_2 = [1] of {int};
chan D5_3 = [1] of {int};
chan D5_4 = [1] of {int};
chan D5_5 = [1] of {int};
chan D5_6 = [1] of {int};
chan D6_0 = [1] of {int};
chan D6_1 = [1] of {int};
chan D6_2 = [1] of {int};
chan D6_3 = [1] of {int};
chan D6_4 = [1] of {int};
chan D6_5 = [1] of {int};
chan D6_6 = [1] of {int};
chan D7_0 = [1] of {int};
chan D7_1 = [1] of {int};
chan D7_2 = [1] of {int};
chan D7_3 = [1] of {int};
chan D7_4 = [1] of {int};
chan D7_5 = [1] of {int};
chan D7_6 = [1] of {int};

/* ========================================================= */ 
proctype P0() {
	D0_0!1;
	atomic {
		if
		::D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		
		fi
	};
	D0_1!1;
	atomic {
		if
		::D1_1?1
		:: (empty(D1_1) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		
		fi
	};
	D0_2!1;
	atomic {
		if
		::D2_2?1
		:: (empty(D2_2) && nempty(D2_5)) -> D2_5?1
		:: (empty(D2_5) && nempty(D2_6)) -> D2_6?1
		
		fi
	};
	D0_3!1;
	atomic {
		if
		:: D1_4?1
		:: D2_4?1
		:: D3_4?1
		:: D4_4?1
		:: D5_4?1
		:: D6_3?1
		:: D7_4?1
		fi
	};
	atomic {
		D1_4?1
		
	};
	atomic {
		D2_4?1
		
	};
	atomic {
		D3_4?1
		
	};
	atomic {
		D4_4?1
		
	};
	atomic {
		D5_4?1
		
	};
	atomic {
		D6_4?1
		
	};
	atomic {
		D7_4?1
		
	};
	D0_4!1;
	D0_5!1;
	D0_6!1;
	D0_7!1;
	D0_8!1;
	D0_9!1;
	D0_10!1;
	atomic {
		if
		::D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		
		fi
	};
	atomic {
		D1_6?1
		
	};
	atomic {
		if
		::D2_5?1
		:: (empty(D2_5) && nempty(D2_6)) -> D2_6?1
		
		fi
	};
	atomic {
		D2_6?1
		
	};
	atomic {
		if
		::D3_5?1
		:: (empty(D3_5) && nempty(D3_6)) -> D3_6?1
		
		fi
	};
	atomic {
		D3_6?1
		
	};
	atomic {
		if
		::D4_5?1
		:: (empty(D4_5) && nempty(D4_6)) -> D4_6?1
		
		fi
	};
	atomic {
		D4_6?1
		
	};
	atomic {
		if
		::D5_5?1
		:: (empty(D5_5) && nempty(D5_6)) -> D5_6?1
		
		fi
	};
	atomic {
		D5_6?1
		
	};
	atomic {
		if
		::D6_3?1
		:: (empty(D6_3) && nempty(D6_5)) -> D6_5?1
		:: (empty(D6_5) && nempty(D6_6)) -> D6_6?1
		
		fi
	};
	atomic {
		if
		::D6_5?1
		:: (empty(D6_5) && nempty(D6_6)) -> D6_6?1
		
		fi
	};
	atomic {
		if
		::D7_5?1
		:: (empty(D7_5) && nempty(D7_6)) -> D7_6?1
		
		fi
	};
	atomic {
		D7_6?1
		
	}
}

/* ========================================================= */ 
proctype P1() {
	D1_0!1;
	atomic {
		if
		::D0_0?1
		:: (empty(D0_0) && nempty(D0_1)) -> D0_1?1
		
		fi
	};
	D1_1!1;
	atomic {
		D0_1?1
		
	};
	D1_2!1;
	atomic {
		D3_2?1
		
	};
	D1_3!1;
	atomic {
		if
		:: D0_4?1
		:: D7_3?1
		fi
	};
	D1_4!1;
	atomic {
		D0_4?1
		
	};
	D1_5!1;
	D1_6!1
}

/* ========================================================= */ 
proctype P2() {
	D2_0!1;
	atomic {
		if
		::D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		
		fi
	};
	D2_1!1;
	atomic {
		D3_1?1
		
	};
	D2_2!1;
	atomic {
		D4_2?1
		
	};
	D2_3!1;
	atomic {
		if
		:: D0_3?1
		fi
	};
	D2_4!1;
	atomic {
		D0_5?1
		
	};
	D2_5!1;
	D2_6!1
}

/* ========================================================= */ 
proctype P3() {
	D3_0!1;
	atomic {
		if
		::D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		
		fi
	};
	D3_1!1;
	atomic {
		D2_1?1
		
	};
	D3_2!1;
	atomic {
		D5_2?1
		
	};
	D3_3!1;
	atomic {
		if
		:: D0_6?1
		:: D1_3?1
		fi
	};
	D3_4!1;
	atomic {
		D0_6?1
		
	};
	D3_5!1;
	D3_6!1
}

/* ========================================================= */ 
proctype P4() {
	D4_0!1;
	atomic {
		if
		::D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		
		fi
	};
	D4_1!1;
	atomic {
		D5_1?1
		
	};
	D4_2!1;
	atomic {
		D6_2?1
		
	};
	D4_3!1;
	atomic {
		if
		:: D0_7?1
		:: D2_3?1
		fi
	};
	D4_4!1;
	atomic {
		D0_7?1
		
	};
	D4_5!1;
	D4_6!1
}

/* ========================================================= */ 
proctype P5() {
	D5_0!1;
	atomic {
		if
		::D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		
		fi
	};
	D5_1!1;
	atomic {
		D4_1?1
		
	};
	D5_2!1;
	atomic {
		D7_2?1
		
	};
	D5_3!1;
	atomic {
		if
		:: D0_8?1
		:: D3_3?1
		fi
	};
	D5_4!1;
	atomic {
		D0_8?1
		
	};
	D5_5!1;
	D5_6!1
}

/* ========================================================= */ 
proctype P6() {
	D6_0!1;
	atomic {
		if
		::D7_0?1
		:: (empty(D7_0) && nempty(D7_1)) -> D7_1?1
		
		fi
	};
	D6_1!1;
	atomic {
		D7_1?1
		
	};
	D6_2!1;
	atomic {
		D0_2?1
		
	};
	D6_3!1;
	atomic {
		if
		:: D0_9?1
		:: D4_3?1
		fi
	};
	D6_4!1;
	atomic {
		D0_9?1
		
	};
	D6_5!1;
	D6_6!1
}

/* ========================================================= */ 
proctype P7() {
	D7_0!1;
	atomic {
		if
		::D6_0?1
		:: (empty(D6_0) && nempty(D6_1)) -> D6_1?1
		
		fi
	};
	D7_1!1;
	atomic {
		D6_1?1
		
	};
	D7_2!1;
	atomic {
		D1_2?1
		
	};
	D7_3!1;
	atomic {
		if
		:: D0_10?1
		:: D5_3?1
		fi
	};
	D7_4!1;
	atomic {
		D0_10?1
		
	};
	D7_5!1;
	D7_6!1
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3(); run P4(); run P5(); run P6(); run P7()
}