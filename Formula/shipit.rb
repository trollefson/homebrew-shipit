class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.0.0/shipit-aarch64-apple-darwin"
      sha256 "55e57fdaf08447399c4e0744f312f2643023c25caea9e4860cb2ff44548050ae"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.0.0/shipit-x86_64-apple-darwin"
      sha256 "cdfe9fb536fcb880dcf3a8b4101ee46c7fa7d1691621f7ad3804e6d7549a0eba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.0.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "ca42cb5b14ad01226ad8535dde1a685a3c1760dc25e4fb2ce04797d3f91d67c2"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
