class Quadratic
  def self.find_roots(var_a, var_b, var_c)
    if var_a == 0
      puts 'Not a quadratic equation'
    end

    var_d = (var_b * var_b) - (4 * var_a * var_c)
    puts "B^2 = #{(var_b * var_b).to_s}"
    puts "4AC = #{(4 * var_a * var_c).to_s}"
    puts "B^2 - 4AC = #{(var_d.to_s)}"

    if var_d > 0
      puts "Roots are real and different"
      sqrt_val = Math.sqrt(var_d)
      x1 = sprintf '%.2f', ((-var_b + sqrt_val) / (2 * var_a))
      x2 = sprintf '%.2f', ((-var_b - sqrt_val) / (2 * var_a))
      puts "x1 = " << x1
      puts "x2 = " << x2
    end
    if var_d == 0
      puts "Roots are real and same"
      puts "x = #{(-var_b / (2 * var_a)).to_s}"
    end
    if var_d < 0
      puts "Roots are imaginary"
      a = var_d * -1
      sqrt_val = Math.sqrt(a)
      x = sprintf '%.2f', (-var_b / (2 * var_a))
      puts "x1 = " << x << " + i(" <<  sqrt_val.to_s << ")"
      puts "x2 = " << x << " - i(" <<  sqrt_val.to_s << ")"
    end
  end

  def self.write_equation(root1, root2, root3)
  end
end

class Polynomial
  def self.solve2(number, c_1, c_2, last_number)
    a = c_1.to_f * (number.to_f ** 2.to_f)
    b = c_2.to_f * number.to_f
    result = a.to_f + b.to_f + last_number.to_f
    puts "f(#{number}) = #{result.to_s}"
  end

  def self.solve3(number, c_1, c_2, c_3, last_number)
    a = c_1.to_f * (number.to_f ** 3.to_f)
    b = c_2.to_f * (number.to_f ** 2.to_f)
    c = c_3.to_f * number.to_f
    result = a.to_f + b.to_f + c.to_f + last_number.to_f
    puts "f(#{number}) = #{result.to_s}"
  end

  def self.solve4(number, c_1, c_2, c_3, c_4, last_number)
    a = c_1.to_f * (number.to_f ** 4.to_f)
    b = c_2.to_f * (number.to_f ** 3.to_f)
    c = c_3.to_f * (number.to_f ** 2.to_f)
    d = c_4.to_f * number.to_f
    result = a.to_f + b.to_f + c.to_f + d.to_f + last_number.to_f
    puts "f(#{number}) = #{result.to_s}"
  end
end

