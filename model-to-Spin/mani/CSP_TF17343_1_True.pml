chan D0_0 = [1] of {int};
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D1_2 = [1] of {int};
chan D1_3 = [1] of {int};

/* ========================================================= */ 
proctype P0() {
	D0_0!1;
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
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_2)) -> D1_2?1
		:: (empty(D1_2) && nempty(D1_3)) -> D1_3?1
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	atomic {
		D0_0?1
		
	};
	D1_0!1;
	D1_1!1;
	D1_2!1;
	D1_3!1
}

/* ========================================================= */ 
init {
	run P0(); run P1()
}