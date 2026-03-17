class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.5/templative-aarch64-apple-darwin.tar.xz"
      sha256 "186d9b04c36b735784346a718f43dac5f65a2960b21236e03194b6f551c52457"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.5/templative-x86_64-apple-darwin.tar.xz"
      sha256 "24a4a21b540a30e84fa8e7de0afd24d3527910d285563fad089e23516d2e6678"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.5/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "273139076ea5f16b3332115eecfe26b920835f68d31056eceede12a0619e28ed"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.5/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "14fb26f57a6a73526c144e3a3518e3a03417ba8e79b1c05c6dc2a1349f775881"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
