require "capistrano/default_stage/version"

Rake::Task.define_task(:ensure_stage)

Rake::Task.define_task(:default_stage) do 
  unless stage_set?
    default_stage = fetch(:default_stage)
    unless default_stage
      puts t(:stage_not_set)
      exit 1
    end

    set :stage, default_stage
    invoke default_stage
  end
end