chan D0_0 = [1] of {int};
chan D0_1 = [1] of {int};
chan D0_2 = [1] of {int};
chan D0_3 = [1] of {int};
chan D0_4 = [1] of {int};
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D1_2 = [1] of {int};
chan D1_3 = [1] of {int};
chan D1_4 = [1] of {int};
chan D1_5 = [1] of {int};
chan D1_6 = [1] of {int};

/* ========================================================= */ 
proctype P0() {
	D0_0!1;
	atomic {
		if
		::D0_0?1
		:: (empty(D0_0) && nempty(D0_1)) -> D0_1?1
		
		fi
	};
	D0_1!1;
	atomic {
		D0_1?1
		
	};
	D0_2!1;
	atomic {
		if
		::D1_2?1
		:: (empty(D1_2) && nempty(D1_3)) -> D1_3?1
		:: (empty(D1_3) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		
		fi
	};
	D0_3!1;
	atomic {
		if
		:: D1_3?1
		fi
	};
	atomic {
		D1_4?1
		
	};
	D0_4!1;
	atomic {
		if
		::D1_3?1
		:: (empty(D1_3) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		
		fi
	};
	atomic {
		if
		::D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	D1_0!1;
	atomic {
		if
		::D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		
		fi
	};
	D1_1!1;
	atomic {
		D1_1?1
		
	};
	D1_2!1;
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_3)) -> D0_3?1
		
		fi
	};
	D1_3!1;
	atomic {
		if
		:: D0_3?1
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
init {
	run P0(); run P1()
}