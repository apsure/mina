namespace :bower do
  set_default :bower_bin, 'bower'
  set_default :bower_prefix, "RAILS_ENV=\"#{rails_env}\""
  set_default :bower_options, "-p"
  set_default :bower_directory, ""

  # Installs assets.
  desc "Install dependencies using Bower."
  task :install do
    queue %{
      echo "-----> Installing dependencies using Bower"
      #{echo_cmd %[(cd #{bower_directory}; #{bower_prefix} #{bower_bin} install #{bower_options})]}
    }
  end
end