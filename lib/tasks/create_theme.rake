require 'fileutils'
require 'byebug'

namespace :svg_generator do
  desc "Create new gem theme"
  task :create_theme, :response do |t, args|

    theme_name = args[:response].to_s.downcase.gsub(/\A[_]/, '').gsub(' ','_').gsub(/(\W|\d)/, "").gsub(/$[_]/, '').gsub(/[_]$/, '')

    dir = "lib/ruby_svg_image_generator/themes/#{theme_name}_theme"
    
    #Create new directory and copy tests class files inside
    Dir.mkdir(dir)
    FileUtils.cp_r(Dir["lib/ruby_svg_image_generator/themes/test_theme/*.*"], dir)

    #Loop over tests files to change them
    Dir.glob(dir + "/*.*").sort.each do |f|
      filename = File.basename(f, File.extname(f))
      new_file_name = filename.gsub("test_","#{theme_name}_")

      #Rename files with new theme name
      File.rename(f, dir + "/" + new_file_name + File.extname(f))
    end

    Dir[dir + "/*.*"].each do |file|
      text = File.read(file)
      new_text = text.sub("Test", "#{theme_name.split('_').collect(&:capitalize).join}")

      #Write new text changes
      File.open(file, "w") {|ff| ff.puts new_text }
    end

    #Write required class
    generator_dir = "lib/ruby_svg_image_generator.rb"

    dir = Dir.glob(generator_dir).first
    text = File.read(dir)

    require_test = "require 'ruby_svg_image_generator/themes/test_theme/test_theme'"
    new_required = "require 'ruby_svg_image_generator/themes/#{theme_name}_theme/#{theme_name}_theme'" 
    new_required_theme = new_required if (text.lines.select { |l| l.include? new_required}).length == 0
    test_constant = "T_TEST_THEME"
    test_symbol = "TestTheme"
    new_theme_constant = theme_name.split('_').collect(&:capitalize).join

    if new_required_theme
      f_save = File.open(dir, 'w+')

      new_text = text.sub(require_test, "#{new_required_theme}\n#{require_test}")
      new_text = new_text.sub("#{test_constant} = :#{test_symbol}", "T_#{theme_name.upcase}_THEME = :#{new_theme_constant}\n  #{test_constant} = :#{test_symbol}")
      new_text = new_text.sub("#{test_constant},", "T_#{theme_name.upcase}_THEME, #{test_constant},")
      
      f_save.write new_text 

    else
      puts 'This class name already exists, please, think another one greater ;)'
    end

    #Write tests
    file_dir = "spec/themes/#{theme_name}_spec"
    FileUtils.cp_r("spec/themes/test_theme_spec.rb", file_dir + ".rb")
    dir = Dir.glob(file_dir + ".rb").first
    text = File.read(dir)
    new_text = text.sub("TestTheme", "#{theme_name.split('_').collect(&:capitalize).join}")

    #Write new text changes
    File.open(dir, "w") {|f| f.puts new_text }
  end
end