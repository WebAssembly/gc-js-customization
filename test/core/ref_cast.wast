(module
  (type $t0 (struct))
  (type $t1 (sub $t0 (struct (field i32))))
  (type $t1' (sub $t0 (struct (field i32))))
  (type $t2 (sub $t1 (struct (field i32 i32))))
  (type $t2' (sub $t1' (struct (field i32 i32))))
  (type $t3 (sub $t0 (struct (field i32 i32))))
  (type $t0' (sub $t0 (struct)))
  (type $t4 (sub $t0' (struct (field i32 i32))))

  (global $t0 (rtt $t0) (rtt.canon $t0))
  (global $t0' (rtt $t0) (rtt.canon $t0))
  (global $t1 (rtt $t1) (rtt.canon $t1))
  (global $t1' (rtt $t1') (rtt.canon $t1'))
  (global $t2 (rtt $t2) (rtt.canon $t2))
  (global $t2' (rtt $t2') (rtt.canon $t2'))
  (global $t3 (rtt $t3) (rtt.canon $t3))
  (global $t4 (rtt $t4) (rtt.canon $t4))

  (table 20 (ref null data))

  (func $init
    (table.set (i32.const 0) (struct.new_default $t0 (global.get $t0)))
    (table.set (i32.const 10) (struct.new_default $t0 (global.get $t0')))
    (table.set (i32.const 1) (struct.new_default $t1 (global.get $t1)))
    (table.set (i32.const 11) (struct.new_default $t1' (global.get $t1')))
    (table.set (i32.const 2) (struct.new_default $t2 (global.get $t2)))
    (table.set (i32.const 12) (struct.new_default $t2' (global.get $t2')))
    (table.set (i32.const 3) (struct.new_default $t3 (global.get $t3)))
    (table.set (i32.const 4) (struct.new_default $t4 (global.get $t4)))
  )

  (func (export "test-sub")
    (call $init)

    (drop (ref.cast (ref.null data) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 0)) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 1)) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 2)) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 3)) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 4)) (global.get $t0)))

    (drop (ref.cast (ref.null data) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 1)) (global.get $t1)))
    (drop (ref.cast (table.get (i32.const 2)) (global.get $t1)))

    (drop (ref.cast (ref.null data) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 2)) (global.get $t2)))

    (drop (ref.cast (ref.null data) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 3)) (global.get $t3)))

    (drop (ref.cast (ref.null data) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 4)) (global.get $t4)))
  )

  (func (export "test-canon")
    (call $init)

    (drop (ref.cast (table.get (i32.const 0)) (global.get $t0')))
    (drop (ref.cast (table.get (i32.const 1)) (global.get $t0')))
    (drop (ref.cast (table.get (i32.const 2)) (global.get $t0')))
    (drop (ref.cast (table.get (i32.const 3)) (global.get $t0')))
    (drop (ref.cast (table.get (i32.const 4)) (global.get $t0')))

    (drop (ref.cast (table.get (i32.const 10)) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 11)) (global.get $t0)))
    (drop (ref.cast (table.get (i32.const 12)) (global.get $t0)))

    (drop (ref.cast (table.get (i32.const 1)) (global.get $t1')))
    (drop (ref.cast (table.get (i32.const 2)) (global.get $t1')))

    (drop (ref.cast (table.get (i32.const 11)) (global.get $t1)))
    (drop (ref.cast (table.get (i32.const 12)) (global.get $t1)))

    (drop (ref.cast (table.get (i32.const 2)) (global.get $t2')))

    (drop (ref.cast (table.get (i32.const 12)) (global.get $t2)))
  )
)

(invoke "test-sub")
(invoke "test-canon")
