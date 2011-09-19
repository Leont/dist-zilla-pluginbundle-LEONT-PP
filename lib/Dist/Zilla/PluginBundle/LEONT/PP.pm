package Dist::Zilla::PluginBundle::LEONT::PP;

use Moose;
use Dist::Zilla;
with 'Dist::Zilla::Role::PluginBundle::Easy';

my @bundles = qw/Basic LEONT::Base/;

sub configure {
	my $self = shift;

	$self->add_bundle("\@$_") for @bundles;
	return;
}

1;

__END__

#ABSTRACT: Plugins LeonT uses for pure perl modules

=head1 DESCRIPTION

This is identical to the following setup:

    [@Basic]
	[@LEONT::Base]

=begin Pod::Coverage

configure

=end Pod::Coverage

=cut

