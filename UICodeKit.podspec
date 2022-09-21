#
# Be sure to run `pod lib lint UICodeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'UICodeKit'
    s.version          = '1.0.2'
    s.summary          = 'The Elegant Swift View Code Framework.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    UICodeKit Help You to build simple or complex layouts in a just few steps.
    DESC
    
    s.homepage         = 'https://github.com/vafreitas/UICodeKit'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Victor Freitas' => 'vitoralves59@gmail.com' }
    s.source           = { :git => 'https://github.com/vafreitas/UICodeKit.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '12.0'
    s.swift_version = "5.5"
    
    s.source_files = "Sources/**/*.{swift,h,m}"
    
    s.dependency 'TinyConstraints'
    s.dependency 'AloeStackView'
end
