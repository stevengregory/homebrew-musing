class Musing < Formula
  desc "CLI for managing multi-service development stacks"
  homepage "https://github.com/stevengregory/musing-cli"
  url "https://github.com/stevengregory/musing-cli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "384e2edcd6d05d92e65a0901ef4e7e0c2cd1b55da8331e912db026385c26a309"
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
