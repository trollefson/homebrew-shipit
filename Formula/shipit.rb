class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.1/shipit-aarch64-apple-darwin"
      sha256 "1051d6d5c60c1ab09e2f891ec0420d40343af2b9b8f554f6a8baa730060df184"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.1/shipit-x86_64-apple-darwin"
      sha256 "5755fa8a6ff4695560234831eb02fd5b463c6585f85a2273d366ea0787464886"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.0.1/shipit-x86_64-unknown-linux-gnu"
      sha256 "e1878a25bd5a5ff01e1bea16681391e8dda7cdc2fa14afeab8c7ca1f3edc6b4e"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
