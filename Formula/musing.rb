class Musing < Formula
  desc "Project-agnostic CLI for managing multi-service development stacks"
  homepage "https://github.com/stevengregory/musing-cli"
  url "https://github.com/stevengregory/musing-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "440c03e20feaea3c3c85c9e9c888cbcce34a08b189a84636c30ce67df4277b7a"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{Utils.git_head}
      -X main.date=#{time.iso8601}
    ]

    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"musing"), "./cmd/musing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/musing --version")
  end
end
