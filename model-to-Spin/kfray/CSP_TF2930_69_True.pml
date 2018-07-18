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
chan C2_0 = [0] of {int};
int x2_0;
chan C2_1 = [0] of {int};
int x2_1;
chan C2_2 = [0] of {int};
int x2_2;
chan C2_3 = [0] of {int};
int x2_3;
chan C2_4 = [0] of {int};
int x2_4;
chan C2_5 = [0] of {int};
int x2_5;
chan C3_0 = [0] of {int};
int x3_0;
chan C3_1 = [0] of {int};
int x3_1;
chan C3_2 = [0] of {int};
int x3_2;
chan C3_3 = [0] of {int};
int x3_3;
chan C3_4 = [0] of {int};
int x3_4;
chan C3_5 = [0] of {int};
int x3_5;

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
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
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
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
		fi
	};
	atomic {
		if
		:: x1_0 == 0 -> C1_0?1 -> x1_0=1
		:: (x1_0==1 && x1_1==1 && x1_2 ==0) -> C1_2?1 -> x1_2 =1 
		:: (x1_2==1 && x1_1==1 && x1_0==1 && x1_3==1 && x1_4 ==0) -> C1_4?1 -> x1_4 =1 
		:: (x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_5==1 && x1_6 ==0) -> C1_6?1 -> x1_6 =1 
		:: x2_0 == 0 -> C2_0?1 -> x2_0=1
		:: (x2_0==1 && x2_1==1 && x2_2 ==0) -> C2_2?1 -> x2_2 =1 
		:: (x2_2==1 && x2_1==1 && x2_0==1 && x2_3==1 && x2_4 ==0) -> C2_4?1 -> x2_4 =1 
		:: x3_0 == 0 -> C3_0?1 -> x3_0=1
		:: (x3_0==1 && x3_1==1 && x3_2 ==0) -> C3_2?1 -> x3_2 =1 
		:: (x3_2==1 && x3_1==1 && x3_0==1 && x3_3==1 && x3_4 ==0) -> C3_4?1 -> x3_4 =1 
		fi
	};
	atomic {
		if
		:: (x1_0==1 && x1_1 == 0) -> C1_1?1 -> x1_1=1
		:: (x1_1==1 && x1_0==1 && x1_2==1 && x1_3 ==0) -> C1_3?1 -> x1_3 =1 
		:: (x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_4==1 && x1_5 ==0) -> C1_5?1 -> x1_5 =1 
		:: (x1_5==1 && x1_4==1 && x1_3==1 && x1_2==1 && x1_1==1 && x1_0==1 && x1_6==1 && x1_7 ==0) -> C1_7?1 -> x1_7 =1 
		:: (x2_0==1 && x2_1 == 0) -> C2_1?1 -> x2_1=1
		:: (x2_1==1 && x2_0==1 && x2_2==1 && x2_3 ==0) -> C2_3?1 -> x2_3 =1 
		:: (x2_3==1 && x2_2==1 && x2_1==1 && x2_0==1 && x2_4==1 && x2_5 ==0) -> C2_5?1 -> x2_5 =1 
		:: (x3_0==1 && x3_1 == 0) -> C3_1?1 -> x3_1=1
		:: (x3_1==1 && x3_0==1 && x3_2==1 && x3_3 ==0) -> C3_3?1 -> x3_3 =1 
		:: (x3_3==1 && x3_2==1 && x3_1==1 && x3_0==1 && x3_4==1 && x3_5 ==0) -> C3_5?1 -> x3_5 =1 
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
	C1_0!1;
	C1_1!1;
	atomic {
		if
		:: D0_3?1
		:: (empty(D0_3) && nempty(D0_6)) -> D0_6?1
		fi
	};
	C1_2!1;
	C1_3!1;
	atomic {
		if
		:: D0_3?1
		:: (empty(D0_3) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_9)) -> D0_9?1
		fi
	};
	C1_4!1;
	C1_5!1;
	atomic {
		if
		::D0_3?1
		:: (empty(D0_3) && nempty(D0_6)) -> D0_6?1
		:: (empty(D0_6) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		
		fi
	};
	C1_6!1;
	C1_7!1;
	atomic {
		if
		::D0_6?1
		:: (empty(D0_6) && nempty(D0_9)) -> D0_9?1
		:: (empty(D0_9) && nempty(D0_10)) -> D0_10?1
		
		fi
	}
}

/* ========================================================= */ 
proctype P2() {
	atomic {
		if
		::D0_1?1
		:: (empty(D0_1) && nempty(D0_4)) -> D0_4?1
		
		fi
	};
	C2_0!1;
	C2_1!1;
	atomic {
		if
		::D0_4?1
		:: (empty(D0_4) && nempty(D0_7)) -> D0_7?1
		:: (empty(D0_7) && nempty(D0_11)) -> D0_11?1
		
		fi
	};
	C2_2!1;
	C2_3!1;
	atomic {
		if
		::D0_7?1
		:: (empty(D0_7) && nempty(D0_11)) -> D0_11?1
		
		fi
	};
	C2_4!1;
	C2_5!1;
	atomic {
		D0_11?1
		
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
	C3_0!1;
	C3_1!1;
	atomic {
		if
		::D0_5?1
		:: (empty(D0_5) && nempty(D0_8)) -> D0_8?1
		:: (empty(D0_8) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	C3_2!1;
	C3_3!1;
	atomic {
		if
		::D0_8?1
		:: (empty(D0_8) && nempty(D0_12)) -> D0_12?1
		
		fi
	};
	C3_4!1;
	C3_5!1;
	atomic {
		D0_12?1
		
	}
}

/* ========================================================= */ 
init {
	run P0(); run P1(); run P2(); run P3()
}