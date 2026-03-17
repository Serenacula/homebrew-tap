class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.4/templative-aarch64-apple-darwin.tar.xz"
      sha256 "7eeefbe2813ba0e1ddff33890e63f89660b18dbb0be9f6fb828d2649f8cce13b"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.4/templative-x86_64-apple-darwin.tar.xz"
      sha256 "32de7c0d96047dfa36a49277aedc1da5795a416dff878a5b34fd64ffee4c31d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.4/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "baf82673d044562b39ce8ab9fcac4f977797e9c2a127149d5019162c3ef01ef1"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.4/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "bbf64183a68fc689ea37380555677a273f577064e0c75b2cfc4fdd99b3072675"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
