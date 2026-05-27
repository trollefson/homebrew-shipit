class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "2.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.4/shipit-aarch64-apple-darwin"
      sha256 "c98d50e72e0fe40ab91a639fff7ca3e2023a9dc0816061333c6f145b0eae07bc"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.4/shipit-x86_64-apple-darwin"
      sha256 "21d04e1afaf68f8c1731721b38ad41e6da3b4286f7b6c3fc76b974aac86a9f41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v2.1.4/shipit-x86_64-unknown-linux-gnu"
      sha256 "8feb666ec61e7bf50a62c4800907957ca45e68e55e39e4415baa8ae5319d153e"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
