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

failure(
14,
"error in join cluster\nnull_resource.backend1_config: Still creating... [3m0s elapsed]\nnull_resource.backend1_config (remote-exec): ssh: connect to host ec2-52-11-17-201.us-west-2.compute.amazonaws.com port 22: Connection timed out",
_Context,
"fixed on retry",
unspecified,
["14.0.65"],
[],
[],
["chef-backend-ipv4-ubuntu-16.04"]
).

failure(
15,
"resource.chef_server_config (remote-exec):     * execute[initialize_cluster_/var/opt/opscode/postgresql/9.6/data] action run\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       ================================================================================\nnull_resource.chef_server_config (remote-exec):       Error executing action `run` on resource \'execute[initialize_cluster_/var/opt/opscode/postgresql/9.6/data]\'\nnull_resource.chef_server_config (remote-exec):       ================================================================================\n \nnull_resource.chef_server_config (remote-exec):       Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):       ------------------------------------\nnull_resource.chef_server_config (remote-exec):       Expected process to exit with [0], but received \'1\'\nnull_resource.chef_server_config (remote-exec):       ---- Begin output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):       STDOUT: The files belonging to this database system will be owned by user \"\"opscode-pgsql\"\".\nnull_resource.chef_server_config (remote-exec):       This user must also own the server process.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       The database cluster will be initialized with locale \"\"C\"\".\nnull_resource.chef_server_config (remote-exec):       The default database encoding has accordingly been set to \"\"SQL_ASCII\"\".\nnull_resource.chef_server_config (remote-exec):       The default text search configuration will be set to \"\"english\"\".\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       Data page checksums are disabled.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       fixing permissions on existing directory /var/opt/opscode/postgresql/9.6/data ... ok\nnull_resource.chef_server_config (remote-exec):       creating subdirectories ... ok\nnull_resource.chef_server_config (remote-exec):       selecting default max_connections ... 100\nnull_resource.chef_server_config (remote-exec):       selecting default shared_buffers ... 128MB\nnull_resource.chef_server_config (remote-exec):       selecting default timezone ... UTC\nnull_resource.chef_server_config (remote-exec):       selecting dynamic shared memory implementation ... posix\nnull_resource.chef_server_config (remote-exec):       creating configuration files ... ok\nnull_resource.chef_server_config (remote-exec):       running bootstrap script ... ok\nnull_resource.chef_server_config (remote-exec):       performing post-bootstrap initialization ...\nnull_resource.chef_server_config (remote-exec):       STDERR: FATAL:  lock file \"\"postmaster.pid\"\" already exists\nnull_resource.chef_server_config (remote-exec):       HINT:  Is another postmaster (PID 25453) running in data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"?\nnull_resource.chef_server_config (remote-exec):       child process exited with exit code 1\nnull_resource.chef_server_config (remote-exec):       initdb: removing contents of data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"\nnull_resource.chef_server_config (remote-exec):       ---- End output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):       Ran initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C returned 1\n \nnull_resource.chef_server_config (remote-exec):       Resource Declaration:\nnull_resource.chef_server_config (remote-exec):       ---------------------\nnull_resource.chef_server_config (remote-exec):       # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_cluster.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):        41:   execute \"\"initialize_cluster_#{new_resource.data_dir}\"\" do\nnull_resource.chef_server_config (remote-exec):        42:     command \"\"initdb --pgdata #{new_resource.data_dir} --locale C\"\"\nnull_resource.chef_server_config (remote-exec):        43:     user node[\'private_chef\'][\'postgresql\'][\'username\']\nnull_resource.chef_server_config (remote-exec):        44:     not_if { ::File.exist?(::File.join(new_resource.data_dir, \'PG_VERSION\')) }\nnull_resource.chef_server_config (remote-exec):        45:   end\nnull_resource.chef_server_config (remote-exec):        46:\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       Compiled Resource:\nnull_resource.chef_server_config (remote-exec):       ------------------\nnull_resource.chef_server_config (remote-exec):       # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_cluster.rb:41:in `block in class_from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       execute(\"\"initialize_cluster_/var/opt/opscode/postgresql/9.6/data\"\") do\nnull_resource.chef_server_config (remote-exec):         action [:run]\nnull_resource.chef_server_config (remote-exec):         default_guard_interpreter :execute\nnull_resource.chef_server_config (remote-exec):         command \"\"initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C\"\"\nnull_resource.chef_server_config (remote-exec):         backup 5\nnull_resource.chef_server_config (remote-exec):         declared_type :execute\nnull_resource.chef_server_config (remote-exec):         cookbook_name \"\"private-chef\"\"\nnull_resource.chef_server_config (remote-exec):         domain nil\nnull_resource.chef_server_config (remote-exec):         user \"\"opscode-pgsql\"\"\nnull_resource.chef_server_config (remote-exec):         not_if { #code block }\nnull_resource.chef_server_config (remote-exec):       end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       System Info:\nnull_resource.chef_server_config (remote-exec):       ------------\nnull_resource.chef_server_config (remote-exec):       chef_version=15.12.22\nnull_resource.chef_server_config (remote-exec):       platform=redhat\nnull_resource.chef_server_config (remote-exec):       platform_version=8.2\nnull_resource.chef_server_config (remote-exec):       ruby=ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]\nnull_resource.chef_server_config (remote-exec):       program_name=/opt/opscode/embedded/bin/chef-client\nnull_resource.chef_server_config (remote-exec):       executable=/opt/opscode/embedded/bin/chef-client\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     ================================================================================\nnull_resource.chef_server_config (remote-exec):     Error executing action `init` on resource \'private_chef_pg_cluster[/var/opt/opscode/postgresql/9.6/data]\'\nnull_resource.chef_server_config (remote-exec):     ================================================================================\n \nnull_resource.chef_server_config (remote-exec):     Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):     ------------------------------------\nnull_resource.chef_server_config (remote-exec):     execute[initialize_cluster_/var/opt/opscode/postgresql/9.6/data] (/var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_cluster.rb line 41) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received \'1\'\nnull_resource.chef_server_config (remote-exec):     ---- Begin output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):     STDOUT: The files belonging to this database system will be owned by user \"\"opscode-pgsql\"\".\nnull_resource.chef_server_config (remote-exec):     This user must also own the server process.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     The database cluster will be initialized with locale \"\"C\"\".\nnull_resource.chef_server_config (remote-exec):     The default database encoding has accordingly been set to \"\"SQL_ASCII\"\".\nnull_resource.chef_server_config (remote-exec):     The default text search configuration will be set to \"\"english\"\".\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Data page checksums are disabled.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     fixing permissions on existing directory /var/opt/opscode/postgresql/9.6/data ... ok\nnull_resource.chef_server_config (remote-exec):     creating subdirectories ... ok\nnull_resource.chef_server_config (remote-exec):     selecting default max_connections ... 100\nnull_resource.chef_server_config (remote-exec):     selecting default shared_buffers ... 128MB\nnull_resource.chef_server_config (remote-exec):     selecting default timezone ... UTC\nnull_resource.chef_server_config (remote-exec):     selecting dynamic shared memory implementation ... posix\nnull_resource.chef_server_config (remote-exec):     creating configuration files ... ok\nnull_resource.chef_server_config (remote-exec):     running bootstrap script ... ok\nnull_resource.chef_server_config (remote-exec):     performing post-bootstrap initialization ...\nnull_resource.chef_server_config (remote-exec):     STDERR: FATAL:  lock file \"\"postmaster.pid\"\" already exists\nnull_resource.chef_server_config (remote-exec):     HINT:  Is another postmaster (PID 25453) running in data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"?\nnull_resource.chef_server_config (remote-exec):     child process exited with exit code 1\nnull_resource.chef_server_config (remote-exec):     initdb: removing contents of data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"\nnull_resource.chef_server_config (remote-exec):     ---- End output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):     Ran initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C returned 1\n \nnull_resource.chef_server_config (remote-exec):     Resource Declaration:\nnull_resource.chef_server_config (remote-exec):     ---------------------\nnull_resource.chef_server_config (remote-exec):     # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/postgresql.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):      74: private_chef_pg_cluster postgresql_data_dir do\nnull_resource.chef_server_config (remote-exec):      75:   notifies :restart, \'component_runit_service[postgresql]\', :delayed if is_data_master?\nnull_resource.chef_server_config (remote-exec):      76: end\nnull_resource.chef_server_config (remote-exec):      77:\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Compiled Resource:\nnull_resource.chef_server_config (remote-exec):     ------------------\nnull_resource.chef_server_config (remote-exec):     # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/postgresql.rb:74:in `from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     private_chef_pg_cluster(\"\"/var/opt/opscode/postgresql/9.6/data\"\") do\nnull_resource.chef_server_config (remote-exec):       action [:init]\nnull_resource.chef_server_config (remote-exec):       updated true\nnull_resource.chef_server_config (remote-exec):       updated_by_last_action true\nnull_resource.chef_server_config (remote-exec):       default_guard_interpreter :default\nnull_resource.chef_server_config (remote-exec):       declared_type :private_chef_pg_cluster\nnull_resource.chef_server_config (remote-exec):       cookbook_name \"\"private-chef\"\"\nnull_resource.chef_server_config (remote-exec):       recipe_name \"\"postgresql\"\"\nnull_resource.chef_server_config (remote-exec):     end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     System Info:\nnull_resource.chef_server_config (remote-exec):     ------------\nnull_resource.chef_server_config (remote-exec):     chef_version=15.12.22\nnull_resource.chef_server_config (remote-exec):     platform=redhat\nnull_resource.chef_server_config (remote-exec):     platform_version=8.2\nnull_resource.chef_server_config (remote-exec):     ruby=ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]",
_Context,
"fixed on retry",
unspecified,
["14.0.65"],
[],
[],
["external-openldap-ipv4-rhel8"]
).

