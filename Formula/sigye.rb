class Sigye < Formula
  desc "Beautiful terminal clock with ASCII art fonts"
  homepage "https://github.com/am2rican5/sigye"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/am2rican5/sigye/releases/download/v0.6.0/sigye-aarch64-apple-darwin.tar.gz"
      sha256 "143845cb1ca428d0262696c8d52ec3ac4a6aef43cd0942125630cf4076c4c99e"
    end
    on_intel do
      url "https://github.com/am2rican5/sigye/releases/download/v0.6.0/sigye-x86_64-apple-darwin.tar.gz"
      sha256 "78bd3ce290dc5661e20672aaa24c4f6730251981407e32f7b7c8ec888da2f16d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/am2rican5/sigye/releases/download/v0.6.0/sigye-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8857d403f214a988bc4074b34d15e0fccd4b89a3eb580f70d1263b0b75e7548c"
    end
    on_intel do
      url "https://github.com/am2rican5/sigye/releases/download/v0.6.0/sigye-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a971b0637ddd5f7bd200b458ce43e8accad6630f53917ce077df44095d8d5bf"
    end
  end

  def install
    bin.install "sigye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigye --version")
  end
end
