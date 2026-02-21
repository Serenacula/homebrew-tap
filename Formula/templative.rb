class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.1/templative-aarch64-apple-darwin.tar.xz"
      sha256 "5353f5e53dec34f2020b6581093c4580f7535aadc1a8867588d8e8d43e9ffb95"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.1/templative-x86_64-apple-darwin.tar.xz"
      sha256 "4969c1d11a2f6fd947672b7e81cc5e76db9adacb4e15c5cf8bb55b24fb44ca24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.1/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "7a29a26b070c9f7309b9abdd7a55f1483216c2bb454d3d12f9ac9fc1959881ad"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.1/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "040c1055b9c551bd83a280fcf3d8ac4bb753465f661cb207fbc8d6f2dabf493a"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
