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
chan C1_0 = [0] of {int};
int x1_0;
chan C1_1 = [0] of {int};
int x1_1;
chan C1_2 = [0] of {int};
int x1_2;
chan C1_3 = [0] of {int};
int x1_3;
chan C2_0 = [0] of {int};
int x2_0;
chan C2_1 = [0] of {int};
int x2_1;
chan C2_2 = [0] of {int};
int x2_2;
chan C2_3 = [0] of {int};
int x2_3;
chan C3_0 = [0] of {int};
int x3_0;
chan C3_1 = [0] of {int};
int x3_1;
chan C3_2 = [0] of {int};
int x3_2;
chan C3_3 = [0] of {int};
int x3_3;
chan C4_0 = [0] of {int};
int x4_0;
chan C4_1 = [0] of {int};
int x4_1;
chan C5_0 = [0] of {int};
int x5_0;
chan C5_1 = [0] of {int};
int x5_1;
chan C6_0 = [0] of {int};
int x6_0;
chan C6_1 = [0] of {int};
int x6_1;
chan C7_0 = [0] of {int};
int x7_0;
chan C7_1 = [0] of {int};
int x7_1;

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
	D0_11!1;
	D0_12!1;
	D0_13!1;
	D0_14!1;
	D0_15!1;
	D0_16!1;
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: x4_0 == 0 -> C4_0?1 -> x4_0=1
		:: x5_0 == 0 -> C5_0?1 -> x5_0=1
		:: x6_0 == 0 -> C6_0?1 -> x6_0=1
		:: x7_0 == 0 -> C7_0?1 -> x7_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x4_0==1 && x4_1 == 0) -> C4_1?1 -> x4_1=1
		:: (x5_0==1 && x5_1 == 0) -> C5_1?1 -> x5_1=1
		:: (x6_0==1 && x6_1 == 0) -> C6_1?1 -> x6_1=1
		:: (x7_0==1 && x7_1 == 0) -> C7_1?1 -> x7_1=1
		fi
	}
}

/* ========================================================= */ 
proctype P1() {
	atomic {
		if
		::D0_0?1
		:: (empty(D0_0) && nempty(D0_7)) -> D0_7?1
		
		fi
	};
	C1_0!1;
	C1_1!1;
	atomic {
		if
		:: D0_7?1
		:: (empty(D0_7) && nempty(D0_10)) -> D0_10?1
		fi
	};
	C1_2!1;
	C1_3!1;
	atomic {
		if
		:: D0_7?1
		:: (empty(D0_7) && nempty(D0_10)) -> D0_10?1
		fi
	}
}

/* ========================================================= */ 
proctype P2() {
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_8)) -> D0_8?1
		
		fi
	};
	C2_0!1;
	C2_1!1;
	atomic {
		if
		::D0_8?1
		:: (empty(D0_8) && nempty(D0_11)) -> D0_11?1
		
		fi
	};
	C2_2!1;
	C2_3!1;
	atomic {
		D0_11?1
		
	}
}

/* ========================================================= */ 
proctype P3() {
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_9)) -> D0_9?1
		
		fi
	};
	C3_0!1;
	C3_1!1;
	atomic {
		if
		::D0_9?1
		:: (empty(D0_9) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	C3_2!1;
	C3_3!1;
	atomic {
		D0_12?1
		
	}
}

/* ========================================================= */ 
proctype P4() {
	atomic {
		if
		::D0_3?1
		:: (empty(D0_3) && nempty(D0_13)) -> D0_13?1
		
		fi
	};
	C4_0!1;
	C4_1!1;
	atomic {
		D0_13?1
		
	}
}

/* ========================================================= */ 
proctype P5() {
	atomic {
		if
		::D0_4?1
		:: (empty(D0_4) && nempty(D0_14)) -> D0_14?1
		
		fi
	};
	C5_0!1;
	C5_1!1;
	atomic {
		D0_14?1
		
	}
}

/* ========================================================= */ 
proctype P6() {
	atomic {
		if
		::D0_5?1
		:: (empty(D0_5) && nempty(D0_15)) -> D0_15?1
		
		fi
	};
	C6_0!1;
	C6_1!1;
	atomic {
		D0_15?1
		
	}
}

/* ========================================================= */ 
proctype P7() {
	atomic {
		if
		::D0_6?1
		:: (empty(D0_6) && nempty(D0_16)) -> D0_16?1
		
		fi
	};
	C7_0!1;
	C7_1!1;
	atomic {
		if
		:: D0_16?1
		fi
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3(); run P4(); run P5(); run P6(); run P7()
}