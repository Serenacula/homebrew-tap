class Splitby < Formula
  desc "Split text by a regex delimiter — a powerful, multi-threaded alternative to cut"
  homepage "https://github.com/serenacula/splitby"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.4/splitby-aarch64-apple-darwin.tar.xz"
      sha256 "f8a0425a4964ab314e0d2c1ef711d3f116f21b02b0e780a40dcd053532c2bcbe"
    end
    on_intel do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.4/splitby-x86_64-apple-darwin.tar.xz"
      sha256 "639e0dc278078c31489ea5406d7ea88adc839a4926b44bfa65c2019c79f9ce07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.4/splitby-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "3382e71eb0bbdb0b005dced21cd4d758efa0bd53c66d5ea00e18df5e69bf2356"
    end
    on_intel do
      url "https://github.com/serenacula/splitby/releases/download/v1.2.4/splitby-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e2be25fa38141caa0af7a5ff6877ea5dba47ab42481d973442036ef6f91d3ea4"
    end
  end

  def install
    bin.install "splitby"
  end

  test do
    system "#{bin}/splitby", "--version"
  end
end
