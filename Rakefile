desc "Run all tests"
task :default => [:lint, :spec, :kitchen]

desc "Lint cookbook with foodcritic"
task :lint do
  sh "bundle exec foodcritic . -f any"
end

desc "Run ChefSpec unit tests"
task :spec do
  sh "bundle exec rspec -I test/ test/unit"
end

desc "Run Kitchen integration tests"
task :kitchen do
  sh "bundle exec kitchen test"
end

