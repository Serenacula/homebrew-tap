class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.0/templative-aarch64-apple-darwin.tar.xz"
      sha256 "93357fdabbf87a95ef807fec59e5311e49517fd6f88ff78a679db1a7a1db0583"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.0/templative-x86_64-apple-darwin.tar.xz"
      sha256 "e1a70363a3e8dee084fb6b6e7843b1dfe475f7797c1a6518c911f1cdd7ac7529"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.0/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "634cd0856802d6ba8ed90433358fcd7c50e59b4d63d5219cbc593d01ca184e97"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.0/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a543f242f34796b611c2da6eb07a5d6332dcbfe71baf9a3a4ba2a04c7bb8ad79"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
