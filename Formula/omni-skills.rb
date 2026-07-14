class OmniSkills < Formula
  desc "Write-once, run-anywhere prompt compiler and sync tool for AI agents"
  homepage "https://github.com/moatazhamada/ai-omni-skills"
  version "1.5.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.5.7/omni-skills-mac-arm64"
      sha256 "42819236ab12e409fe915f390f55bc41b882c2e6988ff8d171f12a52ea70131a"
    else
      url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.5.7/omni-skills-mac-x64"
      sha256 "e155ba0c13bc9ede38f8912c1f69502af2c9b47a85eb0dd06517176fc991af2b"
    end
  end

  on_linux do
    url "https://github.com/moatazhamada/ai-omni-skills/releases/download/v1.5.7/omni-skills-linux-x64"
    sha256 "84ea00b269e3823aa7d1cba8856cabe41a8d041b04630bb4f287456e1395f67e"
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
