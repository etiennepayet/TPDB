(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l13 Loc)
(declare-const l14 Loc)
(declare-const l15 Loc)
(declare-const l16 Loc)
(declare-const l17 Loc)
(declare-const l18 Loc)
(declare-const l19 Loc)
(declare-const l20 Loc)
(declare-const l21 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21))

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

(define-fun init_main ( (pc^0 Loc) (c1^0 Int) (c2^0 Int) (m^0 Int) (max^0 Int) (n^0 Int) (pi^0 Int) (pos^0 Int) (seq^0 Int) (wpos^0 Int) (z^0 Int) ) Bool
  (cfg_init pc^0 l21 true))

(define-fun next_main (
                 (pc^0 Loc) (c1^0 Int) (c2^0 Int) (m^0 Int) (max^0 Int) (n^0 Int) (pi^0 Int) (pos^0 Int) (seq^0 Int) (wpos^0 Int) (z^0 Int)
                 (pc^post Loc) (c1^post Int) (c2^post Int) (m^post Int) (max^post Int) (n^post Int) (pi^post Int) (pos^post Int) (seq^post Int) (wpos^post Int) (z^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 max^0) (+ 0 m^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 m^0) (+ 0 max^0)) (= m^post (+ 1 m^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (and (and (and (= seq^post (+ 1 seq^0)) (= wpos^post 0)) (= pos^post 0)) (= pi^post (+ 0 seq^post))) (= z^post z^post)) (<= 0 (+ 0 z^post))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 pi^0) 0) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 pi^0)) (<= (+ 0 c2^0) 0)) (= wpos^post 0)) (= pi^post (+ -1 pi^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 wpos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wpos^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 wpos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wpos^0) 0) (<= 1 (+ 0 c2^0))) (= wpos^post (+ 1 wpos^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l7 pc^post l3 (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 pos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 pos^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 c2^0) 1) (= m^post (+ -1 m^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 c2^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 pos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l8 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 pos^0) 0) (<= (+ 0 c2^0) 0)) (= pos^post (+ 1 pos^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l9 pc^post l3 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 z^0)) (= z^post (+ -1 z^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 z^0) 0) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (and (and (and (and (= seq^post (+ 1 seq^0)) (= wpos^post 0)) (= pos^post 0)) (= pi^post (+ 0 seq^post))) (= z^post z^post)) (<= 0 (+ 0 z^post))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l12 pc^post l10 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 pi^0) 0) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 pi^0)) (<= (+ 0 c1^0) 0)) (= wpos^post 0)) (= pi^post (+ -1 pi^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l13 pc^post l10 (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 wpos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l13 pc^post l12 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wpos^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l14 pc^post l13 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 wpos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l14 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wpos^0) 0) (<= 1 (+ 0 c1^0))) (= wpos^post (+ 1 wpos^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l15 pc^post l11 (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 pos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l15 pc^post l14 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 pos^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l11 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 c1^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l11 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 c1^0)) (= c2^post c2^post)) (<= 0 (+ 0 c2^post))) (<= (+ 0 c2^post) 1)) (= c1^0 c1^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l16 pc^post l15 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 pos^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l16 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 pos^0) 0) (<= (+ 0 c1^0) 0)) (= pos^post (+ 1 pos^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l17 pc^post l11 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 z^0)) (= z^post (+ -1 z^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)))
    (cfg_trans2 pc^0 l17 pc^post l16 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 z^0) 0) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l18 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= seq^post 1) (= wpos^post 0)) (= pi^post (+ 0 seq^post))) (= z^post z^post)) (<= 0 (+ 0 z^post))) (= pos^post 0)) (= n^post n^post)) (<= 0 (+ 0 n^post))) (= max^post max^post)) (<= 0 (+ 0 max^post))) (<= (+ 0 max^post) (+ 0 n^post))) (= m^post m^post)) (<= (+ 0 m^post) (+ 0 max^post))) (<= 0 (+ 0 m^post))) (= c1^0 c1^post)) (= c2^0 c2^post)))
    (cfg_trans2 pc^0 l19 pc^post l20 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 m^0) 0) (= c1^0 c1^post)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l19 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 m^0)) (= c1^post c1^post)) (<= 0 (+ 0 c1^post))) (<= (+ 0 c1^post) 1)) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l1 pc^post l19 (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l21 pc^post l18 (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
  )
)
