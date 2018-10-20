Pod::Spec.new do |spec|
  spec.name         = 'GitHawkRoutes'
  spec.version      = '0.1.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/GitHawkApp/GitHawkRoutes'
  spec.authors      = { 'Ryan Nystrom' => 'rnystrom@whoisryannystrom.com' }
  spec.summary      = 'GitHawk routing and deep links.'
  spec.source       = { :git => 'https://github.com/GitHawkApp/GitHawkRoutes.git', :tag => '#{s.version}' }
  spec.source_files = 'GitHawkRoutes/*.swift'
  spec.platform     = :ios, '9.0'
  spec.swift_version = '4.2'
end
