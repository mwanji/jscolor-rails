require 'fileutils'

desc "Create non-digest versions of all assets"
task "assets:precompile" do
  fingerprint = /\-[0-9a-f]{32}\./
  jscolor_assets = ["arrow.gif", "cross.gif", "hs.png", "hv.png"]
  for file in Dir["public/assets/*"]
    next if file !~ fingerprint
    nondigest = file.sub fingerprint, "."
    next unless jscolor_assets.include? File.basename(nondigest)
    if !File.exist?(nondigest) or File.mtime(file) > File.mtime(nondigest)
      FileUtils.cp file, nondigest, verbose: true
    end
  end
end
