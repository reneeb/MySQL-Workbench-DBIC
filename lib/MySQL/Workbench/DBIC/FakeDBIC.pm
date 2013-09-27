package MySQL::Workbench::DBIC::FakeDBIC;

package
  DBIx::Class::Schema;

# ABSTRACT: provide some DBIx::Class method stubs when DBIx::Class is not installed 

sub DBIx::Class::Schema::load_namespaces {}

package
   DBIx::Class;

sub DBIx::Class::load_components {}
sub DBIx::Class::table {}
sub DBIx::Class::add_columns {}
sub DBIx::Class::set_primary_key {}
sub DBIx::Class::belongs_to {}
sub DBIx::Class::has_many {}

1;

=head1 DESCRIPTION

C<MySQL::Workbench::DBIC> tries to load the schema class to determine what version number
should be used. This fails when L<DBIx::Class> is not installed. So we fake it.

