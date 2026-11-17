class Sigye < Formula
  desc "Beautiful terminal clock with ASCII art fonts"
  homepage "https://github.com/am2rican5/sigye"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/am2rican5/sigye/releases/download/v0.7.0/sigye-aarch64-apple-darwin.tar.gz"
      sha256 "b5dff0a371ceec970cb2d4d50ecffd0d8ce1e0d74319fd908755fd1346b4eb83"
    end
    on_intel do
      url "https://github.com/am2rican5/sigye/releases/download/v0.7.0/sigye-x86_64-apple-darwin.tar.gz"
      sha256 "ce5ed063169fe434e907029e13b829b7148348d34e0ec1087669ca5aeef2b5f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/am2rican5/sigye/releases/download/v0.7.0/sigye-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08de28e43a07ad26b38a30eda70eba4a4aec38ffee0165302821a9aa12ecab55"
    end
    on_intel do
      url "https://github.com/am2rican5/sigye/releases/download/v0.7.0/sigye-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e5dd69d63283e849a24370a93acd92c8f1622f07e300312d4a2afe246ce4557"
    end
  end

  def install
    bin.install "sigye"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sigye --version")
  end
end
