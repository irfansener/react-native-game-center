require 'json'

package = JSON.parse(File.read('../../package.json'))

Pod::Spec.new do |s|
  s.name                = 'RNGameCenter'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = 'https://github.com/irfansener/react-native-game-center'
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => "https://github.com/garrettmac/RNGameCenter.git", :tag => s.version  }
  s.platform            = :ios, "7.0"
  s.source_files        = "*.{h,m}"
  s.requires_arc        = true
  s.dependency 'React'
end
