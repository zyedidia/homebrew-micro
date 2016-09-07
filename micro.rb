class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    url "https://github.com/zyedidia/micro/releases/download/v1.0.3/micro-1.0.3-osx.tar.gz"
    sha256 "6eb01f2aa874a8c08696c3e03dfac82581960e76731a9369fd4bf156c7b8c426"

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

