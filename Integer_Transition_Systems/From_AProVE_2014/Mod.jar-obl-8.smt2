(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f248_0_mod_LT Loc)
(declare-const f319_0_minus_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f248_0_mod_LT f319_0_minus_EQ __init ))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f248_0_mod_LT (and (and (and (> arg2P (- 1)) (> arg2 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f248_0_mod_LT pc1 f319_0_minus_EQ (and (and (and (and (and (<= arg2 arg1) (> arg2 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= arg2 arg3P)) (= arg2 arg4P)))
    (cfg_trans2 pc f319_0_minus_EQ pc1 f248_0_mod_LT (and (and (and (= 0 arg3) (= 0 arg4)) (= arg2 arg1P)) (= arg1 arg2P)))
    (cfg_trans2 pc f319_0_minus_EQ pc1 f319_0_minus_EQ (and (and (and (and (and (and (< arg3 0) (< arg3 1)) (= arg3 arg4)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= (+ arg3 1) arg3P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f319_0_minus_EQ pc1 f319_0_minus_EQ (and (and (and (and (and (and (> arg3 0) (< arg3 1)) (= arg3 arg4)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= (+ arg3 1) arg3P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f319_0_minus_EQ pc1 f319_0_minus_EQ (and (and (and (and (and (> arg3 0) (= arg3 arg4)) (= arg1 arg1P)) (= (- arg2 1) arg2P)) (= (- arg3 1) arg3P)) (= (- arg3 1) arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
