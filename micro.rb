class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    url "https://github.com/zyedidia/micro/releases/download/v1.0.1/micro-1.0.1-osx.tar.gz"
    sha256 "9961521fc42e48fc8a39ee94fa2b61da97bd49a5ea96f56c8b07881d75216d34"

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

