# typed: false
# frozen_string_literal: true

class Kotecode < Formula
  desc "AI coding agent based on OpenCode"
  homepage "https://github.com/koteyye/KoteCode"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.1.0/kotecode-darwin-arm64.zip"
      sha256 "28e6355dff438edeafa3d6cd3c51ecc4656994bb99d4ef40fc56929b321ce4ef"
    end
    on_intel do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.1.0/kotecode-darwin-x64.zip"
      sha256 "77f7a3ba716349465d2bc19c711528872e6c4e9495255701d3860a7ea3892f85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.1.0/kotecode-linux-arm64.zip"
      sha256 "1ddd4301c68c58a5126576ee0879742949fa364d8864c3c8b92c9f28f5aff0ce"
    end
    on_intel do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.1.0/kotecode-linux-x64.zip"
      sha256 "3298320b427073e4e01e0eca9e28046d9fcbe274f1c37e99a9d7a00b8ca2c1be"
    end
  end

  def install
    bin.install "kotecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kotecode --version")
  end
end
