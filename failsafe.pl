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
"we don't have the amazon builds for 12.17 and 13.2 (well, now it's occurring on non-amazon).",
no,
["14.6.32"],
[
"12.17.15 -> 14.6.32",
"12.17.15 -> 14.13.7+20220211145353",
"13.2 -> 14.6.32"
],
[
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/44",
"https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/45",
"https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069"
],
[
"external-postgres-ipv6-amazon-2",
"external-postgres-ipv4-ubuntu-18.04",
"external-postgres-ipv4-amazon-2",
"fips-ipv4-rhel-7",
"mtls-ipv4-ubuntu-18.04",
"standalone-fresh-install-ipv4-ubuntu-16.04",
"standalone-fresh-install-ipv4-ubuntu-18.04",
"standalone-upgrade-ipv4-amazon-2",
"standalone-upgrade-ipv4-ubuntu-20.04-from-12.17.15",
"standalone-upgrade-ipv6-ubuntu-18.04",
"standalone-upgrade-ipv4-rhel-7",
"standalone-upgrade-ipv6-amazon-2",
"tiered-fresh-install-ipv4-ubuntu-18.04",
"tiered-fresh-install-ipv6-ubuntu-18.04",
"tiered-upgrade-ipv6-amazon-2",
"tiered-upgrade-ipv4-amazon-2",
"tiered-upgrade-ipv4-rhel-7",
"tiered-upgrade-ipv6-rhel-7",
"tiered-upgrade-ipv4-ubuntu-18.04"
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
[
"azure-postgresql-ipv4-rhel-7",
"azure-postgresql-ipv4-ubuntu-20.04"
]
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
"null_resource.chef_server_config (remote-exec):     ================================================================================\nnull_resource.chef_server_config (remote-exec):     Error executing action `create` on resource \'elasticsearch_index[chef]\'\nnull_resource.chef_server_config (remote-exec):     ================================================================================\n \nnull_resource.chef_server_config (remote-exec):     Net::HTTPServerException\nnull_resource.chef_server_config (remote-exec):     ------------------------\nnull_resource.chef_server_config (remote-exec):     406 \"Not Acceptable\"\n \nnull_resource.chef_server_config (remote-exec):     Cookbook Trace:\nnull_resource.chef_server_config (remote-exec):     ---------------\nnull_resource.chef_server_config (remote-exec):     /var/opt/opscode/local-mode-cache/cookbooks/private-chef/libraries/elasticsearch_index_provider.rb:11:in `block (2 levels) in <class:ElasticSearchIndex>\'\nnull_resource.chef_server_config (remote-exec):     /var/opt/opscode/local-mode-cache/cookbooks/private-chef/libraries/elasticsearch_index_provider.rb:10:in `block in <class:ElasticSearchIndex>\'\n \nnull_resource.chef_server_config (remote-exec):     Resource Declaration:\nnull_resource.chef_server_config (remote-exec):     ---------------------\nnull_resource.chef_server_config (remote-exec):     # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/opscode-solr4-external.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):      23:   elasticsearch_index \"chef\" do\nnull_resource.chef_server_config (remote-exec):      24:     server_url node[\'private_chef\'][\'opscode-solr4\'][\'external_url\']\nnull_resource.chef_server_config (remote-exec):      25:     index_definition({\"settings\" => {\nnull_resource.chef_server_config (remote-exec):      26:                         \"analysis\" => {\nnull_resource.chef_server_config (remote-exec):      27:                           \"analyzer\" => {\nnull_resource.chef_server_config (remote-exec):      28:                             \"default\" => {\nnull_resource.chef_server_config (remote-exec):      29:                               \"type\" => \"whitespace\"\nnull_resource.chef_server_config (remote-exec):      30:                             }\nnull_resource.chef_server_config (remote-exec):      31:                           }\nnull_resource.chef_server_config (remote-exec):      32:                         },\nnull_resource.chef_server_config (remote-exec):      33:                         \"number_of_shards\" => node[\'private_chef\'][\'opscode-solr4\'][\'elasticsearch_shard_count\'],\nnull_resource.chef_server_config (remote-exec):      34:                         \"number_of_replicas\" => node[\'private_chef\'][\'opscode-solr4\'][\'elasticsearch_replica_count\']\nnull_resource.chef_server_config (remote-exec):      35:                       },\nnull_resource.chef_server_config (remote-exec):      36:                       \"mappings\" => {\nnull_resource.chef_server_config (remote-exec):      37:                         \"object\" => {\nnull_resource.chef_server_config (remote-exec):      38:                           \"_source\" => { \"enabled\" => false },\nnull_resource.chef_server_config (remote-exec):      39:                           \"_all\" => { \"enabled\" => false },\nnull_resource.chef_server_config (remote-exec):      40:                           \"properties\" => {\nnull_resource.chef_server_config (remote-exec):      41:                             \"X_CHEF_database_CHEF_X\" => { \"type\" => \"string\",\nnull_resource.chef_server_config (remote-exec):      42:                                                           \"index\" => \"not_analyzed\",\nnull_resource.chef_server_config (remote-exec):      43:                                                           \"norms\" => {\nnull_resource.chef_server_config (remote-exec):      44:                                                             \"enabled\" => false\nnull_resource.chef_server_config (remote-exec):      45:                                                           }\nnull_resource.chef_server_config (remote-exec):      46:                                                         },\nnull_resource.chef_server_config (remote-exec):      47:                             \"X_CHEF_type_CHEF_X\" => { \"type\" => \"string\",\nnull_resource.chef_server_config (remote-exec):      48:                                                       \"index\" => \"not_analyzed\",\nnull_resource.chef_server_config (remote-exec):      49:                                                       \"norms\" => {\nnull_resource.chef_server_config (remote-exec):      50:                                                         \"enabled\" => false\nnull_resource.chef_server_config (remote-exec):      51:                                                       }\nnull_resource.chef_server_config (remote-exec):      52:                                                     },\nnull_resource.chef_server_config (remote-exec):      53:                             \"X_CHEF_id_CHEF_X\" => { \"type\" => \"string\",\nnull_resource.chef_server_config (remote-exec):      54:                                                     \"index\" => \"not_analyzed\",\nnull_resource.chef_server_config (remote-exec):      55:                                                     \"norms\" => {\nnull_resource.chef_server_config (remote-exec):      56:                                                       \"enabled\" => false\nnull_resource.chef_server_config (remote-exec):      57:                                                     }\nnull_resource.chef_server_config (remote-exec):      58:                                                   },\nnull_resource.chef_server_config (remote-exec):      59:                             \"data_bag\" => { \"type\" => \"string\",\nnull_resource.chef_server_config (remote-exec):      60:                                             \"index\" => \"not_analyzed\",\nnull_resource.chef_server_config (remote-exec):      61:                                             \"norms\" => {\nnull_resource.chef_server_config (remote-exec):      62:                                               \"enabled\" => false\nnull_resource.chef_server_config (remote-exec):      63:                                             }\nnull_resource.chef_server_config (remote-exec):      64:                                           },\nnull_resource.chef_server_config (remote-exec):      65:                             \"content\" => { \"type\" => \"string\", \"index\" => \"analyzed\"}\nnull_resource.chef_server_config (remote-exec):      66:                           }\nnull_resource.chef_server_config (remote-exec):      67:                         }\nnull_resource.chef_server_config (remote-exec):      68:                       }\nnull_resource.chef_server_config (remote-exec):      69:                      })\nnull_resource.chef_server_config (remote-exec):      70:   end\nnull_resource.chef_server_config (remote-exec):      71: end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Compiled Resource:\nnull_resource.chef_server_config (remote-exec):     ------------------\nnull_resource.chef_server_config (remote-exec):     # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/opscode-solr4-external.rb:23:in `from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     elasticsearch_index(\"chef\") do\nnull_resource.chef_server_config (remote-exec):       action [:create]\nnull_resource.chef_server_config (remote-exec):       retries 0\nnull_resource.chef_server_config (remote-exec):       retry_delay 2\nnull_resource.chef_server_config (remote-exec):       default_guard_interpreter :default\nnull_resource.chef_server_config (remote-exec):       declared_type :elasticsearch_index\nnull_resource.chef_server_config (remote-exec):       cookbook_name \"private-chef\"\nnull_resource.chef_server_config (remote-exec):       recipe_name \"opscode-solr4-external\"\nnull_resource.chef_server_config (remote-exec):       server_url \"http://elasticsearch.internal:9200\"\nnull_resource.chef_server_config (remote-exec):       index_definition {\"settings\"=>{\"analysis\"=>{\"analyzer\"=>{\"default\"=>{\"type\"=>\"whitespace\"}}}, \"number_of_shards\"=>5, \"number_of_replicas\"=>1}, \"mappings\"=>{\"object\"=>{\"_source\"=>{\"enabled\"=>false}, \"_all\"=>{\"enabled\"=>false}, \"properties\"=>{\"X_CHEF_database_CHEF_X\"=>{\"type\"=>\"string\", \"index\"=>\"not_analyzed\", \"norms\"=>{\"enabled\"=>false}}, \"X_CHEF_type_CHEF_X\"=>{\"type\"=>\"string\", \"index\"=>\"not_analyzed\", \"norms\"=>{\"enabled\"=>false}}, \"X_CHEF_id_CHEF_X\"=>{\"type\"=>\"string\", \"index\"=>\"not_analyzed\", \"norms\"=>{\"enabled\"=>false}}, \"data_bag\"=>{\"type\"=>\"string\", \"index\"=>\"not_analyzed\", \"norms\"=>{\"enabled\"=>false}}, \"content\"=>{\"type\"=>\"string\", \"index\"=>\"analyzed\"}}}}}\nnull_resource.chef_server_config (remote-exec):       index_name \"chef\"\nnull_resource.chef_server_config (remote-exec):     end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Platform:\nnull_resource.chef_server_config (remote-exec):     ---------\nnull_resource.chef_server_config (remote-exec):     x86_64-linux\n \nnull_resource.chef_server_config (remote-exec): Recipe: private-chef::postgresql\nnull_resource.chef_server_config (remote-exec):   * runit_service[postgresql] action restart\nnull_resource.chef_server_config (remote-exec):  (up to date)\nnull_resource.chef_server_config (remote-exec):   * execute[restart_postgresql_log_service] action run\n \nnull_resource.chef_server_config (remote-exec):     - execute /opt/opscode/embedded/bin/sv restart /opt/opscode/sv/postgresql/log\nnull_resource.chef_server_config (remote-exec): Recipe: private-chef::oc_bifrost\nnull_resource.chef_server_config (remote-exec):   * runit_service[oc_bifrost] action restart\nnull_resource.chef_server_config (remote-exec):  (up to date)\nnull_resource.chef_server_config (remote-exec):   * execute[restart_oc_bifrost_log_service] action run\n \nnull_resource.chef_server_config (remote-exec):     - execute /opt/opscode/embedded/bin/sv restart /opt/opscode/sv/oc_bifrost/log\nnull_resource.chef_server_config (remote-exec): Recipe: private-chef::oc_id\nnull_resource.chef_server_config (remote-exec):   * runit_service[oc_id] action restart\nnull_resource.chef_server_config (remote-exec):  (up to date)\nnull_resource.chef_server_config (remote-exec):   * execute[restart_oc_id_log_service] action run\n \nnull_resource.chef_server_config (remote-exec):     - execute /opt/opscode/embedded/bin/sv restart /opt/opscode/sv/oc_id/log\nnull_resource.chef_server_config (remote-exec): Recipe: private-chef::nginx\nnull_resource.chef_server_config (remote-exec):   * runit_service[nginx] action restart\nnull_resource.chef_server_config: Still creating... [1m50s elapsed]\nnull_resource.chef_server_config: Still creating... [2m0s elapsed]\nnull_resource.chef_server_config: Still creating... [2m10s elapsed]\nnull_resource.chef_server_config: Still creating... [2m20s elapsed]\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     ================================================================================\nnull_resource.chef_server_config (remote-exec):     Error executing action `restart` on resource \'runit_service[nginx]\'\nnull_resource.chef_server_config (remote-exec):     ================================================================================\n \nnull_resource.chef_server_config (remote-exec):     Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):     ------------------------------------\nnull_resource.chef_server_config (remote-exec):     Expected process to exit with [0], but received \'1\'\nnull_resource.chef_server_config (remote-exec):     ---- Begin output of /opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx ----\nnull_resource.chef_server_config (remote-exec):     STDOUT: fail: /opt/opscode/service/nginx: unable to change to service directory: file does not exist\nnull_resource.chef_server_config (remote-exec):     STDERR:\nnull_resource.chef_server_config (remote-exec):     ---- End output of /opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx ----\nnull_resource.chef_server_config (remote-exec):     Ran /opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx returned 1\n \nnull_resource.chef_server_config (remote-exec):     Cookbook Trace:\nnull_resource.chef_server_config (remote-exec):     ---------------\nnull_resource.chef_server_config (remote-exec):     /var/opt/opscode/local-mode-cache/cookbooks/runit/libraries/helpers.rb:174:in `tap\'\nnull_resource.chef_server_config (remote-exec):     /var/opt/opscode/local-mode-cache/cookbooks/runit/libraries/helpers.rb:174:in `safe_sv_shellout!\'\nnull_resource.chef_server_config (remote-exec):     /var/opt/opscode/local-mode-cache/cookbooks/runit/libraries/helpers.rb:202:in `restart_service\'\nnull_resource.chef_server_config (remote-exec):     /var/opt/opscode/local-mode-cache/cookbooks/runit/libraries/provider_runit_service.rb:330:in `block in <class:RunitService>\'\n \nnull_resource.chef_server_config (remote-exec):     Resource Declaration:\nnull_resource.chef_server_config (remote-exec):     ---------------------\nnull_resource.chef_server_config (remote-exec):     # In /var/opt/opscode/local-mode-cache/cookbooks/enterprise/definitions/component_runit_service.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):      37:   runit_service component do\nnull_resource.chef_server_config (remote-exec):      38:     action :enable\nnull_resource.chef_server_config (remote-exec):      39:     retries 20\nnull_resource.chef_server_config (remote-exec):      40:     control params[:control] if params[:control]\nnull_resource.chef_server_config (remote-exec):      41:     options(\nnull_resource.chef_server_config (remote-exec):      42:       log_directory: log_directory\nnull_resource.chef_server_config (remote-exec):      43:     )\nnull_resource.chef_server_config (remote-exec):      44:     params[:runit_attributes].each do |attr_name, attr_value|\nnull_resource.chef_server_config (remote-exec):      45:       send(attr_name.to_sym, attr_value)\nnull_resource.chef_server_config (remote-exec):      46:     end\nnull_resource.chef_server_config (remote-exec):      47:   end\nnull_resource.chef_server_config (remote-exec):      48:\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Compiled Resource:\nnull_resource.chef_server_config (remote-exec):     ------------------\nnull_resource.chef_server_config (remote-exec):     # Declared in /var/opt/opscode/local-mode-cache/cookbooks/enterprise/definitions/component_runit_service.rb:37:in `block in from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     runit_service(\"nginx\") do\nnull_resource.chef_server_config (remote-exec):       params {:package=>\"private_chef\", :log_directory=>nil, :svlogd_size=>nil, :svlogd_num=>nil, :ha=>nil, :control=>nil, :runit_attributes=>{}, :action=>:enable, :name=>\"nginx\"}\nnull_resource.chef_server_config (remote-exec):       provider Chef::Provider::RunitService\nnull_resource.chef_server_config (remote-exec):       action [:enable]\nnull_resource.chef_server_config (remote-exec):       supports {:restart=>true, :reload=>true, :status=>true}\nnull_resource.chef_server_config (remote-exec):       retries 20\nnull_resource.chef_server_config (remote-exec):       retry_delay 2\nnull_resource.chef_server_config (remote-exec):       default_guard_interpreter :default\nnull_resource.chef_server_config (remote-exec):       service_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):       enabled false\nnull_resource.chef_server_config (remote-exec):       running false\nnull_resource.chef_server_config (remote-exec):       masked nil\nnull_resource.chef_server_config (remote-exec):       pattern \"nginx\"\nnull_resource.chef_server_config (remote-exec):       status_command \"/opt/opscode/embedded/bin/sv status /opt/opscode/service\"\nnull_resource.chef_server_config (remote-exec):       sv_bin \"/opt/opscode/embedded/bin/sv\"\nnull_resource.chef_server_config (remote-exec):       sv_dir \"/opt/opscode/sv\"\nnull_resource.chef_server_config (remote-exec):       service_dir \"/opt/opscode/service\"\nnull_resource.chef_server_config (remote-exec):       lsb_init_dir \"/opt/opscode/init\"\nnull_resource.chef_server_config (remote-exec):       options {:log_directory=>\"/var/log/opscode/nginx\"}\nnull_resource.chef_server_config (remote-exec):       log true\nnull_resource.chef_server_config (remote-exec):       restart_on_update true\nnull_resource.chef_server_config (remote-exec):       run_template_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):       log_template_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):       check_script_template_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):       finish_script_template_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):       sv_templates true\nnull_resource.chef_server_config (remote-exec):       log_dir \"/var/log/nginx\"\nnull_resource.chef_server_config (remote-exec):       service_mirror # Declared in\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     service(\"nginx\") do\nnull_resource.chef_server_config (remote-exec):       provider Chef::Provider::Service::Simple\nnull_resource.chef_server_config (remote-exec):       action [:nothing]\nnull_resource.chef_server_config (remote-exec):       supports {:restart=>true, :reload=>true, :status=>true}\nnull_resource.chef_server_config (remote-exec):       retries 0\nnull_resource.chef_server_config (remote-exec):       retry_delay 2\nnull_resource.chef_server_config (remote-exec):       default_guard_interpreter :default\nnull_resource.chef_server_config (remote-exec):       service_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):       enabled nil\nnull_resource.chef_server_config (remote-exec):       running nil\nnull_resource.chef_server_config (remote-exec):       masked nil\nnull_resource.chef_server_config (remote-exec):       pattern \"nginx\"\nnull_resource.chef_server_config (remote-exec):       start_command \"/opt/opscode/embedded/bin/sv start /opt/opscode/service/nginx\"\nnull_resource.chef_server_config (remote-exec):       stop_command \"/opt/opscode/embedded/bin/sv stop /opt/opscode/service/nginx\"\nnull_resource.chef_server_config (remote-exec):       status_command \"/opt/opscode/embedded/bin/sv status /opt/opscode/service/nginx\"\nnull_resource.chef_server_config (remote-exec):       restart_command \"/opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx\"\nnull_resource.chef_server_config (remote-exec):     end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       declared_type :runit_service\nnull_resource.chef_server_config (remote-exec):       cookbook_name \"private-chef\"\nnull_resource.chef_server_config (remote-exec):       recipe_name \"nginx\"\nnull_resource.chef_server_config (remote-exec):     end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Platform:\nnull_resource.chef_server_config (remote-exec):     ---------\nnull_resource.chef_server_config (remote-exec):     x86_64-linux\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec): Running handlers:\nnull_resource.chef_server_config (remote-exec): Running handlers complete\nnull_resource.chef_server_config (remote-exec): Chef Client failed. 144 resources updated in 01 minutes 36 seconds\nnull_resource.chef_server_config (remote-exec): [2022-02-20T16:07:50+00:00] FATAL: Stacktrace dumped to /var/opt/opscode/local-mode-cache/chef-stacktrace.out\nnull_resource.chef_server_config (remote-exec): [2022-02-20T16:07:50+00:00] FATAL: Please provide the contents of the stacktrace.out file if you file a bug report\nnull_resource.chef_server_config (remote-exec): [2022-02-20T16:07:50+00:00] FATAL: Chef::Exceptions::MultipleFailures: Multiple failures occurred:\nnull_resource.chef_server_config (remote-exec): * Net::HTTPServerException occurred in chef run: elasticsearch_index[chef] (private-chef::opscode-solr4-external line 23) had an error: Net::HTTPServerException: 406 \"Not Acceptable\"\nnull_resource.chef_server_config (remote-exec): * Mixlib::ShellOut::ShellCommandFailed occurred in delayed notification: runit_service[nginx] (private-chef::nginx line 37) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received \'1\'\nnull_resource.chef_server_config (remote-exec): ---- Begin output of /opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx ----\nnull_resource.chef_server_config (remote-exec): STDOUT: fail: /opt/opscode/service/nginx: unable to change to service directory: file does not exist\nnull_resource.chef_server_config (remote-exec): STDERR:\nnull_resource.chef_server_config (remote-exec): ---- End output of /opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx ----\nnull_resource.chef_server_config (remote-exec): Ran /opt/opscode/embedded/bin/sv restart /opt/opscode/service/nginx returned 1\n \n╷\n│ Error: remote-exec provisioner error\n│\n│   with null_resource.chef_server_config,\n│   on main.tf line 106, in resource \"null_resource\" \"chef_server_config\":\n│  106:   provisioner \"remote-exec\" {\n│\n│ error executing \"/tmp/terraform_381287229.sh\": Process exited with status 1\n╵\n \n  END SCENARIO\n \n      Workspace: 1069-external-elasticsearch-ipv4-ubuntu-18.04\n      Scenario: external-elasticsearch\n        Status: FAIL",
_Context,
"needs investigation",
unspecified,
["14.5.29"],
["12.17.15 -> 14.0.58", "12.17.15 -> 14.13.7+20220211145353"],
[
"https://buildkite.com/chef/chef-umbrella-master-chef-server/builds/520",
"https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069#0b819075-f5fc-419c-a5df-7aef44b627a8/233"
],
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
"resource.chef_server_config (remote-exec):     * execute[initialize_cluster_/var/opt/opscode/postgresql/9.6/data] action run\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       ================================================================================\nnull_resource.chef_server_config (remote-exec):       Error executing action `run` on resource \'execute[initialize_cluster_/var/opt/opscode/postgresql/9.6/data]\'\nnull_resource.chef_server_config (remote-exec):       ================================================================================\n \nnull_resource.chef_server_config (remote-exec):       Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):       ------------------------------------\nnull_resource.chef_server_config (remote-exec):       Expected process to exit with [0], but received \'1\'\nnull_resource.chef_server_config (remote-exec):       ---- Begin output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):       STDOUT: The files belonging to this database system will be owned by user \"\"opscode-pgsql\"\".\nnull_resource.chef_server_config (remote-exec):       This user must also own the server process.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       The database cluster will be initialized with locale \"\"C\"\".\nnull_resource.chef_server_config (remote-exec):       The default database encoding has accordingly been set to \"\"SQL_ASCII\"\".\nnull_resource.chef_server_config (remote-exec):       The default text search configuration will be set to \"\"english\"\".\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       Data page checksums are disabled.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       fixing permissions on existring directory /var/opt/opscode/postgresql/9.6/data ... ok\nnull_resource.chef_server_config (remote-exec):       creating subdirectories ... ok\nnull_resource.chef_server_config (remote-exec):       selecting default max_connections ... 100\nnull_resource.chef_server_config (remote-exec):       selecting default shared_buffers ... 128MB\nnull_resource.chef_server_config (remote-exec):       selecting default timezone ... UTC\nnull_resource.chef_server_config (remote-exec):       selecting dynamic shared memory implementation ... posix\nnull_resource.chef_server_config (remote-exec):       creating configuration files ... ok\nnull_resource.chef_server_config (remote-exec):       running bootstrap script ... ok\nnull_resource.chef_server_config (remote-exec):       performing post-bootstrap initialization ...\nnull_resource.chef_server_config (remote-exec):       STDERR: FATAL:  lock file \"\"postmaster.pid\"\" already exists\nnull_resource.chef_server_config (remote-exec):       HINT:  Is another postmaster (PID 25453) running in data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"?\nnull_resource.chef_server_config (remote-exec):       child process exited with exit code 1\nnull_resource.chef_server_config (remote-exec):       initdb: removing contents of data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"\nnull_resource.chef_server_config (remote-exec):       ---- End output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):       Ran initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C returned 1\n \nnull_resource.chef_server_config (remote-exec):       Resource Declaration:\nnull_resource.chef_server_config (remote-exec):       ---------------------\nnull_resource.chef_server_config (remote-exec):       # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_cluster.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):        41:   execute \"\"initialize_cluster_#{new_resource.data_dir}\"\" do\nnull_resource.chef_server_config (remote-exec):        42:     command \"\"initdb --pgdata #{new_resource.data_dir} --locale C\"\"\nnull_resource.chef_server_config (remote-exec):        43:     user node[\'private_chef\'][\'postgresql\'][\'username\']\nnull_resource.chef_server_config (remote-exec):        44:     not_if { ::File.exist?(::File.join(new_resource.data_dir, \'PG_VERSION\')) }\nnull_resource.chef_server_config (remote-exec):        45:   end\nnull_resource.chef_server_config (remote-exec):        46:\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       Compiled Resource:\nnull_resource.chef_server_config (remote-exec):       ------------------\nnull_resource.chef_server_config (remote-exec):       # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_cluster.rb:41:in `block in class_from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       execute(\"\"initialize_cluster_/var/opt/opscode/postgresql/9.6/data\"\") do\nnull_resource.chef_server_config (remote-exec):         action [:run]\nnull_resource.chef_server_config (remote-exec):         default_guard_interpreter :execute\nnull_resource.chef_server_config (remote-exec):         command \"\"initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C\"\"\nnull_resource.chef_server_config (remote-exec):         backup 5\nnull_resource.chef_server_config (remote-exec):         declared_type :execute\nnull_resource.chef_server_config (remote-exec):         cookbook_name \"\"private-chef\"\"\nnull_resource.chef_server_config (remote-exec):         domain nil\nnull_resource.chef_server_config (remote-exec):         user \"\"opscode-pgsql\"\"\nnull_resource.chef_server_config (remote-exec):         not_if { #code block }\nnull_resource.chef_server_config (remote-exec):       end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       System Info:\nnull_resource.chef_server_config (remote-exec):       ------------\nnull_resource.chef_server_config (remote-exec):       chef_version=15.12.22\nnull_resource.chef_server_config (remote-exec):       platform=redhat\nnull_resource.chef_server_config (remote-exec):       platform_version=8.2\nnull_resource.chef_server_config (remote-exec):       ruby=ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]\nnull_resource.chef_server_config (remote-exec):       program_name=/opt/opscode/embedded/bin/chef-client\nnull_resource.chef_server_config (remote-exec):       executable=/opt/opscode/embedded/bin/chef-client\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     ================================================================================\nnull_resource.chef_server_config (remote-exec):     Error executing action `init` on resource \'private_chef_pg_cluster[/var/opt/opscode/postgresql/9.6/data]\'\nnull_resource.chef_server_config (remote-exec):     ================================================================================\n \nnull_resource.chef_server_config (remote-exec):     Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):     ------------------------------------\nnull_resource.chef_server_config (remote-exec):     execute[initialize_cluster_/var/opt/opscode/postgresql/9.6/data] (/var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_cluster.rb line 41) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received \'1\'\nnull_resource.chef_server_config (remote-exec):     ---- Begin output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):     STDOUT: The files belonging to this database system will be owned by user \"\"opscode-pgsql\"\".\nnull_resource.chef_server_config (remote-exec):     This user must also own the server process.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     The database cluster will be initialized with locale \"\"C\"\".\nnull_resource.chef_server_config (remote-exec):     The default database encoding has accordingly been set to \"\"SQL_ASCII\"\".\nnull_resource.chef_server_config (remote-exec):     The default text search configuration will be set to \"\"english\"\".\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Data page checksums are disabled.\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     fixing permissions on existring directory /var/opt/opscode/postgresql/9.6/data ... ok\nnull_resource.chef_server_config (remote-exec):     creating subdirectories ... ok\nnull_resource.chef_server_config (remote-exec):     selecting default max_connections ... 100\nnull_resource.chef_server_config (remote-exec):     selecting default shared_buffers ... 128MB\nnull_resource.chef_server_config (remote-exec):     selecting default timezone ... UTC\nnull_resource.chef_server_config (remote-exec):     selecting dynamic shared memory implementation ... posix\nnull_resource.chef_server_config (remote-exec):     creating configuration files ... ok\nnull_resource.chef_server_config (remote-exec):     running bootstrap script ... ok\nnull_resource.chef_server_config (remote-exec):     performing post-bootstrap initialization ...\nnull_resource.chef_server_config (remote-exec):     STDERR: FATAL:  lock file \"\"postmaster.pid\"\" already exists\nnull_resource.chef_server_config (remote-exec):     HINT:  Is another postmaster (PID 25453) running in data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"?\nnull_resource.chef_server_config (remote-exec):     child process exited with exit code 1\nnull_resource.chef_server_config (remote-exec):     initdb: removing contents of data directory \"\"/var/opt/opscode/postgresql/9.6/data\"\"\nnull_resource.chef_server_config (remote-exec):     ---- End output of initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C ----\nnull_resource.chef_server_config (remote-exec):     Ran initdb --pgdata /var/opt/opscode/postgresql/9.6/data --locale C returned 1\n \nnull_resource.chef_server_config (remote-exec):     Resource Declaration:\nnull_resource.chef_server_config (remote-exec):     ---------------------\nnull_resource.chef_server_config (remote-exec):     # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/postgresql.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):      74: private_chef_pg_cluster postgresql_data_dir do\nnull_resource.chef_server_config (remote-exec):      75:   notifies :restart, \'component_runit_service[postgresql]\', :delayed if is_data_master?\nnull_resource.chef_server_config (remote-exec):      76: end\nnull_resource.chef_server_config (remote-exec):      77:\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Compiled Resource:\nnull_resource.chef_server_config (remote-exec):     ------------------\nnull_resource.chef_server_config (remote-exec):     # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/postgresql.rb:74:in `from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     private_chef_pg_cluster(\"\"/var/opt/opscode/postgresql/9.6/data\"\") do\nnull_resource.chef_server_config (remote-exec):       action [:init]\nnull_resource.chef_server_config (remote-exec):       updated true\nnull_resource.chef_server_config (remote-exec):       updated_by_last_action true\nnull_resource.chef_server_config (remote-exec):       default_guard_interpreter :default\nnull_resource.chef_server_config (remote-exec):       declared_type :private_chef_pg_cluster\nnull_resource.chef_server_config (remote-exec):       cookbook_name \"\"private-chef\"\"\nnull_resource.chef_server_config (remote-exec):       recipe_name \"\"postgresql\"\"\nnull_resource.chef_server_config (remote-exec):     end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     System Info:\nnull_resource.chef_server_config (remote-exec):     ------------\nnull_resource.chef_server_config (remote-exec):     chef_version=15.12.22\nnull_resource.chef_server_config (remote-exec):     platform=redhat\nnull_resource.chef_server_config (remote-exec):     platform_version=8.2\nnull_resource.chef_server_config (remote-exec):     ruby=ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]",
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
["13.2.0 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server-full/builds/110#3a108de8-433f-455c-9316-151474e15ca3"],
["external-openldap-ipv4-ubuntu-16.04", "standalone-fresh-install-ipv6-amazon-2"]
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
"Same error as azure-rhel6 on first try (meaning... ID #19 ?). \nOn the next retry Fails with :\nError: Error building account: Error getting authenticated object ID: Error listring Service Principals: autorest.DetailedError{Original:adal.tokenRefreshError{message:\"\"adal: Refresh request failed. Status Code = \'400\'. Response body: {\\\"\"error\\\"\":\\\"\"unauthorized_client\\\"\",\\\"\"error_description\\\"\":\\\"\"AADSTS700016: Application with identifier \'f8f1d452-9162-473d-9146-187f1841504b\' was not found in the directory \'a2b2d6bc-afe1-4696-9c37-f97a7ac416d7\'. This can happen if the application has not been installed by the administrator of the tenant or consented to by any user in the tenant. You may have sent your authentication request to the wrong tenant.\\\\r\\\\nTrace ID: 79e0042b-396a-48bb-a3da-004524407500\\\\r\\\\nCorrelation ID: 23d93a5f-46e5-411b-a8e1-17f23b84e4e2\\\\r\\\\nTimestamp: 2020-10-23 19:21:13Z\\\"\",\\\"\"error_codes\\\"\":[700016],\\\"\"timestamp\\\"\":\\\"\"2020-10-23 19:21:13Z\\\"\",\\\"\"trace_id\\\"\":\\\"\"79e0042b-396a-48bb-a3da-004524407500\\\"\",\\\"\"correlation_id\\\"\":\\\"\"23d93a5f-46e5-411b-a8e1-17f23b84e4e2\\\"\",\\\"\"error_uri\\\"\":\\\"\"https://login.microsoftonline.com/error?code=700016\\\"\"}\"\", resp:(*http.Response)(0xc000fde090)}, PackageType:\"\"azure.BearerAuthorizer\"\", Method:\"\"WithAuthorization\"\", StatusCode:400, Message:\"\"Failed to refresh the Token for request to https://graph.windows.net/a2b2d6bc-afe1-4696-9c37-f97a7ac416d7/servicePrincipals?%24filter=appId+eq+%27f8f1d452-9162-473d-9146-187f1841504b%27&api-version=1.6\"\", ServiceError:[]uint8(nil), Response:(*http.Response)(0xc000fde090)}\n \n  on versions-arm.tf line 37, in provider \"\"azurerm\"\":\n  37: provider \"\"azurerm\"\" {\n\non the third and fourth retry fails with:\n    Backend URL: https://packages.chef.io/files/current/chef-backend/2.2.1/el/7/chef-backend-2.2.1-1.el7.x86_64.rpm\n \nmodule.chef_server.data.http.workstation-ipv4: Refreshing state... [id=2020-10-23 18:10:37.73555061 +0000 UTC]\nmodule.chef_server.random_password.default: Refreshing state... [id=none]\n \nError: Error building AzureRM Client: obtain subscription(80b824de-ec53-4116-9868-3deeab10b0cd) from Azure CLI: Error parsing json result from the Azure CLI: Error waiting for the Azure CLI: exit status 1\n \n  on versions-arm.tf line 37, in provider \"\"azurerm\"\":\n  37: provider \"\"azurerm\"\" {",
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
22,
"module.chef_load.null_resource.chef_load (remote-exec): INFO[0013] API Request                                   method=POST node_name=chef-node-97 request_time_seconds=0 status_code=404 url=\"https://10.0.5.102/organizations/4thcoffee/data-collector\"\nmodule.chef_load.null_resource.chef_load (remote-exec): INFO[0013] API Request                                   method=POST node_name=\"node::update\" request_time_seconds=0 status_code=404 url=\"https://10.0.5.102/organizations/4thcoffee/data-collector\"\nmodule.chef_load.null_resource.chef_load (remote-exec): INFO[0013] Printing profile of API requests\nmodule.chef_load.null_resource.chef_load (remote-exec): fatal error: concurrent map iteration and map write\n \nmodule.chef_load.null_resource.chef_load (remote-exec): goroutine 1 [running]:\nmodule.chef_load.null_resource.chef_load (remote-exec): runtime.throw(0x933a8d, 0x26)\nmodule.chef_load.null_resource.chef_load (remote-exec): \t/hab/pkgs/core/go/1.12/20190226224017/src/runtime/panic.go:617 +0x72 fp=0xc0001c7830 sp=0xc0001c7800 pc=0x42d272\nmodule.chef_load.null_resource.chef_load (remote-exec): runtime.mapiternext(0xc0001c7b08)\nmodule.chef_load.null_resource.chef_load (remote-exec): \t/hab/pkgs/core/go/1.12/20190226224017/src/runtime/map.go:860 +0x520 fp=0xc0001c78b8 sp=0xc0001c7830 pc=0x410220\n\n<snip>\n\n╷\n│ Error: remote-exec provisioner error\n│\n│   with module.chef_load.null_resource.chef_load,\n│   on ../../../../modules/chef_load/main.tf line 24, in resource \"null_resource\" \"chef_load\":\n│   24:   provisioner \"remote-exec\" {\n│\n│ error executing \"/tmp/terraform_1269976694.sh\": Process exited with status 2\n╵\n \n  END SCENARIO\n \n      Workspace: 111-external-postgresql-ipv4-amazon-2\n      Scenario: external-postgresql\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["14.12.21 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server-full/builds/111#3fba82c6-2550-4005-a570-7e88b51eaa21"],
["external-postgresql-ipv4-amazon-2"]
).