class Synthetic

  def self.exp8(number, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9)
    number.to_i.downto(-number.to_i) do |i|
      s_1 = c_1.to_f
      a = i.to_f * s_1.to_f
      s_2 = c_2.to_f + a.to_f
      b = i.to_f * s_2.to_f
      s_3 = c_3.to_f + b.to_f
      c = i.to_f * s_3.to_f
      s_4 = c_4.to_f + c.to_f
      d = i.to_f * s_4.to_f
      s_5 = c_5.to_f + d.to_f
      e = i.to_f * s_5.to_f
      s_6 = c_6.to_f + e.to_f
      f = i.to_f * s_6.to_f
      s_7 = c_7.to_f + f.to_f
      g = i.to_f * s_7.to_f
      s_8 = c_8.to_f + g.to_f
      h = i.to_f * s_8.to_f
      s_9 = c_9.to_f + h.to_f

      if s_9 == 0
        puts "x8 = #{i}"
        exp7(number, s_1, s_2, s_3, s_4, s_5, s_6, s_7, s_8)
        break
      end
    end
  end

  def self.exp7(number, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8)
    number.to_i.downto(-number.to_i) do |i|
      s_1 = c_1.to_f
      a = i.to_f * s_1.to_f
      s_2 = c_2.to_f + a.to_f
      b = i.to_f * s_2.to_f
      s_3 = c_3.to_f + b.to_f
      c = i.to_f * s_3.to_f
      s_4 = c_4.to_f + c.to_f
      d = i.to_f * s_4.to_f
      s_5 = c_5.to_f + d.to_f
      e = i.to_f * s_5.to_f
      s_6 = c_6.to_f + e.to_f
      f = i.to_f * s_6.to_f
      s_7 = c_7.to_f + f.to_f
      g = i.to_f * s_7.to_f
      s_8 = c_8.to_f + g.to_f

      if s_8 == 0
        puts "x7 = #{i}"
        exp6(number, s_1, s_2, s_3, s_4, s_5, s_6, s_7)
        break
      end
    end
  end

  def self.exp6(number, c_1, c_2, c_3, c_4, c_5, c_6, c_7)
    number.to_i.downto(-number.to_i) do |i|
      s_1 = c_1.to_f
      a = i.to_f * s_1.to_f
      s_2 = c_2.to_f + a.to_f
      b = i.to_f * s_2.to_f
      s_3 = c_3.to_f + b.to_f
      c = i.to_f * s_3.to_f
      s_4 = c_4.to_f + c.to_f
      d = i.to_f * s_4.to_f
      s_5 = c_5.to_f + d.to_f
      e = i.to_f * s_5.to_f
      s_6 = c_6.to_f + e.to_f
      f = i.to_f * s_6.to_f
      s_7 = c_7.to_f + f.to_f

      if s_7 == 0
        puts "x6 = #{i}"
        exp5(number, s_1, s_2, s_3, s_4, s_5, s_6)
        break
      end
    end
  end

  def self.exp5(number, c_1, c_2, c_3, c_4, c_5, c_6)
    number.to_i.downto(-number.to_i) do |i|
      s_1 = c_1.to_f
      a = i.to_f * s_1.to_f
      s_2 = c_2.to_f + a.to_f
      b = i.to_f * s_2.to_f
      s_3 = c_3.to_f + b.to_f
      c = i.to_f * s_3.to_f
      s_4 = c_4.to_f + c.to_f
      d = i.to_f * s_4.to_f
      s_5 = c_5.to_f + d.to_f
      e = i.to_f * s_5.to_f
      s_6 = c_6.to_f + e.to_f

      if s_6 == 0
        puts "x5 = #{i}"
        exp4(number, s_1, s_2, s_3, s_4, s_5)
        break
      end
    end
  end


  def self.exp4(number, c_1, c_2, c_3, c_4, c_5)
    number.to_i.downto(-number.to_i) do |i|
      s_1 = c_1.to_f
      a = i.to_f * s_1.to_f
      s_2 = c_2.to_f + a.to_f
      b = i.to_f * s_2.to_f
      s_3 = c_3.to_f + b.to_f
      c = i.to_f * s_3.to_f
      s_4 = c_4.to_f + c.to_f
      d = i.to_f * s_4.to_f
      s_5 = c_5.to_f + d.to_f

      if s_5 == 0
        puts "x4 = #{i}"
        exp3(number, s_1, s_2, s_3, s_4)
        break
      end
    end
  end

  def self.exp3(number, c_1, c_2, c_3, c_4)
    number.to_i.downto(-number.to_i) do |i|
      s_1 = c_1.to_f
      a = i.to_f * s_1.to_f
      s_2 = c_2.to_f + a.to_f
      b = i.to_f * s_2.to_f
      s_3 = c_3.to_f + b.to_f
      c = i.to_f * s_3.to_f
      s_4 = c_4.to_f + c.to_f

      if s_4 == 0
        puts "x3 = #{i}"
        Quadratic.find_roots(s_1.to_f, s_2.to_f, s_3.to_f)
        break
      end
    end
  end
end

class Factors
  def self.find(number)
    for i in (1..number.to_i+1)
      if number.to_i % i.to_i == 0
        puts i
      end
    end
    puts "Done"
  end
end

function = ARGV[0].to_s.downcase

if function == "cuadrado"
  Quadratic.find_roots(ARGV[1].to_f, ARGV[2].to_f, ARGV[3].to_f)
elsif function == "roots"
  if ARGV[1] == 3
    Quadratic.write_equation(ARGV[2].to_f, ARGV[2].to_f, ARGV[2].to_f)
  end
end

if function == "solve2"
  Polynomial.solve2(ARGV[1], ARGV[2], ARGV[3], ARGV[4])
elsif function == "solve3"
  Polynomial.solve3(ARGV[1], ARGV[2], ARGV[3], ARGV[4], ARGV[5])
elsif function == "solve4"
  Polynomial.solve4(ARGV[1], ARGV[2], ARGV[3], ARGV[4], ARGV[5], ARGV[6])
end

if function == "exp3"
  Synthetic.exp3(ARGV[1], ARGV[2], ARGV[3], ARGV[4], ARGV[5])
elsif function == "exp4"
  Synthetic.exp4(ARGV[1], ARGV[2], ARGV[3], ARGV[4], ARGV[5], ARGV[6])
elsif function == "exp8"
  Synthetic.exp8(ARGV[1], ARGV[2], ARGV[3], ARGV[4], ARGV[5], ARGV[6], ARGV[7], ARGV[8], ARGV[9], ARGV[10])
end

if function == "factors"
  Factors.find(ARGV[1])
end