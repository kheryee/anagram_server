sql_insert = "INSERT INTO words (word) values "
# i = 0
File.open('db/words').each_with_index do |row, index|
  # Word.create(word: row)
  row.delete!("\n")
  sql_insert += "('#{row}'),"
  # i += 1
end

sql_insert.gsub!(/,\z/,';')

puts sql_insert
ActiveRecord::Base.connection.execute(sql_insert)