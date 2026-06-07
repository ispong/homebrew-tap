class Isx < Formula
  desc "CLI for isxcode app"
  homepage "https://github.com/isxcode/isx-cli"
  version "1.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.3/isx_darwin_arm64", using: :nounzip
      sha256 "07027877dd32fdc8a1ffcd1a68f1bb3bfb4cd969cb883acd74cadb08cf0fd656"
    end

    on_intel do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.3/isx_darwin_amd64", using: :nounzip
      sha256 "c572f048ebbf44b26a79ddbf398c19d7add5eeb9a48df83bec8a8d0999a2ff4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.3/isx_linux_arm64", using: :nounzip
      sha256 "6c8361f7f0f408abdee074fc01c1a64b87ee13926da955f653e2f756f7b8bc93"
    end

    on_intel do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.3/isx_linux_amd64", using: :nounzip
      sha256 "9411526ad9fc461e70794cbb7a1188209bc05a9ec2e20307b428c5e180cc2b0d"
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