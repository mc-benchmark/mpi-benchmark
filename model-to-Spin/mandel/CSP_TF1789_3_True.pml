chan D0_0 = [1] of {int};
chan D0_1 = [1] of {int};
chan D0_2 = [1] of {int};
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};

/* ========================================================= */ 
proctype P0() {
	D0_0!1;
	D0_1!1;
	D0_2!1;
	atomic {
		if
		:: D1_0?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	atomic {
		if
		::D0_0?1
		:: (empty(D0_0) && nempty(D0_1)) -> D0_1?1
		
		fi
	};
	D1_0!1;
	atomic {
		if
		:: D0_1?1
		:: (empty(D0_1) && nempty(D0_2)) -> D0_2?1
		fi
	};
	D1_1!1;
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_2)) -> D0_2?1
		
		fi
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1()
}