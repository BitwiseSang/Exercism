# Matrix class
class Matrix
  def initialize(matrix)
    @matrix = matrix.split("\n").map { |str_row| str_row.split.map(&:to_i) }
  end

  def row(row_number)
    @matrix[row_number - 1]
  end

  def column(column_number)
    @matrix.map { |row| row[column_number - 1] }
  end
end
