# Matrix class
class Matrix
  def initialize(matrix)
    @matrix = matrix_tranformer(matrix)
  end

  def matrix_tranformer(matrix)
    matrix.split("\n").map do |str_row|
      str_row.split.map(&:to_i)
    end
  end

  def row(row_number)
    @matrix[row_number - 1]
  end

  def column(column_number)
    @matrix.map do |row|
      row[column_number - 1]
    end
  end
end
