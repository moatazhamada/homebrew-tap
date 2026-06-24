class OmniSkills < Formula
  desc "Write-once, run-anywhere prompt compiler and sync tool for AI agents"
  homepage "https://github.com/moatazhamada/ai-omni-skills"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.4.0/omni-skills-mac-arm64"
      sha256 "e57c9146312336d4fae9fd427b45e58ffae19cc6a8a42c653f0a395868621d7d"
    else
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.4.0/omni-skills-mac-x64"
      sha256 "bae1e99585ac67344762faef7468d2645fb162ed59c8bdb5860bb2520452401b"
    end
  end

  on_linux do
    url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.4.0/omni-skills-linux-x64"
    sha256 "47d960155e632451d1ecbf2e5914e73705a8db286dd65e69c42e9030e1a6b18e"
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
