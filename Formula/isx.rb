class Isx < Formula
  desc "CLI for isxcode app"
  homepage "https://github.com/isxcode/isx-cli"
  version "1.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_darwin_arm64", using: :nounzip
      sha256 "e1e497ae228d67b12b24e2239ee556cdf8a8e9cdbc3b8ea9eba85d9d558fbd30"
    end

    on_intel do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_darwin_amd64", using: :nounzip
      sha256 "d74b3c9d80dfee1d76d676438f327af573d78ac3a7f06f994e101d824475b413"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_linux_arm64", using: :nounzip
      sha256 "eeec1284e376824f7c732b35f11821705fab5467d5263f611d88b086352430fe"
    end

    on_intel do
      url "https://github.com/isxcode/isx-cli/releases/download/v1.1.4/isx_linux_amd64", using: :nounzip
      sha256 "0ac43b1c8f954cafad66ccf248681ba6dc0a3f2cc89b0c142dc24c1582e0860f"
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
