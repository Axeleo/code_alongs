

=begin

given a list of names
Joe Black
Mary Jane
Sam Wise

hackers
  |
  |-- Joe_Black
  |      |-README.md
  |
  |--Mary_Jane
  |      |-README.md
  |
  |--Sam_Wise
        |-README.md



lookup fileutils
  
=end

require 'fileutils'

hackers = ['Joe Black', 'Mary Jane', 'Sam Wise']




def create_folder (names)

  names.each do |name|
  name = name.downcase.sub(' ', '_')
  FileUtils.mkdir(name)
  FileUtils.cd(name) do
      FileUtils.touch('README.md')
  end
  end

end

create_folder(hackers)