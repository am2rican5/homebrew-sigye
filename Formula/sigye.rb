class Sigye < Formula
  desc "Beautiful terminal clock with ASCII art fonts"
  homepage "https://github.com/am2rican5/sigye"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/am2rican5/sigye/releases/download/v0.5.0/sigye-aarch64-apple-darwin.tar.gz"
      sha256 "5487dc08eee8b1d37c35bdc4c4a0671973587b9810d8f4608c5e89ead201d0b0"
    end
    on_intel do
      url "https://github.com/am2rican5/sigye/releases/download/v0.5.0/sigye-x86_64-apple-darwin.tar.gz"
      sha256 "f2e8a21921d0a39c65495a4bebb019d9d25c6ae020ea9105ba85d77b4a8a0962"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/am2rican5/sigye/releases/download/v0.5.0/sigye-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "515116ac7691f78bfa3f4d702ab0f03d47724703425f25cc240e22117298abf4"
    end
    on_intel do
      url "https://github.com/am2rican5/sigye/releases/download/v0.5.0/sigye-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afffca05cd914315133f3b1f02a312651cef5387172ebaef9e43db1c02f9fa59"
    end
  end

  def install
    bin.install "sigye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigye --version")
  end
end
