class Templative < Formula
  desc "A tiny CLI for managing project templates"
  homepage "https://github.com/serenacula/templative"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.3/templative-aarch64-apple-darwin.tar.xz"
      sha256 "cc5f71d1ff162da57af477b3f6ada0c1247c1f035111168152a3ab5528392142"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.3/templative-x86_64-apple-darwin.tar.xz"
      sha256 "07f0402b18f65de7a328b267f214cb12a4e556eb0eb592e22e9e78e04e3c8271"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/serenacula/templative/releases/download/v1.0.3/templative-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "5eef0b1d048cf4679b8f02b52ed53697f75f74368b964e3afa32c34a6e39bf65"
    end
    on_intel do
      url "https://github.com/serenacula/templative/releases/download/v1.0.3/templative-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "dd72a0d5fb117d68d1e556d1169673a61d336f0dc0052553f0e42fca455d5a7c"
    end
  end

  def install
    bin.install "templative"
  end

  test do
    system "#{bin}/templative", "--version"
  end
end
