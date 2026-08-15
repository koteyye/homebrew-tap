# typed: false
# frozen_string_literal: true

class Kotecode < Formula
  desc "AI coding agent based on OpenCode"
  homepage "https://github.com/koteyye/KoteCode"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.1/kotecode-darwin-arm64.zip"
      sha256 "ba67cae6030aafdbaacffd820dc15575824c89c46c61c6754cd7a48a24eb50d0"
    end
    on_intel do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.1/kotecode-darwin-x64.zip"
      sha256 "5911a8fd70bef77b238887cdfcbdd966e424bfa908e67219b8278409688ec34d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.1/kotecode-linux-arm64.zip"
      sha256 "fe6a813d1765d8398ac8756b3c08aff72a5722bc9394f184b65f49263a623cfc"
    end
    on_intel do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.1/kotecode-linux-x64.zip"
      sha256 "dbbe38f9130ec27aa40cb4e1dbd21f561a91a6bf5707a007026ddfd927eea839"
    end
  end

  def install
    bin.install "kotecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kotecode --version")
  end
end
