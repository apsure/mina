namespace :bower do
  set_default :bower_bin, 'bin/rake bower:'
  set_default :bower_options, "RAILS_ENV=\"#{rails_env}\""

  # Installs assets.
  desc "Install dependencies using Bower."
  task :install do
    queue %{
      echo "-----> Installing dependencies using Bower"
      #{echo_cmd %[#{bower_bin}install #{bower_options}]}
    }
  end
end