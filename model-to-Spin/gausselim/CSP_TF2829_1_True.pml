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
chan D1_0 = [1] of {int};
chan D1_1 = [1] of {int};
chan D1_2 = [1] of {int};
chan D1_3 = [1] of {int};
chan D1_4 = [1] of {int};
chan D1_5 = [1] of {int};
chan D1_6 = [1] of {int};
chan D1_7 = [1] of {int};
chan D1_8 = [1] of {int};
int x0;
int x1;
int x2;
int x3;
int x4;
int x5;

/* ========================================================= */ 
proctype P0() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	D0_0!1;
	D0_1!1;
	D0_2!1;
	D0_3!1;
	D0_4!1;
	D0_5!1;
	D0_6!1;
	D0_7!1;
	D0_8!1;
	atomic {
		if
		:: D1_0?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	D0_9!1;
	D0_10!1;
	D0_11!1;
	D0_12!1;
	D0_13!1;
	D0_14!1;
	D0_15!1;
	D0_16!1;
	D0_17!1
}

/* ========================================================= */ 
proctype P1() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_0?1
		fi
	};
	D1_0!1;
	D1_1!1;
	D1_2!1;
	D1_3!1;
	D1_4!1;
	D1_5!1;
	D1_6!1;
	D1_7!1;
	D1_8!1;
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_9?1
		
	}
}

/* ========================================================= */ 
proctype P2() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_1?1
		:: D1_1?1
		fi
	};
	atomic {
		if
		:: D0_1?1
		:: D1_1?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_10?1
		
	}
}

/* ========================================================= */ 
proctype P3() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_2?1
		:: D1_2?1
		fi
	};
	atomic {
		if
		:: D0_2?1
		:: D1_2?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_11?1
		
	}
}

/* ========================================================= */ 
proctype P4() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_3?1
		:: D1_3?1
		fi
	};
	atomic {
		if
		:: D0_3?1
		:: D1_3?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_12?1
		
	}
}

/* ========================================================= */ 
proctype P5() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_4?1
		:: D1_4?1
		fi
	};
	atomic {
		if
		:: D0_4?1
		:: D1_4?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_13?1
		
	}
}

/* ========================================================= */ 
proctype P6() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_5?1
		:: D1_5?1
		fi
	};
	atomic {
		if
		:: D0_5?1
		:: D1_5?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_14?1
		
	}
}

/* ========================================================= */ 
proctype P7() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_6?1
		:: D1_6?1
		fi
	};
	atomic {
		if
		:: D0_6?1
		:: D1_6?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_15?1
		
	}
}

/* ========================================================= */ 
proctype P8() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_7?1
		:: D1_7?1
		fi
	};
	atomic {
		if
		:: D0_7?1
		:: D1_7?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_16?1
		
	}
}

/* ========================================================= */ 
proctype P9() {
	x5++;
	x5==10;
	x4++;
	x4==10;
	atomic {
		if
		:: D0_8?1
		:: D1_8?1
		fi
	};
	atomic {
		if
		:: D0_8?1
		:: D1_8?1
		fi
	};
	x3++;
	x3==10;
	x2++;
	x2==10;
	x1++;
	x1==10;
	x0++;
	x0==10;
	atomic {
		D0_17?1
		
	}
}

/* ========================================================= */ 
init {
		x0=0; x1=0; x2=0; x3=0; x4=0; x5=0; run P0(); run P1(); run P2(); run P3(); run P4(); run P5(); run P6(); run P7(); run P8(); run P9()
}