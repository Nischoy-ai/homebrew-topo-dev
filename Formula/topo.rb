class Topo < Formula
  desc "Development build of the destination-neutral infrastructure discovery data plane"
  homepage "https://github.com/Nischoy-ai/topo"
  version "0.0.0-dev.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.1/topo_0.0.0-dev.1_darwin_amd64.tar.gz"
      sha256 "a6bd8f598e84617f34705c795824f06c76472568bff04ba21192f71ba52b8087"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.1/topo_0.0.0-dev.1_darwin_arm64.tar.gz"
      sha256 "c4535123e22329d3ebd341f5ddb1127154a943e792bf45ea840724e596bdba8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.1/topo_0.0.0-dev.1_linux_amd64.tar.gz"
      sha256 "1506a87b4d97e40bac9d52f85df74ca1f17e84875505445d766a4da040224172"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.1/topo_0.0.0-dev.1_linux_arm64.tar.gz"
      sha256 "136cc44a6234758ed86181ab464ad67ab291251875f41e40dd4b5f4bdb17929a"
    end
  end

  def install
    bin.install "topo"
    doc.install "LICENSE", "README.md"
  end

  def caveats
    <<~EOS
      This is an unsigned development build from Topo commit
      32733488a704114e3a805c6313aae4257cade7d4. It has no Developer ID
      signature or notarization ticket and is not supported for production.
    EOS
  end

  test do
    assert_equal "v0.0.0-dev.1", shell_output("#{bin}/topo version").strip
  end
end
