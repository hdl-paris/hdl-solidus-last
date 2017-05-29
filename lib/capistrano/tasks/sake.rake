namespace :sake do
  desc "Run a task on a remote server."
  # run like: cap staging sake:invoke task="a_certain_task"
  task :invoke do
    on roles(:all) do
      rails_root_path=current_path.join(fetch(:rails_root))
      within rails_root_path do
        execute :rake, ENV['task'], "RAILS_ENV=#{fetch(:rails_env)}"
      end
    end
  end
end
