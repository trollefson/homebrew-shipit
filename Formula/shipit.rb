class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.2/shipit-aarch64-apple-darwin"
      sha256 "17135c556fb6c5f68af4d60557dbe65c82e40d4898da4c4d9ed7362feef35f27"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.2/shipit-x86_64-apple-darwin"
      sha256 "4d211a20037d7b4b255ec004e010c309ea64d97ad34db8216100da90588c7da7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.2/shipit-x86_64-unknown-linux-gnu"
      sha256 "77b919899af295e3bdadd06c94ddfed279274267d0ccc9c3c40f314ecad9009c"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
