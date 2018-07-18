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
chan D0_13 = [1] of {int};
chan D0_14 = [1] of {int};
chan D0_15 = [1] of {int};
chan D0_16 = [1] of {int};
chan D0_17 = [1] of {int};
chan D0_18 = [1] of {int};
chan C1_0 = [0] of {int};
int x1_0;
chan C1_1 = [0] of {int};
int x1_1;
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan C2_0 = [0] of {int};
int x2_0;
chan C2_1 = [0] of {int};
int x2_1;
chan D2_0 = [1] of {int};
chan D2_1 = [1] of {int};
chan C3_0 = [0] of {int};
int x3_0;
chan C3_1 = [0] of {int};
int x3_1;
chan C4_0 = [0] of {int};
int x4_0;
chan C4_1 = [0] of {int};
int x4_1;
chan C5_0 = [0] of {int};
int x5_0;
chan C5_1 = [0] of {int};
int x5_1;

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
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && nempty(D1_1)) -> D1_1?1
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && nempty(D2_1)) -> D2_1?1
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && nempty(D1_0)) -> D1_0?1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && nempty(D2_0)) -> D2_0?1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && nempty(D1_1)) -> D1_1?1
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && nempty(D2_1)) -> D2_1?1
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && nempty(D1_0)) -> D1_0?1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && nempty(D2_0)) -> D2_0?1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && nempty(D1_1)) -> D1_1?1
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && nempty(D2_1)) -> D2_1?1
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && nempty(D1_0)) -> D1_0?1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && nempty(D2_0)) -> D2_0?1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && nempty(D1_1)) -> D1_1?1
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && nempty(D2_1)) -> D2_1?1
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && nempty(D1_0)) -> D1_0?1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && nempty(D2_0)) -> D2_0?1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && nempty(D1_1)) -> D1_1?1
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && nempty(D2_1)) -> D2_1?1
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		fi
	};
	D0_10!1;
	D0_11!1;
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && nempty(D1_0)) -> D1_0?1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && nempty(D2_0)) -> D2_0?1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		::(x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && nempty(D1_1)) -> D1_1?1
		
		fi
	};
	D0_12!1;
	D0_13!1;
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && nempty(D1_0)) -> D1_0?1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && nempty(D2_0)) -> D2_0?1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		fi
	};
	atomic {
		if
		::(x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && nempty(D2_1)) -> D2_1?1
		
		fi
	};
	D0_14!1;
	D0_15!1;
	D0_16!1;
	D0_17!1;
	D0_18!1
}

/* ========================================================= */ 
proctype P1() {
	atomic {
		if
		:: D0_0?1
		fi
	};
	atomic {
		if
		::D0_5?1
		:: (empty(D0_5) && nempty(D0_11)) -> D0_11?1
		
		fi
	};
	C1_0!1;
	C1_1!1;
	atomic {
		if
		:: D0_0?1
		:: (empty(D0_0) && nempty(D0_10)) -> D0_10?1
		fi
	};
	atomic {
		D0_11?1
		
	};
	D1_0!1;
	D1_1!1;
	atomic {
		if
		:: D0_0?1
		:: (empty(D0_0) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_14)) -> D0_14?1
		fi
	}
}

/* ========================================================= */ 
proctype P2() {
	atomic {
		if
		:: D0_1?1
		fi
	};
	atomic {
		if
		::D0_6?1
		:: (empty(D0_6) && nempty(D0_13)) -> D0_13?1
		
		fi
	};
	C2_0!1;
	C2_1!1;
	atomic {
		if
		:: D0_1?1
		:: (empty(D0_1) && nempty(D0_12)) -> D0_12?1
		fi
	};
	atomic {
		D0_13?1
		
	};
	D2_0!1;
	D2_1!1;
	atomic {
		if
		:: D0_1?1
		:: (empty(D0_1) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_15)) -> D0_15?1
		fi
	}
}

/* ========================================================= */ 
proctype P3() {
	atomic {
		if
		:: D0_2?1
		fi
	};
	atomic {
		D0_7?1
		
	};
	C3_0!1;
	C3_1!1;
	atomic {
		if
		:: D0_2?1
		:: (empty(D0_2) && nempty(D0_16)) -> D0_16?1
		fi
	}
}

/* ========================================================= */ 
proctype P4() {
	atomic {
		if
		:: D0_3?1
		fi
	};
	atomic {
		D0_8?1
		
	};
	C4_0!1;
	C4_1!1;
	atomic {
		if
		:: D0_3?1
		:: (empty(D0_3) && nempty(D0_17)) -> D0_17?1
		fi
	}
}

/* ========================================================= */ 
proctype P5() {
	atomic {
		if
		:: D0_4?1
		fi
	};
	atomic {
		D0_9?1
		
	};
	C5_0!1;
	C5_1!1;
	atomic {
		if
		::D0_4?1
		:: (empty(D0_4) && nempty(D0_18)) -> D0_18?1
		
		fi
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3(); run P4(); run P5()
}