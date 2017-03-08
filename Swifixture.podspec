Pod::Spec.new do |s|
 s.name = 'Swifixture'
 s.version = '0.1.2'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'Swift library to load Json fixtures.'
 s.homepage = 'https://github.com/thiagolioy/Swifixture'
 s.social_media_url = 'https://twitter.com/tplioy'
 s.authors = { "Thiago Lioy" => "thiagolioy@gmail.com" }
 s.source = { :git => "https://github.com/tplioy/Swifixture.git", :tag => "v"+s.version.to_s }
 s.platforms     = { :ios => "8.0", :osx => "10.10", :tvos => "9.0", :watchos => "2.0" }
 s.requires_arc = true

 s.default_subspec = "Core"
 s.subspec "Core" do |ss|
     ss.source_files  = "Sources/Core/*.swift"
     ss.framework  = "Foundation"
 end

end
