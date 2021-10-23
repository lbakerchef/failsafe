%
% Author:  Lincoln Baker
% Contact: lbaker@chef.io
% 

:- set_prolog_flag(answer_write_options,[max_depth(0)]).
:- use_module(library(pcre)).

% ------------------------------------------------------------------------------
% failure record prototype
% ------------------------------------------------------------------------------
% failure(Id, FailureText, Context, Reason, ReleaseBlocking, AffectedReleases, AffectedUpgradePaths, Builds, AffectedScenarios).

failure(
0,
"null_resource.chef_server_config (remote-exec): BEGIN INSTALL CHEF SERVER \nnull_resource.chef_server_config (remote-exec): sudo chown root:root /tmp/hosts \nnull_resource.chef_server_config (remote-exec): + sudo chown root:root /tmp/hosts \nnull_resource.chef_server_config (remote-exec): sudo mv /tmp/hosts /etc/hosts \nnull_resource.chef_server_config (remote-exec): + sudo mv /tmp/hosts /etc/hosts \nnull_resource.chef_server_config (remote-exec): curl -vo /tmp/ \nnull_resource.chef_server_config (remote-exec): + curl -vo /tmp/ \nnull_resource.chef_server_config (remote-exec): curl: no URL specified!",
_Context,
"we don't have the amazon builds for 12.17 and 13.2.",
no,
["14.6.32"],
[
"12.17.15 -> 14.6.32",
"13.2 -> 14.6.32"
],
[
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/44",
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/45"
],
[
"standalone-upgrade-ipv6-amazon-2",
"standalone-upgrade-ipv4-amazon-2",
"external-postgres-ipv6-amazon-2",
"external-postgres-ipv4-amazon-2",
"tiered-upgrade-ipv6-amazon-2",
"tiered-upgrade-ipv4-amazon-2"
]
).

failure(
1,
"null_resource.backend3_config (remote-exec): Waiting for the node to come online...\nnull_resource.backend3_config: Still creating... [1m50s elapsed]\nnull_resource.backend3_config (remote-exec): done\nnull_resource.backend3_config (remote-exec): This node has been joined to the cluster.\nnull_resource.backend3_config (remote-exec): sudo chef-backend-ctl gen-server-config chefserver.internal > /tmp/chef-server.rb\nnull_resource.backend3_config (remote-exec): + sudo chef-backend-ctl gen-server-config chefserver.internal\nnull_resource.backend3_config (remote-exec): echo \"\"profiles[\'root_url\'] = \'https://chefserver.internal:9998\'\"\" | sudo tee -a /tmp/chef-server.rb\nnull_resource.backend3_config (remote-exec): + echo profiles[\'root_url\'] = \'https://chefserver.internal:9998\'\nnull_resource.backend3_config (remote-exec): + sudo tee -a /tmp/chef-server.rb\nnull_resource.backend3_config (remote-exec): tee: /tmp/chef-server.rb: Permission denied\nnull_resource.backend3_config (remote-exec): profiles[\'root_url\'] = \'https://chefserver.internal:9998\'\nError: error executing \"\"/tmp/terraform_2099555810.sh\"\": Process exited with status 1",
_Context,
unknown,
no,
["14.6.32"],
[
"12.17.15 -> 14.6.32",
"13.2 -> 14.6.32",
"14.5.29 -> 14.6.32"
],
[
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/44",
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/45",
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/47"
],
["chef-backend-ipv4-ubuntu-20.04"]
).

