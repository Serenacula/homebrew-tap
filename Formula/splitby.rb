class Splitby < Formula
  desc "Split text by a regex delimiter — a powerful, multi-threaded alternative to cut"
  homepage "https://github.com/serenacula/splitby"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/splitby/releases/download/v2.0.0/splitby-aarch64-apple-darwin.tar.xz"
      sha256 "eb7d91314e298db9abe65ee572506716a3b9e6ed8d78ccd917cd1e3d56fa15da"
    end
    on_intel do
      url "https://github.com/serenacula/splitby/releases/download/v2.0.0/splitby-x86_64-apple-darwin.tar.xz"
      sha256 "28ea532fb6200f69d723fbb80d69af71024585ed02ce1d891c8bf8c4b2df22fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/splitby/releases/download/v2.0.0/splitby-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ac485309ca04396c87c8faf44f77fc5a4e8fcf876c63be18f849b717d047fe42"
    end
    on_intel do
      url "https://github.com/serenacula/splitby/releases/download/v2.0.0/splitby-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "42e370c4838427b5cf8cc86ab9c437920350fff17e4880e6981ae3c43f2cc095"
    end
  end

  def install
    bin.install "splitby"
  end

  test do
    system "#{bin}/splitby", "--version"
  end
end