failure(
23,
"null_resource.backend2_config (remote-exec): Joining node to cluster...\nnull_resource.backend2_config: Still creating... [40s elapsed]\nnull_resource.backend2_config: Still creating... [50s elapsed]\nnull_resource.backend2_config: Still creating... [1m0s elapsed]\nnull_resource.backend2_config: Still creating... [1m10s elapsed]\nnull_resource.backend2_config: Still creating... [1m20s elapsed]\nnull_resource.backend2_config: Still creating... [1m30s elapsed]\nnull_resource.backend2_config: Still creating... [1m40s elapsed]\nnull_resource.backend2_config (remote-exec): FAILED\n \nnull_resource.backend2_config (remote-exec):       An error occurred in configuring the node\n \nnull_resource.backend2_config (remote-exec):       See \'/tmp/chef-backend-join-cluster.log\' for additional information.\nnull_resource.backend2_config (remote-exec):       The stack trace can be found in \"/opt/chef-backend/embedded/cookbooks/cache/chef-stacktrace.out\"\n \nnull_resource.backend2_config (remote-exec): An error occurred during this operation:\n \nnull_resource.backend2_config (remote-exec):       An error occurred in configuring the node\n \nnull_resource.backend2_config (remote-exec):       See \'/tmp/chef-backend-join-cluster.log\' for additional information.\nnull_resource.backend2_config (remote-exec):       The stack trace can be found in \"/opt/chef-backend/embedded/cookbooks/cache/chef-stacktrace.out\"\n╷\n│ Error: remote-exec provisioner error\n│\n│   with null_resource.backend2_config,\n│   on main.tf line 97, in resource \"null_resource\" \"backend2_config\":\n│   97:   provisioner \"remote-exec\" {\n│\n│ error executing \"/tmp/terraform_904457013.sh\": Process exited with status 1\n╵\n \n  END SCENARIO\n \n      Workspace: 1069-chef-backend-ipv4-rhel-8\n      Scenario: chef-backend\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["12.17.15 -> 14.12.21", "12.17.15 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1023", "https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069"],
["chef-backend-ipv4-rhel-8", "chef-backend-ipv4-ubuntu-18.04"]
).

