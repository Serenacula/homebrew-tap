class PlnParse < Formula
  desc "Parser and CLI for Panel Layout Notation (PLN)"
  homepage "https://github.com/Serenacula/pln"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Serenacula/pln/releases/download/checkpoint-2026-07-05/pln-parse-aarch64-apple-darwin.tar.xz"
      sha256 "Not"
    end
    on_intel do
      url "https://github.com/Serenacula/pln/releases/download/checkpoint-2026-07-05/pln-parse-x86_64-apple-darwin.tar.xz"
      sha256 "Not"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Serenacula/pln/releases/download/checkpoint-2026-07-05/pln-parse-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "Not"
    end
    on_intel do
      url "https://github.com/Serenacula/pln/releases/download/checkpoint-2026-07-05/pln-parse-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "Not"
    end
  end

  def install
    bin.install "pln-parse"
  end

  test do
    system "#{bin}/pln-parse", "--version"
  end
end