failure(
16,
"null_resource.ldap_cookbook: Still creating... [10s elapsed]\nnull_resource.ldap_cookbook: Still creating... [20s elapsed]\n \nnull_resource.ldap_cookbook (local-exec): The converge of the remote host failed for the\nnull_resource.ldap_cookbook (local-exec): following reason:\n \nnull_resource.ldap_cookbook (local-exec):   Expected process to exit with [0], but received \'100\'\n \nError: Error running command \'   set -evx\n   mkdir -p /tmp/chef-server\ncd /tmp/chef-server",
_Context,
"fixed on retry",
unspecified,
["14.0.65"],
[],
[],
["external-openldap-ipv4-ubuntu-16.04"]
).

failure(
17,
"\nnull_resource.chef_server_config: Still creating... [5m0s elapsed]\n \nError: timeout - last error: SSH authentication failed (ec2-user@ec2-54-218-133-58.us-west-2.compute.amazonaws.com:22): ssh: handshake failed: ssh: unable to authenticate, attempted methods [none publickey], no supported methods remain",
_Context,
"Fails consistently with following error on retry :\nLogin Succeeded\nFixing permissions for \'core-default-prod-i-045300fe2d5f72840-1/chef/chef-umbrella-master-chef-server-full\'...\n \npanic: Error making API request.\n \nURL: GET https://vault.chef.co:8200/v1/account/dynamic/aws/chef-cd/sts/default\nCode: 403. Errors:\n \n* permission denied\n \ngoroutine 1 [running]:\ngithub.com/chef/ci-studio-common/lib.Check(...)\n\t/Users/tom/code/chef/ci-studio-common/lib/utils.go:11\ngithub.com/chef/ci-studio-common/vault-util/cmd.configureAccounts(0xc0000240d4, 0x13)\n\t/Users/tom/code/chef/ci-studio-common/vault-util/cmd/configure-accounts.go:63 +0x20b\ngithub.com/chef/ci-studio-common/vault-util/cmd.tryToConfigureAccounts.func1(0x918ce0, 0xa)\n\t/Users/tom/code/chef/ci-studio-common/vault-util/cmd/configure-accounts.go:45 +0xf6\ngithub.com/avast/retry-go.Do(0xc000127d40, 0x0, 0x0, 0x0, 0xc0000977a0, 0xc000127d38)\n\t/Users/tom/go/pkg/mod/github.com/avast/retry-go@v2.3.0+incompatible/retry.go:97 +0x12a\ngithub.com/chef/ci-studio-common/vault-util/cmd.tryToConfigureAccounts(0xdaf1e0, 0xdd5700, 0x0, 0x0)\n\t/Users/tom/code/chef/ci-studio-common/vault-util/cmd/configure-accounts.go:40 +0xf0\ngithub.com/spf13/cobra.(*Command).execute(0xdaf1e0, 0xdd5700, 0x0, 0x0, 0xdaf1e0, 0xdd5700)",
unspecified,
["14.0.65"],
[],
[],
["fips-ipv4-rhel8"]
).

