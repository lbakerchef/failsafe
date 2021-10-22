# failsafe
Build and Test Failures Database for Chef Infra Server

Quick Start

Install SWI-Prolog (https://www.swi-prolog.org/).  
For mac:
```bash
brew install swi-prolog
```

Clone this repo, and `cd` to the repo's directory.
```bash
git clone git@github.com:lbakerchef/failsafe.git
cd failsafe
```

Invoke the SWI-Prolog console.
```bash
swipl
```

Load failsafe (notice the period).
```bash
[failsafe].
```

Example.  
Search for all failure records that contain the phrase 'Permission denied'.  
After a record is displayed (if any), hit the `space bar` or semicolon (`;`) to continue to the next matching record, or hit `a` or `enter` (return) to abort.

```bash
?- fail("Permission denied").

=================================================================================
FAILURE
null_resource.backend3_config (remote-exec): Waiting for the node to come online...
null_resource.backend3_config: Still creating... [1m50s elapsed]
null_resource.backend3_config (remote-exec): done
null_resource.backend3_config (remote-exec): This node has been joined to the cluster.
null_resource.backend3_config (remote-exec): sudo chef-backend-ctl gen-server-config chefserver.internal > /tmp/chef-server.rb
null_resource.backend3_config (remote-exec): + sudo chef-backend-ctl gen-server-config chefserver.internal
null_resource.backend3_config (remote-exec): echo ""profiles['root_url'] = 'https://chefserver.internal:9998'"" | sudo tee -a /tmp/chef-server.rb
null_resource.backend3_config (remote-exec): + echo profiles['root_url'] = 'https://chefserver.internal:9998'
null_resource.backend3_config (remote-exec): + sudo tee -a /tmp/chef-server.rb
null_resource.backend3_config (remote-exec): tee: /tmp/chef-server.rb: Permission denied
null_resource.backend3_config (remote-exec): profiles['root_url'] = 'https://chefserver.internal:9998'
Error: error executing ""/tmp/terraform_2099555810.sh"": Process exited with status 1

REASON
unknown

RELEASE BLOCKING
no

AFFECTED RELEASES
14.6.32

AFFECTED UPGRADE PATHS
12.17.15 -> 14.6.32
13.2 -> 14.6.32
14.5.29 -> 14.6.32

AFFECTED SCENARIOS
chef-backend-ipv4-ubuntu-20.04

BUILDS
https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/44
https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/45
https://buildkite.com/chef/chef-umbrella-master-chef-server-full/builds/47
true
```

Exit SWI-Prolog.
```bash
halt.
```

NOTE: Currently, only a few failures are entered into the database.

More to come.
