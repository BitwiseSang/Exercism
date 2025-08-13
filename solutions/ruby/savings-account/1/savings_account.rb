module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 0.to_f && balance < 1000.to_f
      0.5
    elsif balance >= 1000.to_f && balance < 5000.to_f
      1.621
    elsif balance >=5000.to_f
      2.475
    else
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + (self.interest_rate(balance) / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 0

    until current_balance >= desired_balance
      current_balance = self.annual_balance_update(current_balance)
      year += 1
    end

    year
  end
end
