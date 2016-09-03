class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    url "https://github.com/zyedidia/micro/releases/download/v1.0.1/micro-1.0.1-osx.tar.gz"
    sha256 "72fe755732daf7b6b4980182c107f8edda7aa312f005d511750c3b3e70b5c566"

    devel do
        def self.sha256_checksum
            `curl --silent 'http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz.sha256'`.split.first
        end

        url "http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz"
        sha256 sha256_checksum
    end

    def install
        bin.install Dir["micro"]
    end
end

