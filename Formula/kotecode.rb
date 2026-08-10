# typed: false
# frozen_string_literal: true

class Kotecode < Formula
  desc "AI coding agent based on OpenCode"
  homepage "https://github.com/koteyye/KoteCode"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.0/kotecode-darwin-arm64.zip"
      sha256 "61279160af00577fe08cd7bb8e5ba057b8ef41441c7381f34989fc83e74a51d2"
    end
    on_intel do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.0/kotecode-darwin-x64.zip"
      sha256 "edb6fa8c1255fae6c0eca80ef31688b83cd2f968c41d2ac43fd02b010ece85c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.0/kotecode-linux-arm64.zip"
      sha256 "d425ef7c66824695e48ce860507e5c5b4238dfd69912d7352b22fa572fa89b6d"
    end
    on_intel do
      url "https://github.com/koteyye/KoteCode/releases/download/v0.2.0/kotecode-linux-x64.zip"
      sha256 "7630c0b8817d09255e8f9f19abb153711572a79d96c93c313721dc045e7280c9"
    end
  end

  def install
    bin.install "kotecode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kotecode --version")
  end
end
