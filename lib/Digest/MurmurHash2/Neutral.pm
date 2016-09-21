package Digest::MurmurHash2::Neutral;

# ABSTRACT: Perl XS interface to the endian neutral MurmurHash2 algorithm

use strict;
use warnings;
use base 'Exporter';

our @EXPORT_OK = ('murmur_hash2_neutral');

require XSLoader;
XSLoader::load('Digest::MurmurHash2::Neutral');

1;

__END__

=head1 SYNOPSIS

  use Digest::MurmurHash2::Neutral qw(murmur_hash2_neutral);
  murmur_hash2_neutral($data_to_hash);

OR

  use Digest::MurmurHash2::Neutral;
  Digest::MurmurHash2::murmur_hash2_neutral($data_to_hash);

=head1 DESCRIPTION

This is an implementation of the endian neutral MurmurHash2 algorithm by Austin
Appleby.  This module was originally written for
L<ZipRecruiter|https://www.ziprecruiter.com/hiring/technology> using L<code from
nginx|https://github.com/nginx/nginx/blob/42f1e1cb96b510d1fa1abad99a5294a37b750d99/src/core/ngx_murmurhash.c>.
I used L<Digest::MurmurHash> as a template.

=head1 WHY

As stated above, this module is implemented to compatible with C<nginx>'s
MurmurHash2 implementation, used in the C<split_clients> directive.
C<MurmurHash3> would be faster, but compatibility is the goal here.

=head1 SEE ALSO

=over

=item * L<Digest::MurmurHash>

=item * L<Digest::MurmurHash3>

=item * L<Austin Appleby's algorithm description page|http://murmurhash.googlepages.com/>

=back

=cut
