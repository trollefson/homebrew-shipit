class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.4/shipit-aarch64-apple-darwin"
      sha256 "d42c4f0cc67a8c177a7bf2226a8d7900cae2df22cafc0ea857b4f68ad885762e"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.4/shipit-x86_64-apple-darwin"
      sha256 "b4fd3ac39231156dfc0d03cad0bea68f52893e0a3eef093c571f43ee45314308"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v0.1.4/shipit-x86_64-unknown-linux-gnu"
      sha256 "d5414c5acb2a1ed39b578549a4fb47b4bc807b85586332f57f2d91eb78bd92d4"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