failure(
24,
"BEGIN SCENARIO\n \n      Workspace: 1069-external-openldap-ipv4-rhel-8\n      Scenario: external-openldap\n      Platform: rhel-8\n          IPv6: false\n        Install: 12.17.15\n    Install URL: https://packages.chef.io/files/stable/chef-server/12.17.15/el/7/chef-server-core-12.17.15-1.el7.x86_64.rpm\n        Upgrade: 14.13.7+20220211145353\n    Upgrade URL:\n        Backend: 3.0.0\n    Backend URL: https://packages.chef.io/files/stable/chef-backend/3.0.0/el/8/chef-backend-3.0.0-1.el8.x86_64.rpm\n         Manage: 3.3.14\n     Manage URL: https://packages.chef.io/files/current/chef-manage/3.3.14/el/8/chef-manage-3.3.14-1.el7.x86_64.rpm\n \n╷\n│ Error: Error in function call\n│\n│   on main.tf line 104, in locals:\n│  104:   major_minor_patch = split(\".\", regex(\"\\\\d+\\\\.\\\\d+\\\\.\\\\d+\", var.upgrade_version_url))\n│     ├────────────────\n│     │ var.upgrade_version_url is \"\"\n│\n│ Call to function \"regex\" failed: pattern did not match any part of the given string.\n╵\n \n  END SCENARIO\n \n      Workspace: 1069-external-openldap-ipv4-rhel-8\n      Scenario: external-openldap\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["12.17.15 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069"],
["external-openldap-ipv4-rhel-8"]
).

