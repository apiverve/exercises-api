Pod::Spec.new do |s|
  s.name             = 'APIVerveExercises'
  s.version          = '1.2.3'
  s.summary          = 'Exercises filters movements by target muscle group, equipment, and exercise name, returning matching exercises with their force type and...'
  s.description      = <<-'DESC'
Exercises filters movements by target muscle group, equipment, and exercise name, returning matching exercises with their force type and required gear. Paid plans add step-by-step instructions, difficulty levels, and movement mechanics.

This iOS/macOS SDK provides a convenient way to access the Exercises from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/exercises?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/exercises-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveExercises/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
