class UnsupportedOperation < ArgumentError
end

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    begin
      if !(ALLOWED_OPERATIONS.include?(operation) && operation.length == 1 && !operation.nil?)
        raise UnsupportedOperation
      elsif !(first_operand.is_a?(Integer) && second_operand.is_a?(Integer))
        raise ArgumentError.new('ArgumentError')
      elsif (operation == "/" && second_operand == 0)
        return (ZeroDivisionError.new("Division by zero is not allowed.")).message
      end

      case operation
      when "+"
        "#{first_operand} #{operation} #{second_operand} = #{first_operand + second_operand}"
      when "/"
        "#{first_operand} #{operation} #{second_operand} = #{first_operand / second_operand}"
      when "*"
        "#{first_operand} #{operation} #{second_operand} = #{first_operand * second_operand}"
      end
    rescue => e
      return e
    end
  end
end