component "rubygem-cri" do |pkg, settings, platform|
  pkg.version "2.7.1"
  pkg.md5sum "21438cdbbc0304ffdd20022ae73c671c"
  pkg.url "http://buildsources.delivery.puppetlabs.net/cri-#{pkg.get_version}.gem"

  pkg.build_requires "ruby-#{settings[:ruby_version]}"

  if platform.is_windows?
    pkg.environment "PATH", settings[:gem_path_env]
  end

  pkg.install do
    "#{settings[:gem_install]} cri-#{pkg.get_version}.gem"
  end
end