failure(
25,
"null_resource.configure_supermarket (remote-exec): END SUPERMARKET CONFIGURATION\n \nnull_resource.configure_supermarket: Creation complete after 3m7s [id=2974913351897346004]\n╷\n│ Error: remote-exec provisioner error\n│\n│   with null_resource.chef_server_upgrade,\n│   on main.tf line 131, in resource \"null_resource\" \"chef_server_upgrade\":\n│  131:   provisioner \"remote-exec\" {\n│\n│ error executing \"/tmp/terraform_1304683454.sh\": Process exited with status 2\n╵\n \n  END SCENARIO\n \n      Workspace: 1069-supermarket-upgrade-ipv4-ubuntu-20.04\n      Scenario: supermarket-upgrade\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["12.17.15 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069#d47843b3-8c7e-4205-9c1c-c7304b83b925"],
["supermarket-upgrade-ipv4-ubuntu-20.04"]
).

failure(
26,
"null_resource.chef_server_config (remote-exec):     - Create database opscode_chef\nnull_resource.chef_server_config (remote-exec):   * private_chef_pg_sqitch[/opt/opscode/embedded/service/opscode-erchef/schema/baseline] action deploy\nnull_resource.chef_server_config (remote-exec):     - Deploying schema from /opt/opscode/embedded/service/opscode-erchef/schema/baseline\nnull_resource.chef_server_config (remote-exec):     * execute[sqitch_deploy_/opt/opscode/embedded/service/opscode-erchef/schema/baseline] action run\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       ================================================================================\nnull_resource.chef_server_config (remote-exec):       Error executing action `run` on resource \'execute[sqitch_deploy_/opt/opscode/embedded/service/opscode-erchef/schema/baseline]\'\nnull_resource.chef_server_config (remote-exec):       ================================================================================\n \nnull_resource.chef_server_config (remote-exec):       Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):       ------------------------------------\nnull_resource.chef_server_config (remote-exec):       Expected process to exit with [0, 1], but received \'127\'\nnull_resource.chef_server_config (remote-exec):       ---- Begin output of sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify ----\nnull_resource.chef_server_config (remote-exec):       STDOUT:\nnull_resource.chef_server_config (remote-exec):       STDERR: /opt/opscode/embedded/bin/perl: error while loading shared libraries: libnsl.so.1: cannot open shared object file: No such file or directory\nnull_resource.chef_server_config (remote-exec):       ---- End output of sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify ----\nnull_resource.chef_server_config (remote-exec):       Ran sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify returned 127\n \nnull_resource.chef_server_config (remote-exec):       Resource Declaration:\nnull_resource.chef_server_config (remote-exec):       ---------------------\nnull_resource.chef_server_config (remote-exec):       # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_sqitch.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):        11:     execute \"sqitch_deploy_#{new_resource.name}\" do\nnull_resource.chef_server_config (remote-exec):        12:       command <<-EOM.gsub(/\\s+/,\" \").strip!\nnull_resource.chef_server_config (remote-exec):        13:         sqitch --engine pg\nnull_resource.chef_server_config (remote-exec):        14:                --db-name #{new_resource.database}\nnull_resource.chef_server_config (remote-exec):        15:                --db-host #{new_resource.hostname}\nnull_resource.chef_server_config (remote-exec):        16:                --db-port #{new_resource.port}\nnull_resource.chef_server_config (remote-exec):        17:                --db-user #{new_resource.username}\nnull_resource.chef_server_config (remote-exec):        18:                --top-dir #{new_resource.name}\nnull_resource.chef_server_config (remote-exec):        19:                deploy #{target} --verify\nnull_resource.chef_server_config (remote-exec):        20:       EOM\nnull_resource.chef_server_config (remote-exec):        21:       environment \"PERL5LIB\" => \"\", # force us to use omnibus perl\nnull_resource.chef_server_config (remote-exec):        22:                   \"PGPASSWORD\" => new_resource.password\nnull_resource.chef_server_config (remote-exec):        23:\nnull_resource.chef_server_config (remote-exec):        24:       # Sqitch Return Codes\nnull_resource.chef_server_config (remote-exec):        25:       # 0 - when changes are applied\nnull_resource.chef_server_config (remote-exec):        26:       # 1 - when everything is ok but no changes were made\nnull_resource.chef_server_config (remote-exec):        27:       # 2(+?) - when an error occurs.\nnull_resource.chef_server_config (remote-exec):        28:       returns [0,1]\nnull_resource.chef_server_config (remote-exec):        29:     end\nnull_resource.chef_server_config (remote-exec):        30:   end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       Compiled Resource:\nnull_resource.chef_server_config (remote-exec):       ------------------\nnull_resource.chef_server_config (remote-exec):       # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_sqitch.rb:11:in `block (2 levels) in class_from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       execute(\"sqitch_deploy_/opt/opscode/embedded/service/opscode-erchef/schema/baseline\") do\nnull_resource.chef_server_config (remote-exec):         action [:run]\nnull_resource.chef_server_config (remote-exec):         retries 0\nnull_resource.chef_server_config (remote-exec):         retry_delay 2\nnull_resource.chef_server_config (remote-exec):         default_guard_interpreter :execute\nnull_resource.chef_server_config (remote-exec):         command \"sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify\"\nnull_resource.chef_server_config (remote-exec):         backup 5\nnull_resource.chef_server_config (remote-exec):         environment {\"PERL5LIB\"=>\"\", \"PGPASSWORD\"=>\"i1uvd3v0ps\"}\nnull_resource.chef_server_config (remote-exec):         returns [0, 1]\nnull_resource.chef_server_config (remote-exec):         user nil\nnull_resource.chef_server_config (remote-exec):         declared_type :execute\nnull_resource.chef_server_config (remote-exec):         cookbook_name \"private-chef\"\nnull_resource.chef_server_config (remote-exec):       end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):       Platform:\nnull_resource.chef_server_config (remote-exec):       ---------\nnull_resource.chef_server_config (remote-exec):       x86_64-linux\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     ================================================================================\nnull_resource.chef_server_config (remote-exec):     Error executing action `deploy` on resource \'private_chef_pg_sqitch[/opt/opscode/embedded/service/opscode-erchef/schema/baseline]\'\nnull_resource.chef_server_config (remote-exec):     ================================================================================\n \nnull_resource.chef_server_config (remote-exec):     Mixlib::ShellOut::ShellCommandFailed\nnull_resource.chef_server_config (remote-exec):     ------------------------------------\nnull_resource.chef_server_config (remote-exec):     execute[sqitch_deploy_/opt/opscode/embedded/service/opscode-erchef/schema/baseline] (/var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_sqitch.rb line 11) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0, 1], but received \'127\'\nnull_resource.chef_server_config (remote-exec):     ---- Begin output of sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify ----\nnull_resource.chef_server_config (remote-exec):     STDOUT:\nnull_resource.chef_server_config (remote-exec):     STDERR: /opt/opscode/embedded/bin/perl: error while loading shared libraries: libnsl.so.1: cannot open shared object file: No such file or directory\nnull_resource.chef_server_config (remote-exec):     ---- End output of sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify ----\nnull_resource.chef_server_config (remote-exec):     Ran sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify returned 127\n \nnull_resource.chef_server_config (remote-exec):     Resource Declaration:\nnull_resource.chef_server_config (remote-exec):     ---------------------\nnull_resource.chef_server_config (remote-exec):     # In /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/erchef_database.rb\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):      33: private_chef_pg_sqitch \"/opt/opscode/embedded/service/opscode-erchef/schema/baseline\" do\nnull_resource.chef_server_config (remote-exec):      34:   hostname  postgres[\'vip\']\nnull_resource.chef_server_config (remote-exec):      35:   port      postgres[\'port\']\nnull_resource.chef_server_config (remote-exec):      36:   username  postgres[\'db_superuser\']\nnull_resource.chef_server_config (remote-exec):      37:   password  PrivateChef.credentials.get(\'postgresql\', \'db_superuser_password\')\nnull_resource.chef_server_config (remote-exec):      38:   database  \"opscode_chef\"\nnull_resource.chef_server_config (remote-exec):      39:   action :nothing\nnull_resource.chef_server_config (remote-exec):      40:   notifies :deploy, \"private_chef_pg_sqitch[/opt/opscode/embedded/service/opscode-erchef/schema]\", :immediately\nnull_resource.chef_server_config (remote-exec):      41: end\nnull_resource.chef_server_config (remote-exec):      42:\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Compiled Resource:\nnull_resource.chef_server_config (remote-exec):     ------------------\nnull_resource.chef_server_config (remote-exec):     # Declared in /var/opt/opscode/local-mode-cache/cookbooks/private-chef/recipes/erchef_database.rb:33:in `from_file\'\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     private_chef_pg_sqitch(\"/opt/opscode/embedded/service/opscode-erchef/schema/baseline\") do\nnull_resource.chef_server_config (remote-exec):       action [:nothing]\nnull_resource.chef_server_config (remote-exec):       retries 0\nnull_resource.chef_server_config (remote-exec):       retry_delay 2\nnull_resource.chef_server_config (remote-exec):       default_guard_interpreter :default\nnull_resource.chef_server_config (remote-exec):       declared_type :private_chef_pg_sqitch\nnull_resource.chef_server_config (remote-exec):       cookbook_name \"private-chef\"\nnull_resource.chef_server_config (remote-exec):       recipe_name \"erchef_database\"\nnull_resource.chef_server_config (remote-exec):       hostname \"2600:1f13:29e:f200:5c21:1206:62e3:ca39\"\nnull_resource.chef_server_config (remote-exec):       port 5432\nnull_resource.chef_server_config (remote-exec):       username \"bofh\"\nnull_resource.chef_server_config (remote-exec):       password \"i1uvd3v0ps\"\nnull_resource.chef_server_config (remote-exec):       database \"opscode_chef\"\nnull_resource.chef_server_config (remote-exec):     end\nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec):     Platform:\nnull_resource.chef_server_config (remote-exec):     ---------\nnull_resource.chef_server_config (remote-exec):     x86_64-linux\n \nnull_resource.chef_server_config (remote-exec):\nnull_resource.chef_server_config (remote-exec): Running handlers:\nnull_resource.chef_server_config (remote-exec): Running handlers complete\nnull_resource.chef_server_config (remote-exec): Chef Client failed. 21 resources updated in 20 seconds\nnull_resource.chef_server_config (remote-exec): [2022-02-20T16:05:32+00:00] FATAL: Stacktrace dumped to /var/opt/opscode/local-mode-cache/chef-stacktrace.out\nnull_resource.chef_server_config (remote-exec): [2022-02-20T16:05:32+00:00] FATAL: Please provide the contents of the stacktrace.out file if you file a bug report\nnull_resource.chef_server_config (remote-exec): [2022-02-20T16:05:32+00:00] FATAL: Mixlib::ShellOut::ShellCommandFailed: private_chef_pg_sqitch[/opt/opscode/embedded/service/opscode-erchef/schema/baseline] (private-chef::erchef_database line 33) had an error: Mixlib::ShellOut::ShellCommandFailed: execute[sqitch_deploy_/opt/opscode/embedded/service/opscode-erchef/schema/baseline] (/var/opt/opscode/local-mode-cache/cookbooks/private-chef/providers/pg_sqitch.rb line 11) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0, 1], but received \'127\'\nnull_resource.chef_server_config (remote-exec): ---- Begin output of sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify ----\nnull_resource.chef_server_config (remote-exec): STDOUT:\nnull_resource.chef_server_config (remote-exec): STDERR: /opt/opscode/embedded/bin/perl: error while loading shared libraries: libnsl.so.1: cannot open shared object file: No such file or directory\nnull_resource.chef_server_config (remote-exec): ---- End output of sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify ----\nnull_resource.chef_server_config (remote-exec): Ran sqitch --engine pg --db-name opscode_chef --db-host 2600:1f13:29e:f200:5c21:1206:62e3:ca39 --db-port 5432 --db-user bofh --top-dir /opt/opscode/embedded/service/opscode-erchef/schema/baseline deploy --verify returned 127\n╷\n│ Error: remote-exec provisioner error\n│\n│   with null_resource.chef_server_config,\n│   on main.tf line 145, in resource \"null_resource\" \"chef_server_config\":\n│  145:   provisioner \"remote-exec\" {\n│\n│ error executing \"/tmp/terraform_1579673642.sh\": Process exited with status 1\n╵\n \n  END SCENARIO\n \n      Workspace: 1069-external-postgresql-ipv6-rhel-8\n      Scenario: external-postgresql\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["12.17.15 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069#645ee343-2b28-4d1f-a32d-725be805f762"],
["external-postgresql-ipv6-rhel-8"]
).

