class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"

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
