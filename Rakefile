desc "Initialize project"
task :init do
  sh "bower install"
end

desc "Run local server"
task :serve do
  sh "bundle exec jekyll serve --drafts --watch"
end

desc "Build the site"
task :build do
  sh "bundle exec jekyll build"
end

desc "Build, then deploy to S3"
task :deploy => [ :build ] do
  sh "bundle exec s3_website push"
end
