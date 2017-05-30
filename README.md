# SourceTree
[![Build status](https://ci.appveyor.com/api/projects/status/xp8qsnpl70thigt4/branch/master?svg=true)](https://ci.appveyor.com/project/T-Wong/sourcetree/branch/master)
[![Cookbook Version](https://img.shields.io/cookbook/v/sourcetree.svg)](https://supermarket.chef.io/cookbooks/sourcetree)

Installs and configures SourceTree on a Windows system. The default recipe of this cookbook will install SourceTree version `2.0.20.1`.

## Requirements
### Platforms
* Windows 7
* Windows Server 2008 R2
* Windows 8, 8.1
* Windows Server 2012 R1, R2

## Attributes
### Windows
* `node['sourcetree']['windows']['source']` - The source URI of where the SourceTree executable is located.
* `node['sourcetree']['windows']['version']` - The version of SourceTree to install. Make sure the corresponding SourceTree executable is in the source repository. Default is `2.0.20.1`.
* `node['sourcetree']['windows']['checksum']` - The SHA256 checksum of the SourceTree executable for the corresponding version.

## Recipes
### default
The default recipe of this cookbook will install version `2.0.20.1` of SourceTree on a Windows system.

### windows
This recipe installs SourceTree on a Windows system.

## Usage
Place a dependency on the sourcetree cookbook in your cookbook's metadata.rb

```ruby
depends 'sourcetree', '~> 1.1.0'
```

Then, in a recipe:

```ruby
include_recipe 'sourcetree::default'
```

or you may add this cookbook directly in a run-list:

```ruby
recipe[sourcetree::default]
```

## License & Authors
- Author:: Tyler Wong ([ty-w@live.com](mailto:ty-w@live.com))

```text
Copyright 2017, Tyler Wong

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
