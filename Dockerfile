FROM perl

RUN echo | cpan
RUN cpan PAR::Packer String::Interpolate::Named Text::Layout File::LoadLines PDF::API2 Devel::CheckLib App::Packager

RUN DEBIAN_FRONTEND="noninteractive" apt-get update \
  && apt-get install -y\
    wget \
    libharfbuzz-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /
RUN wget https://github.com/sciurius/perl-HarfBuzz-Shaper/archive/R0.016.tar.gz && tar -xzf R0.016.tar.gz
RUN wget https://github.com/ChordPro/chordpro/archive/R0.978.tar.gz && tar -xzf R0.978.tar.gz

WORKDIR /perl-HarfBuzz-Shaper-R0.016
RUN perl Makefile.PL && make && make test && make install

WORKDIR /chordpro-R0.978/pp/linux