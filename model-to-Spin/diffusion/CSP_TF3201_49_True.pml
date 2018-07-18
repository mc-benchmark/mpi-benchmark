chan D0_0 = [1] of {int};
chan D0_1 = [1] of {int};
chan D0_2 = [1] of {int};
chan D0_3 = [1] of {int};
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D1_2 = [1] of {int};
chan D1_3 = [1] of {int};
chan D1_4 = [1] of {int};
chan D1_5 = [1] of {int};
chan D2_0 = [1] of {int};
chan D2_1 = [1] of {int};
chan D2_2 = [1] of {int};
chan D2_3 = [1] of {int};
chan D2_4 = [1] of {int};
chan D2_5 = [1] of {int};
chan D3_0 = [1] of {int};
chan D3_1 = [1] of {int};
chan D3_2 = [1] of {int};
chan D3_3 = [1] of {int};
chan D3_4 = [1] of {int};
chan D3_5 = [1] of {int};
chan D4_0 = [1] of {int};
chan D4_1 = [1] of {int};
chan D4_2 = [1] of {int};
chan D4_3 = [1] of {int};
chan D4_4 = [1] of {int};
chan D4_5 = [1] of {int};
chan D5_0 = [1] of {int};
chan D5_1 = [1] of {int};
chan D5_2 = [1] of {int};
chan D5_3 = [1] of {int};
chan D5_4 = [1] of {int};
chan D5_5 = [1] of {int};
int x0;

/* ========================================================= */ 
proctype P0() {
	atomic {
		if
		:: D1_0?1
		:: D2_0?1
		:: D3_0?1
		:: D4_0?1
		:: D5_0?1
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
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	atomic {
		if
		:: D1_0?1
		:: (empty(D1_0) && nempty(D1_1)) -> D1_1?1
		:: (empty(D1_1) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: D2_0?1
		:: (empty(D2_0) && nempty(D2_1)) -> D2_1?1
		:: (empty(D2_1) && nempty(D2_2)) -> D2_2?1
		:: D3_0?1
		:: (empty(D3_0) && nempty(D3_1)) -> D3_1?1
		:: D4_0?1
		:: (empty(D4_0) && nempty(D4_1)) -> D4_1?1
		:: (empty(D4_1) && nempty(D4_3)) -> D4_3?1
		:: D5_0?1
		:: (empty(D5_0) && nempty(D5_1)) -> D5_1?1
		fi
	};
	x0++;
	x0==6;
	D0_0!1;
	atomic {
		if
		::D2_0?1
		:: (empty(D2_0) && nempty(D2_2)) -> D2_2?1
		
		fi
	};
	D0_1!1;
	atomic {
		if
		::D4_0?1
		:: (empty(D4_0) && nempty(D4_3)) -> D4_3?1
		
		fi
	};
	D0_2!1;
	atomic {
		if
		::D1_0?1
		:: (empty(D1_0) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		
		fi
	};
	D0_3!1;
	atomic {
		if
		::D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	D1_0!1;
	D1_1!1;
	x0++;
	x0==6;
	D1_2!1;
	atomic {
		D3_2?1
		
	};
	D1_3!1;
	atomic {
		D5_3?1
		
	};
	D1_4!1;
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_3)) -> D0_3?1
		
		fi
	};
	D1_5!1;
	atomic {
		D0_3?1
		
	}
}

/* ========================================================= */ 
proctype P2() {
	D2_0!1;
	D2_1!1;
	x0++;
	x0==6;
	D2_2!1;
	atomic {
		D4_2?1
		
	};
	D2_3!1;
	atomic {
		D0_1?1
		
	};
	D2_4!1;
	atomic {
		if
		::D3_4?1
		:: (empty(D3_4) && nempty(D3_5)) -> D3_5?1
		
		fi
	};
	D2_5!1;
	atomic {
		D3_5?1
		
	}
}

/* ========================================================= */ 
proctype P3() {
	D3_0!1;
	D3_1!1;
	x0++;
	x0==6;
	D3_2!1;
	atomic {
		D5_2?1
		
	};
	D3_3!1;
	atomic {
		D1_3?1
		
	};
	D3_4!1;
	atomic {
		if
		::D2_4?1
		:: (empty(D2_4) && nempty(D2_5)) -> D2_5?1
		
		fi
	};
	D3_5!1;
	atomic {
		D2_5?1
		
	}
}

/* ========================================================= */ 
proctype P4() {
	D4_0!1;
	D4_1!1;
	x0++;
	x0==6;
	D4_2!1;
	atomic {
		D0_0?1
		
	};
	D4_3!1;
	atomic {
		D2_3?1
		
	};
	D4_4!1;
	atomic {
		if
		::D5_4?1
		:: (empty(D5_4) && nempty(D5_5)) -> D5_5?1
		
		fi
	};
	D4_5!1;
	atomic {
		if
		:: D5_5?1
		fi
	}
}

/* ========================================================= */ 
proctype P5() {
	D5_0!1;
	D5_1!1;
	x0++;
	x0==6;
	D5_2!1;
	atomic {
		D1_2?1
		
	};
	D5_3!1;
	atomic {
		D3_3?1
		
	};
	D5_4!1;
	atomic {
		if
		::D4_4?1
		:: (empty(D4_4) && nempty(D4_5)) -> D4_5?1
		
		fi
	};
	D5_5!1;
	atomic {
		if
		:: D4_5?1
		fi
	}
}

/* ========================================================= */ 
init {
		x0=0; run P0(); run P1(); run P2(); run P3(); run P4(); run P5()
}