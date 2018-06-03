class Triangle
  def self.triangle_name(argv)
    args = argv.map{|x| x.to_i}
    side_a = args[0]
    side_b = args[1]
    side_c = args[2]

    if (args.length != 3 || side_a + side_b <= side_c || side_a + side_c <= side_b || side_b + side_c <= side_a \
        || side_a == 0 || side_b == 0 || side_c == 0)
      "三角形じゃないです＞＜"
    elsif (side_a != side_b && side_b != side_c && side_a != side_c)
      "不等辺三角形ですね！"
    elsif (side_a == side_b && side_b == side_c && side_a == side_c)
      "正三角形ですね！"
    else
      "二等辺三角形ですね！"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Triangle.triangle_name ARGV
end
