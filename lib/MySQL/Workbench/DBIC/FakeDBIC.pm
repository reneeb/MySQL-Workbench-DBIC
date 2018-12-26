package MySQL::Workbench::DBIC::FakeDBIC;

# ABSTRACT: provide some DBIx::Class method stubs when DBIx::Class is not installed 

use strict;
use warnings;

=head1 DESCRIPTION

C<MySQL::Workbench::DBIC> tries to load the schema class to determine what version number
should be used. This fails when L<DBIx::Class> is not installed. So we fake it.

=head1 METHODS OVERLOADED

=cut

package
  DBIx::Class::Schema;

use strict;
use warnings;

sub DBIx::Class::Schema::load_namespaces {}

=head2 DBIx::Class::Schema

=head3 load_namespaces

=cut

package
   DBIx::Class;

use strict;
use warnings;

sub DBIx::Class::load_components {}
sub DBIx::Class::table {}
sub DBIx::Class::add_columns {}
sub DBIx::Class::set_primary_key {}
sub DBIx::Class::belongs_to {}
sub DBIx::Class::has_many {}

=head2 DBIx::Class

=over 4

=item * DBIx::Class::load_components

=item * DBIx::Class::table

=item * add_columns

=item * set_primary_key

=item * belongs_to

=item * has_many

=back

=cut

1;
