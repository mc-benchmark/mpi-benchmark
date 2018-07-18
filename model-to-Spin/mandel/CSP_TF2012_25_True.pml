chan D0_0 = [1] of {int};
chan D0_1 = [1] of {int};
chan D0_2 = [1] of {int};
chan D0_3 = [1] of {int};
chan D0_4 = [1] of {int};
chan D0_5 = [1] of {int};
chan D0_6 = [1] of {int};
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D2_0 = [1] of {int};
chan D3_0 = [1] of {int};

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
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: D2_0?1
		:: D3_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: D2_0?1
		:: D3_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: D2_0?1
		:: D3_0?1
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	atomic {
		if
		::D0_0?1
		:: (empty(D0_0) && nempty(D0_3)) -> D0_3?1
		
		fi
	};
	D1_0!1;
	atomic {
		if
		:: D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		fi
	};
	D1_1!1;
	atomic {
		if
		::D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		
		fi
	}
}

/* ========================================================= */ 
proctype P2() {
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_5)) -> D0_5?1
		
		fi
	};
	D2_0!1;
	atomic {
		if
		:: D0_5?1
		fi
	}
}

/* ========================================================= */ 
proctype P3() {
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_6)) -> D0_6?1
		
		fi
	};
	D3_0!1;
	atomic {
		D0_6?1
		
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3()
}