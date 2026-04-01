class Shipit < Formula
  desc "A CLI for managing git releases"
  homepage "https://github.com/trollefson/shipit"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.0/shipit-aarch64-apple-darwin"
      sha256 "ca7d10e777b121b1a468c359ca916493a78fe2886b69ad915c25d6cc6d5bd546"
    end
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.0/shipit-x86_64-apple-darwin"
      sha256 "4acb672a4d1fb1245c9f2ee50b6b5529ad2c722925a43c0068e1a8ced7c65184"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/trollefson/shipit/releases/download/v1.4.0/shipit-x86_64-unknown-linux-gnu"
      sha256 "73fa57118e26296b63ab4022ba414144f88f4390702345c92f79f5169da4f262"
    end
  end

  def install
    bin.install Dir["shipit*"].first => "shipit"
  end

  test do
    system bin/"shipit", "--version"
  end
end
