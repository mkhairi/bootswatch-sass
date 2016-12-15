require "bundler/gem_tasks"

THEMES = %w(
 amelia  
 cerulean  
 cosmo  
 custom  
 cyborg  
 darkly  
 flatly  
 journal  
 lumen  
 paper  
 readable  
 sandstone  
 simplex  
 slate  
 spacelab  
 superhero  
 united  
 yeti
).freeze


ORI_SCSS_FILES = FileList["bootswatchSrc/{#{THEMES.join(',')}}/*.scss"]
SCSS_FILES = ORI_SCSS_FILES.pathmap(
  'vendor/assets/stylesheets/bootswatch/%-1d/%n.scss'
)

task setup: SCSS_FILES
