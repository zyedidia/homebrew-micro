class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    url "https://github.com/zyedidia/micro/releases/download/v1.0.2/micro-1.0.2-osx.tar.gz"
    sha256 "2608d2f4fe3c8b8d9517e5e4ce8b3b14647e8b6ff90345aed209396f37d41cdc"

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

