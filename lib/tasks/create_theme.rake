require 'fileutils'
require 'byebug'

namespace :svg_generator do
  desc "Create new gem theme"
  task :create_theme, :response do |t, args|
    byebug
    theme_name = args[:response].downcase.sub(/[?.,;_]?$/,'')
    #.downcase.sub(/\A[\W_]
    dir = "lib/ruby_svg_image_generator/themes/#{theme_name}_theme"
    
    #Create new directory and copy tests files inside
    Dir.mkdir(dir)
    FileUtils.cp_r(Dir["lib/ruby_svg_image_generator/themes/test_theme/*.*"],dir)

    #Loop over tests files to change them
    Dir.glob(dir + "/*.*").sort.each do |f|
      filename = File.basename(f, File.extname(f))
      new_file_name = filename.gsub("test_","#{theme_name}_")

      #Rename files with new theme name
      File.rename(f, dir + "/" + new_file_name + File.extname(f))
    end

    Dir[dir + "/*.*"].each do |file|
      text = File.read(file)
      new_text = text.gsub("test", "#{theme_name.split('_').collect(&:capitalize).join}")

      #Write new text changes
      File.open(file, "w") {|ff| ff.puts new_text }
    end
    byebug
    FileUtils.rm_rf(dir)


  end
end