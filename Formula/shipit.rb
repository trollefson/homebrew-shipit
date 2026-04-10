class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.5.0/shipit-aarch64-apple-darwin"
      sha256 "f9c7dbba6adc9fca2f774df1da6e1f21c76223ca9641f4a28efb007d022802cc"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.5.0/shipit-x86_64-apple-darwin"
      sha256 "579d946b74ea8ea11dd4dd459ad4bbbf894e46aa326408117e9b45e4ef6eb19b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.5.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "51fd2ec4acd1d911a5b244fc40c92f8361a46a6a2fe38328497af7491cc14353"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
