class OmniSkills < Formula
  desc "Write-once, run-anywhere prompt compiler and sync tool for AI agents"
  homepage "https://github.com/moatazhamada/ai-omni-skills"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.3.2/omni-skills-mac-arm64"
      sha256 "REPLACE_WITH_SHA256_FOR_omni-skills-mac-arm64"
    else
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.3.2/omni-skills-mac-x64"
      sha256 "REPLACE_WITH_SHA256_FOR_omni-skills-mac-x64"
    end
  end

  on_linux do
    url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.3.2/omni-skills-linux-x64"
    sha256 "REPLACE_WITH_SHA256_FOR_omni-skills-linux-x64"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "omni-skills-mac-arm64" => "omni-skills"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "omni-skills-mac-x64" => "omni-skills"
    else
      bin.install "omni-skills-linux-x64" => "omni-skills"
    end
  end

  test do
    system "#{bin}/omni-skills", "version"
  end
end
