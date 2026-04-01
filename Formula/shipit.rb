class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.3.2/shipit-aarch64-apple-darwin"
      sha256 "88620a63eb270d2de063558c75fa4349601e2d7a3f08cd92b17838f0b232d06f"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.3.2/shipit-x86_64-apple-darwin"
      sha256 "3260494c47533ade8de3b111a7f16b70b231d1d93239b4fc2486768edcae3ae7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.3.2/shipit-x86_64-unknown-linux-gnu"
      sha256 "490b5ddd1811f719a9ff1da569a6f4577fc535e392e17b90096ad17f04a811a9"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