failure(
18,
"fails on chef-load",
_Context,
"kernel too old",
"no - ignoring for now since el-6 will be EOL by Dec 2020",
["14.0.65"],
[],
[],
["external-postgresql-ipv4-rhel6", "standalone-upgrade-ipv4-rhel6", "tiered-upgrade-ipv4-rhel-6", "external-elasticsearch-ipv4-rhel6"]
).

failure(
19,
"BEGIN SCENARIO
 
      Workspace: 9-standalone-upgrade-ipv4-ubuntu-20.04
      Scenario: standalone-upgrade
      Platform: ubuntu-20.04
          IPv6: false
        Install: 14.0.58
    Install URL: https://packages.chef.io/files/current/chef-server/14.0.58/ubuntu/20.04/chef-server-core_14.0.58-1_amd64.deb
        Upgrade: 14.0.65
    Upgrade URL: https://packages.chef.io/files/unstable/chef-server/14.0.65/ubuntu/20.04/chef-server-core_14.0.65-1_amd64.deb
        Backend: 2.2.1
    Backend URL: https://packages.chef.io/files/current/chef-backend/2.2.1/ubuntu/18.04/chef-backend_2.2.1-1_amd64.deb
 
Error: Error loading state: failed to lock state in Consul: Lock Info:
  ID:        a7dd487a-d04d-5911-ca6c-f00d12339027
  Path:      terraform/chef-server/test-scenario-env:9-standalone-upgrade-ipv4-ubuntu-20.04
  Operation: OperationTypeApply
  Who:       root@1c563b4ff29a
  Version:   0.13.2
  Created:   2020-10-22 19:09:54.176143134 +0000 UTC
  Info:      consul session: 8cf7f9b0-cfc7-32f2-f440-252a23101972",
_Context,
"fixed on retry",
unspecified,
["14.0.65"],
[],
[],
["standalone-upgrade-ubuntu-20.04", "azure-postgresql-ipv4-rhel6", "azure-postgresql-ipv4-ubuntu-20.04"]
).


