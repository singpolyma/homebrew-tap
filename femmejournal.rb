class Femmejournal < Formula
	desc "Cross-platform, convergence-ready, track menstruation and fertility"
	homepage "https://FemmeJournal.singpolyma.net"
	head "https://git.sr.ht/~singpolyma/FemmeJournal", using: :git
	depends_on "librsvg" => :build
	depends_on "qt"

	stable do
		url "https://git.sr.ht/~singpolyma/FemmeJournal", using: :git, tag: "0.1.0"
	end

	def install
		system "qmake", "PREFIX=#{prefix}"
		system "make"
		system "make", "install", "INSTALL_ROOT=#{prefix}"
	end
end
