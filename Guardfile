# A sample Guardfile
# More info at https://github.com/guard/guard#readme

notification :gntp, :host => '127.0.0.1'

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end

guard 'minitest' do
	  # with Minitest::Unit
	  # watch(%r|^test/test_(.*)\.rb|)
	  # watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
	  # watch(%r|^test/test_helper\.rb|)    { "test" }
	
	  # with Minitest::Spec
	  watch(%r|^spec/(.*)_spec\.rb|)
	  watch(%r|^lib/(.*)\.rb|)            { |m| "spec/#{m[1]}_spec.rb" }
	  watch(%r|^spec/spec_helper\.rb|)    { "spec" }
end

guard 'passenger' do
  watch(/^lib\/.*\.rb$/)
  watch(/^config\/.*\.rb$/)
end
