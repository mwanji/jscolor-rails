require 'fileutils'

desc "Create non-digest versions of all assets"
task "assets:precompile" do
  puts "CREATE NON-DIGEST ASSETS!!!!!!!!!!!!!!!!!!!!!!"
  puts Dir.pwd
  fingerprint = /\-[0-9a-f]{32}\./
  jscolor_assets = ["arrow.gif", "cross.gif", "hs.png", "hv.png"]
  puts "jscolor_assets.include?('arrow.gif') = #{jscolor_assets.include?('arrow.gif')}"
  for file in Dir["public/assets/*"]
    puts "#{file} -- #{file !~ fingerprint}"
    next if file !~ fingerprint
    nondigest = file.sub fingerprint, "."
    puts "nondigest=#{nondigest} / basename=#{File.basename(nondigest)}"
    next unless jscolor_assets.include? File.basename(nondigest)
    puts file
    if !File.exist?(nondigest) or File.mtime(file) > File.mtime(nondigest)
      FileUtils.cp file, nondigest, verbose: true
    end
  end
end
