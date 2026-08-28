class TopoMid < Formula
  desc "Development build of the destination-neutral infrastructure discovery data plane"
  homepage "https://github.com/Nischoy-ai/topo"
  version "0.0.0-mid.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-mid.1/topo_0.0.0-mid.1_darwin_amd64.tar.gz"
      sha256 "920c3bb1e2e0fc2e1f881609229bdfca9180e152fe37afc26b9e7179c454ef61"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-mid.1/topo_0.0.0-mid.1_darwin_arm64.tar.gz"
      sha256 "94afdc118d56b5f667969d1594d7449eb8758738ac24a99409a3b5a97918717e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-mid.1/topo_0.0.0-mid.1_linux_amd64.tar.gz"
      sha256 "9940cf4bd8c0ad8f675e4c80bd10a90b98c13df9fcfd4be480671f0718bdc50c"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-mid.1/topo_0.0.0-mid.1_linux_arm64.tar.gz"
      sha256 "24ea30ac45d03c6704d73bfb55eae8cbd03dfd3b4083e5c10fbe9219cf817661"
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
    assert_equal "v0.0.0-mid.1", shell_output("#{bin}/topo version").strip
  end
end
