require "bundler/gem_tasks"

THEMES = %w(
 cerulean     
 cosmo 
 cyborg  
 darkly 
 flatly 
 journal   
 litera 
 lumen 
 lux 
 materia  
 minty 
 pulse 
 sandstone  
 simplex 
 sketchy 
 solar
 slate  
 spacelab  
 superhero  
 united  
 yeti 
).freeze

source_dir = "bootswatch-src/dist" 

namespace :stylesheets do
  desc "Cleaning stylesheets directory"
  task :clean do
   rm_rf "assets/stylesheets/bootswatch"
  end

  desc "Copy #{source_dir}/themes/"
  task :copy do
    THEMES.each do |theme|
      src_dir = FileList["#{source_dir}/#{theme}/*.scss"]
      tgt_dir = "assets/stylesheets/bootswatch/#{theme}/"
      mkdir_p tgt_dir
      cp_r src_dir, tgt_dir
    end
  end
 

  desc "Setup stylesheet assets"
  task setup: [:clean, :copy]
end

desc "Remove minified file .min"
task :cleanup do
  Dir.glob('assets/**/*.min.*').each do |file|
    rm file
  end
end



desc "Setup or update assets files"
task setup: ["stylesheets:setup"]