failure(
27,
"module.chef_server.azurerm_linux_virtual_machine.default[0]: Creation complete after 1m46s [id=/subscriptions/80b824de-ec53-4116-9868-3deeab10b0cd/resourceGroups/1069-releng-e2e-test/providers/Microsoft.Compute/virtualMachines/chefserver-external-postgresql-rhel-8]\nmodule.chef_server.data.azurerm_public_ip.default: Reading...\nmodule.chef_server.data.azurerm_public_ip.default: Read complete after 0s [id=/subscriptions/80b824de-ec53-4116-9868-3deeab10b0cd/resourceGroups/1069-releng-e2e-test/providers/Microsoft.Network/publicIPAddresses/chefserver-external-postgresql-rhel-8]\nmodule.chef_server.local_file.connection_info[0]: Creating...\nmodule.chef_server.local_file.connection_info[0]: Creation complete after 0s [id=8b1cb8b1d0c3c82d59f34e03894b732e0813d348]\n╷\n│ Error: creating PostgreSQL Server \"1069-external-postgresql-rhel-8-releng-e2e-test\" (Resource Group \"1069-releng-e2e-test\"): postgresql.ServersClient#Create: Failure sending request: StatusCode=0 -- Original Error: Code=\"ProvisioningDisabled\" Message=\"This subscription is restricted from provisioning PostgreSQL servers in this region. Please choose a different region or open a support request with service and subscription limits (quotas) issue type.\"\n│\n│   with azurerm_postgresql_server.default,\n│   on main.tf line 28, in resource \"azurerm_postgresql_server\" \"default\":\n│   28: resource \"azurerm_postgresql_server\" \"default\" {\n│\n╵\n \n  END SCENARIO\n \n      Workspace: 1069-external-postgresql-ipv4-rhel-8\n      Scenario: external-postgresql\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["12.17.15 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server/builds/1069#b864b174-e175-4499-9b3b-a6b9f5043768"],
["azure-postgresql-rhel-8"]
).

