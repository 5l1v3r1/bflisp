def emit_print(m)
  m.each_byte{|b|
    puts "mov a, #{b}"
    puts "putc a"
  }
end

JMP_INSTS = %w(jeq jne jlt jgt jle jge)

cnt = 0
6.times do |i|
  inst = JMP_INSTS[i]
  emit_print(inst + ": ")
  [[999, 1000], [1000, 1000], [1001, 1000]].each do |lhs, rhs|
    puts "mov a, #{lhs}"
    puts "#{inst} t#{cnt}, a, #{rhs}"
    emit_print("F")
    puts "jmp d#{cnt}"
    puts "t#{cnt}:"
    emit_print("T")
    puts "d#{cnt}:"
    cnt += 1
  end
  emit_print("\n")
end
puts "exit"
