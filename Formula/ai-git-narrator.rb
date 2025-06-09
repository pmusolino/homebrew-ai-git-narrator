class AiGitNarrator < Formula
  desc "Generate git commit messages and PR descriptions using AI"
  homepage "https://github.com/pmusolino/AI-Git-Narrator"
  url "https://github.com/pmusolino/AI-Git-Narrator/archive/refs/tags/1.0.0.tar.gz"
  sha256 "5e606fa79287ef1a9c8049879d62be3fea2d29128bab41f3aa52611adf1aec60"
  license "MIT"

  depends_on "swift" => :build
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/AIGitNarrator" => "ai-git-narrator"
  end

  test do
    assert_match "OVERVIEW: Generate git commit messages and PR descriptions using AI",
                 shell_output("#{bin}/ai-git-narrator --help")
  end
end