failure(
7,
"module.chef_load.null_resource.chef_load (remote-exec): ★ Install of chef/chef-load/4.0.0/20190306204146 complete with 3 new packages installed.\nmodule.chef_load.null_resource.chef_load (remote-exec): » Binlinking chef-load from chef/chef-load/4.0.0/20190306204146 into /bin\nmodule.chef_load.null_resource.chef_load (remote-exec): ★ Binlinked chef-load from chef/chef-load/4.0.0/20190306204146 to /bin/chef-load\n \nmodule.chef_load.null_resource.chef_load (remote-exec): BEGIN NODE GENERATION\n \nmodule.chef_load.null_resource.chef_load (remote-exec): ERRO[0000] Could not read private key %s/home/ec2-user/janedoe.pem  error=\"open /home/ec2-user/janedoe.pem: no such file or directory\"\nmodule.chef_load.null_resource.chef_load (remote-exec): ERRO[0000] Could not create API client                   error=\"private key block size invalid\"\nmodule.chef_load.null_resource.chef_load (remote-exec): panic: runtime error: invalid memory address or nil pointer dereference\nmodule.chef_load.null_resource.chef_load (remote-exec): [signal SIGSEGV: segmentation violation code=0x1 addr=0x0 pc=0x71fa8d]\n \nmodule.chef_load.null_resource.chef_load (remote-exec): goroutine 24 [running]:\nmodule.chef_load.null_resource.chef_load (remote-exec): github.com/chef/chef-load/lib.getAPIClient(0xc00009a8a0, 0x7, 0xc0000ae600, 0x1a, 0xc0000aa420, 0x2c, 0x0, 0x0, 0x0, 0x0, ...)\nmodule.chef_load.null_resource.chef_load (remote-exec): \t/hab/cache/src/scaffolding-go-gopath/src/github.com/chef/chef-load/lib/util.go:97 +0x1ad\nmodule.chef_load.null_resource.chef_load (remote-exec): github.com/chef/chef-load/lib.GenerateCCRs(0xc000094c60, 0xc000078300, 0xc00009afd0, 0x0)\nmodule.chef_load.null_resource.chef_load (remote-exec): \t/hab/cache/src/scaffolding-go-gopath/src/github.com/chef/chef-load/lib/generator.go:111 +0x142d\nmodule.chef_load.null_resource.chef_load (remote-exec): github.com/chef/chef-load/lib.GenerateData.func4(0xc00009afd0, 0xc000094c60, 0xc000078300)\nmodule.chef_load.null_resource.chef_load (remote-exec): \t/hab/cache/src/scaffolding-go-gopath/src/github.com/chef/chef-load/lib/generator.go:67 +0x5b\nmodule.chef_load.null_resource.chef_load (remote-exec): created by github.com/chef/chef-load/lib.GenerateData\nmodule.chef_load.null_resource.chef_load (remote-exec): \t/hab/cache/src/scaffolding-go-gopath/src/github.com/chef/chef-load/lib/generator.go:65 +0x170\n╷\n│ Error: remote-exec provisioner error\n│\n│   with module.chef_load.null_resource.chef_load,\n│   on ../../../../modules/chef_load/main.tf line 24, in resource \"null_resource\" \"chef_load\":\n│   24:   provisioner \"remote-exec\" {\n│\n│ error executing \"/tmp/terraform_1671389574.sh\": Process exited with status 2\n╵\n \n  END SCENARIO\n \n      Workspace: 111-external-postgresql-ipv4-amazon-2\n      Scenario: external-postgresql\n        Status: FAIL",
_Context,
unspecified,
unspecified,
[],
["14.12.21 -> 14.13.7+20220211145353"],
["https://buildkite.com/chef/chef-umbrella-main-chef-server-full/builds/111#01d73ed4-36db-4a8a-8e58-7e1e70678f19"],
["external-postgresql-ipv4-amazon-2"]
).

% ------------------------------------------------------------------------------
% to enter a failure, copy/paste a template record (below), uncomment, and fill
% in the blanks. escape any strings with https://onlinetexttools.com/escape-text .
% ------------------------------------------------------------------------------
%failure(
%ID,                    % integer, unique ID,
%Failure,               % string,
%_Context,              % string,
%Reason,                % example: unspecified/"fixed on retry"/"kernel too old"/etc,
%ReleaseBlocking,       % example: unknown/unspecified/yes/no,
%AffectedReleases,      % ["strings"],
%AffectedUpgradePaths,  % ["strings"],
%Builds,                % ["strings"],
%AffectedScenarios      % ["strings"]
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

