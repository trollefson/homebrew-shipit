class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.0/shipit-aarch64-apple-darwin"
      sha256 "161d09d0bc81a32a0a47408bf030ada42a02f85d2167dca064b530bd21b8a633"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.0/shipit-x86_64-apple-darwin"
      sha256 "ef4edecc4b6fdd032365e13e4248f180be4e569b019a5a79fb89d262cf4f2b1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "9c7adc10a67623e771a6a560f3771edceca363de28a27c53c531307c7aa82dea"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
