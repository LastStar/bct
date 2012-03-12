Bct.helpers do
  def add_address(email)
    File.open(data_file, 'a') do |file|
      file.write(',')
      file.write(email.to_s)

      return "Address #{email} was added to mailing list."
    end
  end

  def data_file
    PADRINO_ENV == 'test' ? 'spec/addresses.txt' : 'data/addresses.txt'
  end
end
