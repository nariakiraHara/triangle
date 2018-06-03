require File.expand_path(File.dirname(__FILE__) + '/../src/libs/triangle')

describe Triangle do
  describe '#triangle_name' do
    context '三角形成立の条件に当てはまらない' do
      specify { expect(Triangle.triangle_name([1, 0, 1])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([-1, 5, 7])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([1])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([1, 2])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([1, 2, 3, 4])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([1, 2, 3])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([1, 4, 3])).to eq"三角形じゃないです＞＜"}
      specify { expect(Triangle.triangle_name([5, 4, 1])).to eq"三角形じゃないです＞＜"}
    end

    context '三角形であり、3つの辺の長さが異なる' do
      specify { expect(Triangle.triangle_name([2, 3, 4])).to eq"不等辺三角形ですね！"}
      specify { expect(Triangle.triangle_name([3, 4, 5])).to eq"不等辺三角形ですね！"}
      specify { expect(Triangle.triangle_name([4, 5, 6])).to eq"不等辺三角形ですね！"}
      specify { expect(Triangle.triangle_name([5, 10, 6])).to eq"不等辺三角形ですね！"}
    end

    context '三角形であり、2つの辺が同じ長さ' do
      specify { expect(Triangle.triangle_name([2, 2, 1])).to eq"二等辺三角形ですね！"}
      specify { expect(Triangle.triangle_name([3, 3, 2])).to eq"二等辺三角形ですね！"}
      specify { expect(Triangle.triangle_name([3, 4, 4])).to eq"二等辺三角形ですね！"}
      specify { expect(Triangle.triangle_name([6, 10, 6])).to eq"二等辺三角形ですね！"}
    end

    context '三角形であり、すべての辺の長さが等しい' do
      specify { expect(Triangle.triangle_name([1, 1, 1])).to eq"正三角形ですね！"}
      specify { expect(Triangle.triangle_name([2, 2, 2])).to eq"正三角形ですね！"}
      specify { expect(Triangle.triangle_name([3, 3, 3])).to eq"正三角形ですね！"}
    end
  end
end