failure(
20,
"Same error as azure-rhel6 on first try (meaning... ID #19 ?). \nOn the next retry Fails with :\nError: Error building account: Error getting authenticated object ID: Error listing Service Principals: autorest.DetailedError{Original:adal.tokenRefreshError{message:\"\"adal: Refresh request failed. Status Code = \'400\'. Response body: {\\\"\"error\\\"\":\\\"\"unauthorized_client\\\"\",\\\"\"error_description\\\"\":\\\"\"AADSTS700016: Application with identifier \'f8f1d452-9162-473d-9146-187f1841504b\' was not found in the directory \'a2b2d6bc-afe1-4696-9c37-f97a7ac416d7\'. This can happen if the application has not been installed by the administrator of the tenant or consented to by any user in the tenant. You may have sent your authentication request to the wrong tenant.\\\\r\\\\nTrace ID: 79e0042b-396a-48bb-a3da-004524407500\\\\r\\\\nCorrelation ID: 23d93a5f-46e5-411b-a8e1-17f23b84e4e2\\\\r\\\\nTimestamp: 2020-10-23 19:21:13Z\\\"\",\\\"\"error_codes\\\"\":[700016],\\\"\"timestamp\\\"\":\\\"\"2020-10-23 19:21:13Z\\\"\",\\\"\"trace_id\\\"\":\\\"\"79e0042b-396a-48bb-a3da-004524407500\\\"\",\\\"\"correlation_id\\\"\":\\\"\"23d93a5f-46e5-411b-a8e1-17f23b84e4e2\\\"\",\\\"\"error_uri\\\"\":\\\"\"https://login.microsoftonline.com/error?code=700016\\\"\"}\"\", resp:(*http.Response)(0xc000fde090)}, PackageType:\"\"azure.BearerAuthorizer\"\", Method:\"\"WithAuthorization\"\", StatusCode:400, Message:\"\"Failed to refresh the Token for request to https://graph.windows.net/a2b2d6bc-afe1-4696-9c37-f97a7ac416d7/servicePrincipals?%24filter=appId+eq+%27f8f1d452-9162-473d-9146-187f1841504b%27&api-version=1.6\"\", ServiceError:[]uint8(nil), Response:(*http.Response)(0xc000fde090)}\n \n  on versions-arm.tf line 37, in provider \"\"azurerm\"\":\n  37: provider \"\"azurerm\"\" {\n\non the third and fourth retry fails with:\n    Backend URL: https://packages.chef.io/files/current/chef-backend/2.2.1/el/7/chef-backend-2.2.1-1.el7.x86_64.rpm\n \nmodule.chef_server.data.http.workstation-ipv4: Refreshing state... [id=2020-10-23 18:10:37.73555061 +0000 UTC]\nmodule.chef_server.random_password.default: Refreshing state... [id=none]\n \nError: Error building AzureRM Client: obtain subscription(80b824de-ec53-4116-9868-3deeab10b0cd) from Azure CLI: Error parsing json result from the Azure CLI: Error waiting for the Azure CLI: exit status 1\n \n  on versions-arm.tf line 37, in provider \"\"azurerm\"\":\n  37: provider \"\"azurerm\"\" {",
_Context,
unspecified,
unspecified,
["14.0.65"],
[],
[],
["azure-postgresql-ipv4-rhel7", "azure-postgresl-ipv4-rhel8", "azure-postgresql-ipv4-ubuntu-16.04"]
).

