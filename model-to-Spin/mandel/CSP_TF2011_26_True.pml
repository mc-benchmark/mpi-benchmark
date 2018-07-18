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
chan D2_0 = [1] of {int};
chan D2_1 = [1] of {int};
chan D2_2 = [1] of {int};
chan D3_0 = [1] of {int};
chan D3_1 = [1] of {int};

/* ========================================================= */ 
proctype P0() {
	D0_0!1;
	D0_1!1;
	D0_2!1;
	D0_3!1;
	D0_4!1;
	D0_5!1;
	D0_6!1;
	D0_7!1;
	D0_8!1;
	D0_9!1;
	D0_10!1;
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
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
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
		::D0_3?1
		:: (empty(D0_3) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_8)) -> D0_8?1
		
		fi
	};
	D1_1!1;
	atomic {
		if
		::D0_6?1
		:: (empty(D0_6) && nempty(D0_8)) -> D0_8?1
		
		fi
	};
	D1_2!1;
	atomic {
		D0_8?1
		
	}
}

/* ========================================================= */ 
proctype P2() {
	atomic {
		if
		:: D0_1?1
		fi
	};
	D2_0!1;
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_4)) -> D0_4?1
		:: (empty(D0_4) && nempty(D0_7)) -> D0_7?1
		
		fi
	};
	D2_1!1;
	atomic {
		if
		::D0_4?1
		:: (empty(D0_4) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_9)) -> D0_9?1
		
		fi
	};
	D2_2!1;
	atomic {
		if
		::D0_7?1
		:: (empty(D0_7) && nempty(D0_9)) -> D0_9?1
		
		fi
	}
}

/* ========================================================= */ 
proctype P3() {
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_5)) -> D0_5?1
		
		fi
	};
	D3_0!1;
	atomic {
		if
		::D0_5?1
		:: (empty(D0_5) && nempty(D0_10)) -> D0_10?1
		
		fi
	};
	D3_1!1;
	atomic {
		D0_10?1
		
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3()
}