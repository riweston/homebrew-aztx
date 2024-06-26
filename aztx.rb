# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aztx < Formula
  desc "This tool is a helper for azure-cli that leverages fzf for a nice interface to switch between subscription contexts."
  homepage "https://github.com/riweston/aztx"
  version "1.1.0"
  license "MIT"

  depends_on "azure-cli"
  depends_on "fzf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riweston/aztx/releases/download/1.1.0/aztx_1.1.0_darwin_arm64.zip"
      sha256 "cce1523b637b3c44b3d1b468a7d417c0a143e4f64b3c9dd14aaa065a8273d707"

      def install
        bin.install "aztx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/1.1.0/aztx_1.1.0_darwin_amd64.zip"
      sha256 "6243198a081daa4ebd09fcb3a9cca1bb31156ff04fc74a8327dcdc9122c8756a"

      def install
        bin.install "aztx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/1.1.0/aztx_1.1.0_linux_amd64.zip"
      sha256 "b880504452397ad711ff2bd55f99ab221d720dc0fa3c4cd698f4113d65a7923a"

      def install
        bin.install "aztx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/riweston/aztx/releases/download/1.1.0/aztx_1.1.0_linux_arm64.zip"
      sha256 "962901a704bd2f73430e9270e79d017fe336d7e64a91cc84ac3acf71708fb94f"

      def install
        bin.install "aztx"
      end
    end
  end
end
