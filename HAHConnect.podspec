#
# Be sure to run `pod lib lint HAHConnect.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'HAHConnect'
    s.version          = '0.0.1'
    s.summary          = 'Health at Hand’s mobile SDK project; known as HAH Connect to integrate HAH telehealth platform with native iOS and Android mobile apps.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    #s.description      = <<-DESC
    #TODO: Add long description of the pod here.
    #DESC

    s.homepage         = 'https://www.myhealthathand.com'

    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'veer-suthar' => 'veer@nextgeni.com' }

    s.source = { :http => 'https://hahliveimages.s3.eu-west-1.amazonaws.com/hah_cloud/zip/60550608/hahconnect.zip?version=60550608' }
    s.vendored_frameworks = 'HAHConnect.framework'
    #s.vendored_frameworks = 'HAHConnect/HAHConnect.framework'


    s.swift_version = '4.2'
    s.ios.deployment_target = '10.0'

    # s.resource_bundles = {
    #   'HAHConnect' => ['HAHConnect/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'

    s.dependency 'WebRTC', '63.11.20455'
    s.dependency 'MDWamp', '2.2.4'
    s.dependency 'CocoaLumberjack/Swift', '3.4.2'

    s.dependency 'Cosmos', '18.0.1'
    s.dependency 'NVActivityIndicatorView', '4.6.1'
    s.dependency 'Pageboy', '3.0.2'

    s.dependency 'CryptoSwift', '0.14.0'
    s.dependency 'Alamofire', '4.8.1'
    s.dependency 'SwiftyJSON', '4.2.0'
    s.dependency 'Disk', '0.4.0'
    s.dependency 'SwiftMessages', '6.0.2'

    s.dependency 'FirebaseMLVisionTextModel', '0.15.0'
    s.dependency 'EasyTipView', '2.0.1'
    s.dependency 'SwiftDate', '6.0.1'

    s.dependency 'ISPageControl', '0.1.0'
    s.dependency 'WeScan', '1.1.0'
    s.dependency 'TOCropViewController', '2.4.0'
    s.dependency 'Kingfisher', '5.4.0'


end
