class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.2/shipit-aarch64-apple-darwin"
      sha256 "b5fc0a48dbb50caa0846058c3543f4ebb04df485b02adc177ce131c848f2c3f3"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.2/shipit-x86_64-apple-darwin"
      sha256 "7c1e1971c49d1d6ecf4f9377bfa49eeb5a03bbc528b0de691cf28f8f5417b7bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.2/shipit-x86_64-unknown-linux-gnu"
      sha256 "7b367f32e0fb80d4ce9c277f79ae82a497cf7d7e1c323eb988e15910f0503882"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
