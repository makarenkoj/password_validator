class FileReader
  def self.call(file_rout)
    array = []
    f = File.open(file_rout, 'r')
    f.each_line do |line|
      array << line
    end

    f.close

    array
  end
end
