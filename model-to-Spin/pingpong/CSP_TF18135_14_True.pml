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
chan D0_19 = [1] of {int};
chan D0_20 = [1] of {int};
chan D0_21 = [1] of {int};
chan D0_22 = [1] of {int};
chan D0_23 = [1] of {int};
chan D0_24 = [1] of {int};
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
chan D1_12 = [1] of {int};
chan D1_13 = [1] of {int};
chan D1_14 = [1] of {int};
chan D1_15 = [1] of {int};
chan D1_16 = [1] of {int};
chan D1_17 = [1] of {int};
chan D1_18 = [1] of {int};
chan D1_19 = [1] of {int};
chan D1_20 = [1] of {int};
chan D1_21 = [1] of {int};
chan D1_22 = [1] of {int};
chan D1_23 = [1] of {int};
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
		::D1_3?1
		:: (empty(D1_3) && nempty(D1_4)) -> D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		
		fi
	};
	D0_5!1;
	atomic {
		if
		::D1_4?1
		:: (empty(D1_4) && nempty(D1_5)) -> D1_5?1
		:: (empty(D1_5) && nempty(D1_6)) -> D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		
		fi
	};
	D0_6!1;
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
	D0_7!1;
	atomic {
		if
		::D1_6?1
		:: (empty(D1_6) && nempty(D1_7)) -> D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		:: (empty(D1_11) && nempty(D1_12)) -> D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		
		fi
	};
	D0_8!1;
	atomic {
		if
		::D1_7?1
		:: (empty(D1_7) && nempty(D1_8)) -> D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		:: (empty(D1_11) && nempty(D1_12)) -> D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		
		fi
	};
	D0_9!1;
	atomic {
		if
		::D1_8?1
		:: (empty(D1_8) && nempty(D1_9)) -> D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		:: (empty(D1_11) && nempty(D1_12)) -> D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		
		fi
	};
	D0_10!1;
	atomic {
		if
		::D1_9?1
		:: (empty(D1_9) && nempty(D1_10)) -> D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		:: (empty(D1_11) && nempty(D1_12)) -> D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		
		fi
	};
	D0_11!1;
	atomic {
		if
		::D1_10?1
		:: (empty(D1_10) && nempty(D1_11)) -> D1_11?1
		:: (empty(D1_11) && nempty(D1_12)) -> D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		
		fi
	};
	D0_12!1;
	atomic {
		if
		::D1_11?1
		:: (empty(D1_11) && nempty(D1_12)) -> D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_13!1;
	atomic {
		if
		::D1_12?1
		:: (empty(D1_12) && nempty(D1_13)) -> D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_14!1;
	atomic {
		if
		::D1_13?1
		:: (empty(D1_13) && nempty(D1_14)) -> D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_15!1;
	atomic {
		if
		::D1_14?1
		:: (empty(D1_14) && nempty(D1_15)) -> D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_16!1;
	atomic {
		if
		::D1_15?1
		:: (empty(D1_15) && nempty(D1_16)) -> D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_17!1;
	atomic {
		if
		::D1_16?1
		:: (empty(D1_16) && nempty(D1_17)) -> D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_18!1;
	atomic {
		if
		::D1_17?1
		:: (empty(D1_17) && nempty(D1_18)) -> D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_19!1;
	atomic {
		if
		::D1_18?1
		:: (empty(D1_18) && nempty(D1_19)) -> D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_20!1;
	atomic {
		if
		::D1_19?1
		:: (empty(D1_19) && nempty(D1_20)) -> D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_21!1;
	atomic {
		if
		::D1_20?1
		:: (empty(D1_20) && nempty(D1_21)) -> D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_22!1;
	atomic {
		if
		::D1_21?1
		:: (empty(D1_21) && nempty(D1_22)) -> D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_23!1;
	atomic {
		if
		::D1_22?1
		:: (empty(D1_22) && nempty(D1_23)) -> D1_23?1
		
		fi
	};
	D0_24!1;
	atomic {
		D1_23?1
		
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
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		
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
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		
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
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		
		fi
	};
	D1_7!1;
	atomic {
		if
		:: D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		fi
	};
	D1_8!1;
	atomic {
		if
		::D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		
		fi
	};
	D1_9!1;
	atomic {
		if
		:: D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		fi
	};
	D1_10!1;
	atomic {
		if
		:: D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		fi
	};
	D1_11!1;
	atomic {
		if
		::D0_10?1
		:: (empty(D0_10) && nempty(D0_11)) -> D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_12!1;
	atomic {
		if
		::D0_11?1
		:: (empty(D0_11) && nempty(D0_12)) -> D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_13!1;
	atomic {
		if
		::D0_12?1
		:: (empty(D0_12) && nempty(D0_13)) -> D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_14!1;
	atomic {
		if
		::D0_13?1
		:: (empty(D0_13) && nempty(D0_14)) -> D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_15!1;
	atomic {
		if
		::D0_14?1
		:: (empty(D0_14) && nempty(D0_15)) -> D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_16!1;
	atomic {
		if
		::D0_15?1
		:: (empty(D0_15) && nempty(D0_16)) -> D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_17!1;
	atomic {
		if
		::D0_16?1
		:: (empty(D0_16) && nempty(D0_17)) -> D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_18!1;
	atomic {
		if
		::D0_17?1
		:: (empty(D0_17) && nempty(D0_18)) -> D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_19!1;
	atomic {
		if
		::D0_18?1
		:: (empty(D0_18) && nempty(D0_19)) -> D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_20!1;
	atomic {
		if
		::D0_19?1
		:: (empty(D0_19) && nempty(D0_20)) -> D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_21!1;
	atomic {
		if
		::D0_20?1
		:: (empty(D0_20) && nempty(D0_21)) -> D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_22!1;
	atomic {
		if
		::D0_21?1
		:: (empty(D0_21) && nempty(D0_22)) -> D0_22?1
		:: (empty(D0_22) && nempty(D0_23)) -> D0_23?1
		:: (empty(D0_23) && nempty(D0_24)) -> D0_24?1
		
		fi
	};
	D1_23!1
}

/* ========================================================= */ 
init {
		x0=0; x1=0; run P0(); run P1()
}