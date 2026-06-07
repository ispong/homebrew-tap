class Isx < Formula
  desc "CLI for isxcode app"
  homepage "https://github.com/isxcode/isx-cli"
  version "1.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_darwin_arm64", using: :nounzip
      sha256 "5f3ce98a5a27b0ef4bf69dd471595c8b4d1cf013f7b627ba4a18104babc03289"
    end

    on_intel do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_darwin_amd64", using: :nounzip
      sha256 "6e895901c5cf7bb612affb2b4520afe5bf46a2e465680cf557b5c37b002d61ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_linux_arm64", using: :nounzip
      sha256 "44436b8848eabac54e79f30ab5a45556df41719c418ecabcc1e5e2df58513f34"
    end

    on_intel do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_linux_amd64", using: :nounzip
      sha256 "87a60d81270f207e481a16f842b382842d698c0eb828d20ff127bd79a07153fd"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "isx_darwin_arm64" => "isx"
      else
        bin.install "isx_darwin_amd64" => "isx"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "isx_linux_arm64" => "isx"
      else
        bin.install "isx_linux_amd64" => "isx"
      end
    end
  end

  test do
    system "#{bin}/isx", "version"
  end
end
