require "capistrano/default_stage/version"

# If the stage is not set on the command line, this
# task will set it from the configured default_stage.
Rake::Task.define_task(:default_stage) do 
  # neuter capistrano's 'ensure_stage'
  Rake::Task[:ensure_stage].clear_actions

  unless stage_set?
    default_stage = fetch(:default_stage)

    # fail loudly when no default_stage is set
    unless default_stage
      puts t(:stage_not_set)
      exit 1
    end

    set :stage, default_stage
    invoke default_stage
  end
end

# Refine capistrano's 'ensure_stage' task to 
# depend on our 'default_stage' task.
Rake::Task.define_task(:ensure_stage => :default_stage)