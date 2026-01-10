class Musing < Formula
  desc "CLI for managing multi-service development stacks"
  homepage "https://github.com/stevengregory/musing-cli"
  url "https://github.com/stevengregory/musing-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9a162858917650a2c3d6f8892d0bcb3ce7652f18f8a53b709b4aa8ed6eb4fec6"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.date=#{time.iso8601}
    ]

    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"musing"), "./cmd/musing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/musing --version")
  end
end
