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
chan C1_0 = [0] of {int};
int x1_0;
chan C1_1 = [0] of {int};
int x1_1;
chan C1_2 = [0] of {int};
int x1_2;
chan C1_3 = [0] of {int};
int x1_3;
chan C1_4 = [0] of {int};
int x1_4;
chan C1_5 = [0] of {int};
int x1_5;
chan C1_6 = [0] of {int};
int x1_6;
chan C1_7 = [0] of {int};
int x1_7;
chan C1_8 = [0] of {int};
int x1_8;
chan C1_9 = [0] of {int};
int x1_9;
chan C1_10 = [0] of {int};
int x1_10;
chan C1_11 = [0] of {int};
int x1_11;
chan C1_12 = [0] of {int};
int x1_12;
chan C1_13 = [0] of {int};
int x1_13;
chan C1_14 = [0] of {int};
int x1_14;
chan C1_15 = [0] of {int};
int x1_15;
chan C1_16 = [0] of {int};
int x1_16;
chan C1_17 = [0] of {int};
int x1_17;
chan C1_18 = [0] of {int};
int x1_18;
chan C1_19 = [0] of {int};
int x1_19;

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
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: (x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_7==1 && x1_8 ==0) -> C1_8?1 -> x1_8 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		:: (x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_10==1 && x1_11 ==0) -> C1_11?1 -> x1_11 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: (x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_7==1 && x1_8 ==0) -> C1_8?1 -> x1_8 =1 
		:: (x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_9==1 && x1_10 ==0) -> C1_10?1 -> x1_10 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		:: (x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_10==1 && x1_11 ==0) -> C1_11?1 -> x1_11 =1 
		:: (x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_12==1 && x1_13 ==0) -> C1_13?1 -> x1_13 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: (x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_7==1 && x1_8 ==0) -> C1_8?1 -> x1_8 =1 
		:: (x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_9==1 && x1_10 ==0) -> C1_10?1 -> x1_10 =1 
		:: (x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_11==1 && x1_12 ==0) -> C1_12?1 -> x1_12 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		:: (x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_10==1 && x1_11 ==0) -> C1_11?1 -> x1_11 =1 
		:: (x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_12==1 && x1_13 ==0) -> C1_13?1 -> x1_13 =1 
		:: (x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_14==1 && x1_15 ==0) -> C1_15?1 -> x1_15 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: (x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_7==1 && x1_8 ==0) -> C1_8?1 -> x1_8 =1 
		:: (x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_9==1 && x1_10 ==0) -> C1_10?1 -> x1_10 =1 
		:: (x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_11==1 && x1_12 ==0) -> C1_12?1 -> x1_12 =1 
		:: (x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_13==1 && x1_14 ==0) -> C1_14?1 -> x1_14 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		:: (x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_10==1 && x1_11 ==0) -> C1_11?1 -> x1_11 =1 
		:: (x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_12==1 && x1_13 ==0) -> C1_13?1 -> x1_13 =1 
		:: (x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_14==1 && x1_15 ==0) -> C1_15?1 -> x1_15 =1 
		:: (x1_15==1 && x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_16==1 && x1_17 ==0) -> C1_17?1 -> x1_17 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: (x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_7==1 && x1_8 ==0) -> C1_8?1 -> x1_8 =1 
		:: (x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_9==1 && x1_10 ==0) -> C1_10?1 -> x1_10 =1 
		:: (x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_11==1 && x1_12 ==0) -> C1_12?1 -> x1_12 =1 
		:: (x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_13==1 && x1_14 ==0) -> C1_14?1 -> x1_14 =1 
		:: (x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_15==1 && x1_16 ==0) -> C1_16?1 -> x1_16 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		:: (x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_10==1 && x1_11 ==0) -> C1_11?1 -> x1_11 =1 
		:: (x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_12==1 && x1_13 ==0) -> C1_13?1 -> x1_13 =1 
		:: (x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_14==1 && x1_15 ==0) -> C1_15?1 -> x1_15 =1 
		:: (x1_15==1 && x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_16==1 && x1_17 ==0) -> C1_17?1 -> x1_17 =1 
		:: (x1_17==1 && x1_16==1 && x1_15==1 && x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_18==1 && x1_19 ==0) -> C1_19?1 -> x1_19 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: (x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_7==1 && x1_8 ==0) -> C1_8?1 -> x1_8 =1 
		:: (x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_9==1 && x1_10 ==0) -> C1_10?1 -> x1_10 =1 
		:: (x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_11==1 && x1_12 ==0) -> C1_12?1 -> x1_12 =1 
		:: (x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_13==1 && x1_14 ==0) -> C1_14?1 -> x1_14 =1 
		:: (x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_15==1 && x1_16 ==0) -> C1_16?1 -> x1_16 =1 
		:: (x1_16==1 && x1_15==1 && x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_17==1 && x1_18 ==0) -> C1_18?1 -> x1_18 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_8==1 && x1_9 ==0) -> C1_9?1 -> x1_9 =1 
		:: (x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_10==1 && x1_11 ==0) -> C1_11?1 -> x1_11 =1 
		:: (x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_12==1 && x1_13 ==0) -> C1_13?1 -> x1_13 =1 
		:: (x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_14==1 && x1_15 ==0) -> C1_15?1 -> x1_15 =1 
		:: (x1_15==1 && x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_16==1 && x1_17 ==0) -> C1_17?1 -> x1_17 =1 
		:: (x1_17==1 && x1_16==1 && x1_15==1 && x1_14==1 && x1_13==1 && x1_12==1 && x1_11==1 && x1_10==1 && x1_9==1 && x1_8==1 && x1_7==1 && x1_6==1 && x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_18==1 && x1_19 ==0) -> C1_19?1 -> x1_19 =1 
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
	C1_0!1;
	C1_1!1;
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_2)) -> D0_2?1
		:: (empty(D0_2) && nempty(D0_3)) -> D0_3?1
		
		fi
	};
	C1_2!1;
	C1_3!1;
	atomic {
		if
		::D0_2?1
		:: (empty(D0_2) && nempty(D0_3)) -> D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		
		fi
	};
	C1_4!1;
	C1_5!1;
	atomic {
		if
		:: D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		fi
	};
	C1_6!1;
	C1_7!1;
	atomic {
		if
		::D0_3?1
		:: (empty(D0_3) && nempty(D0_4)) -> D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		
		fi
	};
	C1_8!1;
	C1_9!1;
	atomic {
		if
		:: D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		fi
	};
	C1_10!1;
	C1_11!1;
	atomic {
		if
		::D0_4?1
		:: (empty(D0_4) && nempty(D0_5)) -> D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		
		fi
	};
	C1_12!1;
	C1_13!1;
	atomic {
		if
		:: D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		fi
	};
	C1_14!1;
	C1_15!1;
	atomic {
		if
		:: D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		fi
	};
	C1_16!1;
	C1_17!1;
	atomic {
		if
		:: D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		fi
	};
	C1_18!1;
	C1_19!1;
	atomic {
		if
		:: D0_5?1
		:: (empty(D0_5) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		fi
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1()
}