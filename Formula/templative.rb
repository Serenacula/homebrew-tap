class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v0.6.5/templative-aarch64-apple-darwin.tar.xz"
      sha256 "a595b860f761fe13c1b31e87ba21d2aa2507f4f8bc15f2dd4ea107cc85e52658"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v0.6.5/templative-x86_64-apple-darwin.tar.xz"
      sha256 "1055317f0eed4e588762def33a4c64483c6f72a21836e9803739e04b94ee6f08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v0.6.5/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "4bb25542961de206e6b2d4f24514e6d334943b93ea83ae950b54171a535b2ebb"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v0.6.5/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8b317890049fd311c11181987e67b4924bf7718415329d4d6cdd1a17fbe62bb6"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
