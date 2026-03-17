class Splitby < Formula
  desc "Split text by a regex delimiter — a powerful, multi-threaded alternative to cut"
  homepage "https://github.com/serenacula/splitby"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.5/splitby-aarch64-apple-darwin.tar.xz"
      sha256 "10af91652bed264f8b889fd42bd164bcf8028eeffd4a6200afb2a2b330ce2eca"
    end
    on_intel do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.5/splitby-x86_64-apple-darwin.tar.xz"
      sha256 "db567b7e7ce89546d0be451f4e9c49cb26dd9828d165f8f62fedbedd799b5ec7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.5/splitby-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "7db05f65cb87cc5cf760feeb6de105d6b7283a1cd27b5dc27af7d33b4077c2aa"
    end
    on_intel do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.5/splitby-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "284ae306420b7829bf44a8b9585423b2836d54ca8a80177bb14fc91873148709"
    end
  end

  def install
    bin.install "splitby"
  end

  test do
    system "#{bin}/splitby", "--version"
  end
end
