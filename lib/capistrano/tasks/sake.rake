namespace :sake do
  desc "Run a task on a remote server."
  # run like: cap staging sake:invoke task="a_certain_task"
  task :invoke do
    on roles(:all) do
      within current_path do
        execute :rake, ENV['task'], "RAILS_ENV=#{fetch(:rails_env)}"
      end
    end
  end
end
