class PasswordValidator
  def call(password_array)
    valid_counter(password_array)
  end

  private

  def range_creator(string)
    num_array = string.tr('-:', ' ').chop.split.map(&:to_i)
    num_array[0]..num_array[-1]
  end

  def check_password(letter, range, password)
    counter = 0
    password.chars.each { |l| counter += 1 if l == letter }

    range.include?(counter)
  end

  def valid_counter(password_array)
    valid_password_count = 0
    result_array = []

    password_array.each do |string|
      array = string.split(' ')
      letter = array[0]
      range = range_creator(array[1])
      password = array[-1]
      if check_password(letter, range, password)
        valid_password_count += 1
        result_array << string
      end
    end

    print_result(valid_password_count, result_array)
  end

  def print_result(valid_password_count, result_array)
    puts "valid password count #{valid_password_count}"
    puts 'valid passwords:'
    result_array.each { |str| puts str }
  end
end
