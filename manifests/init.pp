#
# Mailops Team
#
# Install zsh
#

class zsh {

  File {
    owner   => 'root',
    group   => 'root',
  }

  package { 'zsh':
    ensure  => latest,
  }

  file { '/root/.oh-my-zsh':
    ensure  => directory,
    source  => "puppet:///modules/${module_name}/oh-my-zsh",
    purge   => true,
    recurse => true,
  }

  file { '/root/.zshrc':
    ensure  => file,
    source  => "puppet:///modules/${module_name}/zshrc",
  }
}
