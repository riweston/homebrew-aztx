# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aztx < Formula
  desc "This tool is a helper for azure-cli that leverages fzf for a nice interface to switch between subscription contexts."
  homepage "https://github.com/riweston/aztx"
  version "1.0.3"
  license "MIT"

  depends_on "azure-cli"
  depends_on "fzf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riweston/aztx/releases/download/1.0.3/aztx_1.0.3_darwin_arm64.zip"
      sha256 "669395abaa306af3d13d3ea7f85cd0830e41f39bb58eeee2479e961b8a71633a"

      def install
        bin.install "aztx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/1.0.3/aztx_1.0.3_darwin_amd64.zip"
      sha256 "684981d1bb4ed2fcc4518a0aead2e8eea25ffade5df8bfe90c631b87a0992fc6"

      def install
        bin.install "aztx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/riweston/aztx/releases/download/1.0.3/aztx_1.0.3_linux_amd64.zip"
      sha256 "c59e83a92d1ae64700b3dfdbaece5ee809d9f0bfebdc0aa915c14406d0595209"

      def install
        bin.install "aztx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/riweston/aztx/releases/download/1.0.3/aztx_1.0.3_linux_arm64.zip"
      sha256 "89c03389bf12ea494bdf32e5d328aa5426142d580d457d06bdc5fd996929f587"

      def install
        bin.install "aztx"
      end
    end
  end
end
