class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.2/shipit-aarch64-apple-darwin"
      sha256 "f989d8893b9ce2f7765e26174fbb278a76f023db4b310726179fb5c9b0ce0c69"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.2/shipit-x86_64-apple-darwin"
      sha256 "8db1b457696be6c140a662aea38d272131a60e43e7f66a59320f301eee3370c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.2/shipit-x86_64-unknown-linux-gnu"
      sha256 "17c430ca7439192b055f9a722f2da7624233c4c1f4fd7c61f0abac4e9db45cbe"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