failure(
2,
"Error: Error waiting for instance (i-09e5be87748a0b662) to become ready: timeout while waiting for state to become \'running\' (last state: \'pending\', timeout: 10m0s)\n \n  on ../../../../modules/aws_instance/main.tf line 30, in resource \"\"aws_instance\"\" \"\"default\"\":\n  30: resource \"\"aws_instance\"\" \"\"default\"\" {\n and\nnull_resource.backend3_config (remote-exec): sudo chef-backend-ctl gen-server-config chefserver.internal > /tmp/chef-server.rb\nnull_resource.backend3_config (remote-exec): + sudo chef-backend-ctl gen-server-config chefserver.internal\nnull_resource.backend3_config (remote-exec): echo \"\"profiles[\'root_url\'] = \'https://chefserver.internal:9998\'\"\" | sudo tee -a /tmp/chef-server.rb\nnull_resource.backend3_config (remote-exec): + + sudo tee -a /tmp/chef-server.rb\nnull_resource.backend3_config (remote-exec): echo profiles[\'root_url\'] = \'https://chefserver.internal:9998\'\nnull_resource.backend3_config (remote-exec): tee: /tmp/chef-server.rb: Permission denied\nnull_resource.backend3_config (remote-exec): profiles[\'root_url\'] = \'https://chefserver.internal:9998\'",
_Context,
"Terraform issue.",
no,
["14.5.29"],
["14.4.4 -> 14.5.27"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/39"],
["chef-backend-ipv4-ubuntu-20.04"]
).

failure(
3,
"null_resource.workstation_config (remote-exec): cp: target ‘/usr/local/share/ca-certificates/’ is not a directory",
_Context,
"Setup issue.",
"Should not be - passes on Ubuntu 20.",
["14.5.29"],
["14.4.4 -> 14.5.27"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/39"],
["mtls-ipv4-rhel-7"]
).

failure(
4,
"error in user create: null_resource.chef_server_config (remote-exec): ERROR: Network Error: Connection refused - Connection refused connecting to https://127.0.0.1/users/, giving up\nnull_resource.chef_server_config (remote-exec): Check your knife configuration and network settings",
_Context,
"Merged some additional changes in umbrella. Respective chef-server changes need to be merged.: https://github.com/chef/umbrella/pull/121",
no,
["14.5.29"],
["14.4.4 -> 14.5.27"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/39"],
["standalone-upgrade-13es-ipv4-rhel-7"]
).

failure(
5,
"Error: A resource with the ID \"\"/subscriptions/80b824de-ec53-4116-9868-3deeab10b0cd/resourceGroups/39-releng-e2e-test/providers/Microsoft.Network/networkSecurityGroups/external-postgresql\"\" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for \"\"azurerm_network_security_group\"\" for more information.",
_Context,
"the scenario runs successfully, failure on destroy? setup issue",
no,
["14.5.29"],
["14.4.4 -> 14.5.27"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/39"],
["azure-postgresql-ipv4-rhel-7"]
).

failure(
6,
"null_resource.chef_server_test (remote-exec): Failures:\nnull_resource.chef_server_test (remote-exec):   1) ACL API /<type>/<name>/_acl endpoint for clients type /clients/<name>/_acl/update endpoint PUT /clients/<name>/_acl/update normal client with all permissions except GRANT returns 403\nnull_resource.chef_server_test (remote-exec):      Got 2 failures:\nnull_resource.chef_server_test (remote-exec):      1.1) Failure/Error:\nnull_resource.chef_server_test (remote-exec):             post(creation_url, setup_user,\nnull_resource.chef_server_test (remote-exec):               :payload => creation_body).should look_like({\nnull_resource.chef_server_test (remote-exec):                 :status => 201\nnull_resource.chef_server_test (remote-exec):               })\nnull_resource.chef_server_test (remote-exec):\nnull_resource.chef_server_test (remote-exec):             Response should have HTTP status code 201 (\'Created\'), but it was actually 403 (\'Forbidden\')\nnull_resource.chef_server_test (remote-exec):               Reponse Body: {\"\"error\"\":[\"\"missing create permission\"\"]}\nnull_resource.chef_server_test (remote-exec):           # ./spec/api/account/account_acl_spec.rb:1012:in `block (5 levels) in <top (required)>\'\nnull_resource.chef_server_test (remote-exec):      1.2) Failure/Error:\nnull_resource.chef_server_test (remote-exec):             delete(deletion_url, platform.admin_user).should look_like({\nnull_resource.chef_server_test (remote-exec):                 :status => 200\nnull_resource.chef_server_test (remote-exec):               })\nnull_resource.chef_server_test (remote-exec):\nnull_resource.chef_server_test (remote-exec):             Response should have HTTP status code 200 (\'OK\'), but it was actually 404 (\'Not Found\')\nnull_resource.chef_server_test (remote-exec):               Reponse Body: {\"\"error\"\":[\"\"Cannot load client new-object\"\"]}\nnull_resource.chef_server_test (remote-exec):           # ./spec/api/account/account_acl_spec.rb:1028:in `block (5 levels) in <top (required)>\'\nnull_resource.chef_server_test (remote-exec): Finished in 43 minutes 14 seconds (files took 6.44 seconds to load)\nnull_resource.chef_server_test (remote-exec): 5181 examples, 1 failure, 132 pending",
_Context,
"passes on rerun",
no,
["14.5.29"],
["14.4.4 -> 14.5.27"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/39"],
["azure-postgresql-ipv4-ubuntu-18.04"]
).

failure(
7,
"\nError: A resource with the ID \"\"/subscriptions/80b824de-ec53-4116-9868-3deeab10b0cd/resourceGroups/39-releng-e2e-test/providers/Microsoft.Network/networkSecurityGroups/external-postgresql\"\" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for \"\"azurerm_network_security_group\"\" for more information.",
_Context,
"the scenario runs successfully, failure on destroy? setup issue",
no,
["14.5.29"],
["14.4.4 -> 14.5.27"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/39"],
["azure-postgresql-ipv4-ubuntu-20.04"]
).

failure(
8,
"mtls not supported in version 14.0.58",
_Context,
none,
no,
["14.5.29"],
["12.17.15 -> 14.0.58"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520"],
["mtls-ipv4-ubuntu-18.04"]
).

failure(
9,
"null_resource.front_end_config (remote-exec): Prompt timed out. Use non-interactive flags or enter an answer within 60 seconds.\nnull_resource.front_end_config (remote-exec): +---------------------------------------------+\nnull_resource.front_end_config (remote-exec): Chef Infra Client cannot execute without accepting the license",
_Context,
"terraform not setup to upgrade from 12.17.15",
no,
["14.5.29"],
["12.17.15 -> 14.0.58"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520"],
["tiered-upgrade-ipv4-rhel-7"]
).

failure(
10,
"null_resource.front_end_config (remote-exec): +---------------------------------------------+\nnull_resource.front_end_config (remote-exec): Chef Infra Client cannot execute without accepting the license",
_Context,
"terraform not setup to upgrade from 12.17.15",
no,
["14.5.29"],
["12.17.15 -> 14.0.58"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520"],
["tiered-upgrade-ipv4-ubuntu-18.04"]
).

failure(
11,
"null_resource.chef_server_config (remote-exec): * Net::HTTPServerException occurred in chef run: elasticsearch_index[chef] (private-chef::opscode-solr4-external line 23) had an error: Net::HTTPServerException: 406 \"Not Acceptable\"",
_Context,
"needs investigation",
unspecified,
["14.5.29"],
["12.17.15 -> 14.0.58"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520"],
["external-elasticsearch-ipv4-ubuntu-18.04"]
).

failure(
12,
"null_resource.chef_server_config (remote-exec): STDERR: /opt/opscode/embedded/bin/perl: error while loading shared libraries: libnsl.so.1: cannot open shared object file: No such file or directory",
_Context,
"needs investigation",
unspecified,
["14.5.29"],
["12.17.15 -> 14.0.58"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520"],
["external-postgresql-ipv6-rhel-8"]
).

failure(
13,
"null_resource.front_end_config (remote-exec): Chef Infra Client cannot execute without accepting the license",
_Context,
"terraform not setup to upgrade from 12.17.15",
no,
["14.5.29"],
["12.17.15 -> 14.0.58"],
["https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520"],
["tiered-upgrade-ipv6-rhel-7"]
).


% ------------------------------------------------------------------------------
% to enter a failure, copy/paste this, uncomment, and fill in the blanks
% ------------------------------------------------------------------------------
%failure(
%ID,
%"",
%Context,
%Reason,
%ReleaseBlocking,
%AffectedReleases,
%AffectedUpgradePaths,
%Builds,
%AffectedScenarios
%).

regex_fail :-
    write("regex_fail(Regex, Fail, Context, Reason, ReleaseBlocking, AffectedReleases, UpgradePaths, Builds, Scenarios).").

regex_fail(Regex,   Fail, Context, Reason, ReleaseBlocking, AffectedReleases, UpgradePaths, Builds, Scenarios) :-
    failure(_Id,     Fail, Context, Reason, ReleaseBlocking, AffectedReleases, UpgradePaths, Builds, Scenarios),
    re_match(Regex, Fail).


re_fail :-
    write("re_fail(Regex, Fail).").

re_fail(Regex,       [Fail, Context, Reason, ReleaseBlocking, AffectedReleases, UpgradePaths, Builds, Scenarios]) :-
    regex_fail(Regex, Fail, Context, Reason, ReleaseBlocking, AffectedReleases, UpgradePaths, Builds, Scenarios).

fail(Regex) :-
    regex_fail(Regex, Fail, _Context, Reason, ReleaseBlocking, AffectedReleases, UpgradePaths, Builds, Scenarios),
    write("\n================================================================================="),
    write("\nFAILURE"),
    nl, write(Fail),
    write("\n\nREASON"),
    nl, write(Reason),
    write("\n\nRELEASE BLOCKING"),
    nl, write(ReleaseBlocking),
    write("\n\nAFFECTED RELEASES"),
    nl, maplist(writeln, AffectedReleases),
    write("\nAFFECTED UPGRADE PATHS"),
    nl, maplist(writeln, UpgradePaths),
    write("\nAFFECTED SCENARIOS"),
    nl, maplist(writeln, Scenarios),
    write("\nBUILDS"),
    nl, maplist(writeln, Builds).


% docs
% https://www.swi-prolog.org/pldoc/doc/_SWI_/library/pcre.pl
% https://learnxinyminutes.com/docs/pcre/

%
% workflow
% coming soon
%

%
% tools
%
% regex tester/debugger:
% https://regex101.com/
%
% escape text:
% https://onlinetexttools.com/escape-text

% nice to haves
% 1) web gui front end
% 2) help

% ------------------------------------------------------------------------------
% scenarios
% ------------------------------------------------------------------------------
%        Shortname, Longname
%scenario(ap4r7,   Topology-Test-...).
%scenario(ap4r7,   azure-postgresql-ipv4-rhel-7).


% ------------------------------------------------------------------------------
% upgrade paths
% ------------------------------------------------------------------------------
%upgrade_path('12.17.15 -> 14.6.32'). % or have UpgradeFrom, UpgradeTo vars?
%upgrade_path('12.17.15', '14.6.32').
%upgrade_path(12-17-15, 14-6-32). 

