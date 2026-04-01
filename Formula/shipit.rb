class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.2.0/shipit-aarch64-apple-darwin"
      sha256 "cfa63d288f938a34b9250c565b7d363f7687ebd25815eb84c6e701bcb269825d"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.2.0/shipit-x86_64-apple-darwin"
      sha256 "8a23c5ea8a85d414f78e3724efc3555095f5bd4d6e424bc3f0c9cd8bf6c695d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.2.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "4c53ebc2aa46988befa8f2fc194fc13684d677172f34e3182d77698f07478ce6"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
