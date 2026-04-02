class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.4/shipit-aarch64-apple-darwin"
      sha256 "34a9160de9dc415c0f89b04069bda99ecd3c51ee5725cc1d14095acde1e90310"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.4/shipit-x86_64-apple-darwin"
      sha256 "570de2c8db447d8b979bb99fbfe0d84165b8e551476b36da4d752eda032f1bde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.4/shipit-x86_64-unknown-linux-gnu"
      sha256 "802cbc19a127cc894e3fcc4d06e9ab127347daa2632adb514a08159ceeb88efb"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
