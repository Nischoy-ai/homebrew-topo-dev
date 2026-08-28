class Topo < Formula
  desc "Development build of the destination-neutral infrastructure discovery data plane"
  homepage "https://github.com/Nischoy-ai/topo"
  version "0.0.0-dev.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.2/topo_0.0.0-dev.2_darwin_amd64.tar.gz"
      sha256 "eaa9a6a686f1ce61b6e1f2b9b2751891848cf26ca0669a3b7a455f294e611974"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.2/topo_0.0.0-dev.2_darwin_arm64.tar.gz"
      sha256 "dec064b2b2cab8eedd89708a5d9910a919d4478f99d3edfb143e9f1dc625fce0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.2/topo_0.0.0-dev.2_linux_amd64.tar.gz"
      sha256 "19afe094185b1add193c18200d6c2698bd8bdde67423fec007c60578cf9d1069"
    end
    on_arm do
      url "https://github.com/Nischoy-ai/homebrew-topo-dev/releases/download/v0.0.0-dev.2/topo_0.0.0-dev.2_linux_arm64.tar.gz"
      sha256 "1902205916b17344e5c4394ba549447fba07ef1cc3adc5a2fe3244556ee77166"
    end
  end

  def install
    bin.install "topo"
    doc.install "LICENSE", "README.md"
  end

  def caveats
    <<~EOS
      This is an unsigned development build from Topo commit
      97f783ce83c7462f8ef999a453262f8107a9494f. It has no Developer ID
      signature or notarization ticket and is not supported for production.
    EOS
  end

  test do
    assert_equal "v0.0.0-dev.2", shell_output("#{bin}/topo version").strip
  end
end
