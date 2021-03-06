# This file is generated by Dist::Zilla::Plugin::SyncCPANfile v0.01
# Do not edit this file directly. To change prereqs, edit the `dist.ini` file.

requires "Carp" => "0";
requires "Data::Dumper" => "0";
requires "File::Path" => "2.0";
requires "File::Spec" => "3.40";
requires "JSON" => "0";
requires "List::Util" => "0";
requires "Moo" => "1.003001";
requires "MySQL::Workbench::Parser" => "1.10";
requires "perl" => "5.010001";

on 'test' => sub {
    requires "Capture::Tiny" => "0";
    requires "File::Copy" => "0";
    requires "File::Path" => "2.0";
    requires "FindBin" => "0";
    requires "Pod::Coverage::TrustPod" => "0";
    requires "Test::LongString" => "0.16";
};

on 'configure' => sub {
    requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
    requires "Pod::Coverage::TrustPod" => "0";
    requires "Test::Pod" => "1.41";
    requires "Test::Pod::Coverage" => "1.08";
};
