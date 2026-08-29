class Topo < Formula
  desc "Development build of the destination-neutral infrastructure discovery data plane"
  homepage "https://github.com/Nischoy-ai/topo"
  version "0.0.0-dev.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.3/topo_0.0.0-dev.3_darwin_amd64.tar.gz"
      sha256 "76bbd9ddebb8a66433cd4cb00f4daa66fe3e4cbe592b8c4de20b3fe7f38f2b4c"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.3/topo_0.0.0-dev.3_darwin_arm64.tar.gz"
      sha256 "116ebae3e7c6562cfc2e7ffc0e50a85e5ce6b717224e5faea5b53bd1c41afe17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.3/topo_0.0.0-dev.3_linux_amd64.tar.gz"
      sha256 "eb2b9f9ec845ce2fad6e84cbf62e13adf1e04d82d7f96861147a140e5ff76469"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.3/topo_0.0.0-dev.3_linux_arm64.tar.gz"
      sha256 "f41314331f431acdaa511fbfa67cc9efadb8717063077c4c7c74e94efce13635"
    end
  end

  def install
    bin.install "topo"
    doc.install "LICENSE", "README.md"
  end

  def caveats
    <<~EOS
      This is an unsigned development build from Topo commit
      c2332fcbeec734b7d19ba07b1ef193881a2545fd. It has no Developer ID
      signature or notarization ticket and is not supported for production.
    EOS
  end

  test do
    assert_equal "v0.0.0-dev.3", shell_output("#{bin}/topo version").strip
  end
end
