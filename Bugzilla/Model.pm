package Bugzilla::Model;
use Mojo::Base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces(default_resultset_class => 'ResultSet');
__PACKAGE__->load_components('Helper::Schema::QuoteNames');

1;

=head1 NAME

Bugzilla::Model - a DBIx::Class::Schema for Bugzilla

=head1 SYNOPSIS

  my $model      = Bugzilla->dbh->model;
  my $firefox_rs = $model->resultset('Bug')->search({'product.name' => 'Firefox'},
    {join => ['product', {bug_keywords => 'keyword'}]});
  my @report = $firefox_rs->group_by('bug_id')->columns({
    bug_id   => 'bug.bug_id',
    summary  => 'bug.short_desc',
    product  => 'product.name',
    keywords => {group_concat => 'keyword.name'}
  })->hri->all;
  is(
    \@report,
    [
      {
        bug_id   => 1,
        keywords => 'regression,relnote',
        product  => 'Firefox',
        summary  => 'Some bug'
      },
      {
        bug_id   => 2,
        keywords => undef,
        product  => 'Firefox',
        summary  => 'some other bug'
      }
    ]
  );

=head1 SEE ALSO

See L<DBIx::Class> and L<DBIx::Class::Helper::ResultSet::Shortcut> for more examples of usage.
