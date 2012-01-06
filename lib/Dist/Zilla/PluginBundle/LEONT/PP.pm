package Dist::Zilla::PluginBundle::LEONT::PP;

use Moose;
extends 'Dist::Zilla::PluginBundle::LEONT::Base';
with qw/Dist::Zilla::Role::PluginBundle::Easy Dist::Zilla::Role::PluginBundle::Config::Slicer/;

my @basic = qw/GatherDir PruneCruft ManifestSkip MetaYAML License Readme ExtraTests ExecDir ShareDir Manifest TestRelease ConfirmRelease UploadToCPAN MakeMaker/;

sub configure {
	my $self = shift;

	$self->add_plugins(@basic);
	$self->SUPER::configure;
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