failure(
21,
"module.chef_server.data.http.workstation-ipv4: Refreshing state...\nmodule.chef_server.data.azurerm_resource_group.chef_resource_group: Refreshing state...\n \nError: Error: Resource Group \"9-chef-eng-team-umbrella-test\" was not found\n \n  on ../../../../modules/arm_instance/main.tf line 1, in data \"azurerm_resource_group\" \"chef_resource_group\":\n   1: data \"azurerm_resource_group\" \"chef_resource_group\" {",
_Context,
"fixed on retry",
unspecified,
["14.0.65"],
[],
[],
["azure-postgres-ipv4-ubuntu-18.04"]
).

failure(
ID,
Failure,
_Context,
Reason,
ReleaseBlocking,
["14.0.65"],
AffectedUpgradePaths,
Builds,
AffectedScenarios
).

failure(
ID,
Failure,
_Context,
Reason,
ReleaseBlocking,
["14.0.65"],
AffectedUpgradePaths,
Builds,
AffectedScenarios
).
%failure(
%ID,
%Failure,
%_Context,
%Reason,
%ReleaseBlocking,
%AffectedReleases,
%AffectedUpgradePaths,
%Builds,
%AffectedScenarios
%).

%failure(
%ID,
%Failure,
%_Context,
%Reason,
%ReleaseBlocking,
%AffectedReleases,
%AffectedUpgradePaths,
%Builds,
%AffectedScenarios
%).

% ------------------------------------------------------------------------------
% to enter a failure, copy/paste this, uncomment, and fill in the blanks
% ------------------------------------------------------------------------------
%failure(
%ID,
%Failure,
%_Context,
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

% build and test failures doc
% https://progresssoftware.sharepoint.com/:x:/r/sites/ChefCoreC/_layouts/15/Doc.aspx?sourcedoc=%7B5CF3571B-E0EE-4966-835B-3776954431DF%7D&file=Build%20%20and%20test%20failures.xlsx&action=default&mobileredirect=true

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

