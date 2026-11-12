class OmniSkills < Formula
  desc "Write-once, run-anywhere prompt compiler and sync tool for AI agents"
  homepage "https://github.com/moatazhamada/ai-omni-skills"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.6.0/omni-skills-mac-arm64"
      sha256 "c5ecefadeb9606bbb27138beef313cc9553f6944327c28f15c0a561db50d4ab5"
    else
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.6.0/omni-skills-mac-x64"
      sha256 "ff0270321bdac6127f21ad8ee39de3d4f39f73acff1bff0b2f53c3cc378568d9"
    end
  end

  on_linux do
    url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.6.0/omni-skills-linux-x64"
    sha256 "94547b02d89260175bd7a44e031192f8b495f049156340d356594d1d46f4cb7d"
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
