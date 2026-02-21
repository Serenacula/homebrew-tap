class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.2/templative-aarch64-apple-darwin.tar.xz"
      sha256 "57c06c7399d808da86a9a587c01375c6edcc7ad6cf73be1d61354fc0ec45e9f5"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.2/templative-x86_64-apple-darwin.tar.xz"
      sha256 "2cc06b2331235a777dfb1b02d4acc9eeba9e3a68a81e4ca13b9fff7eee89edc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.2/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "b3c0105dc12145ad24ef63501bbae65c7ebd831c5579116828a034375321e739"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.2/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "300cc37301aebda2361e26f46a45c13b03d40343e8470f9b84ab6f2cdd2e2ca6"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
