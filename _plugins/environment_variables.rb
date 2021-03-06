# Plugin to add environment variables to the `site` object in Liquid templates

module Jekyll
  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      # Add environment variables to `site.config` here...
      site.config['ga_id'] = ENV['GA_ID'] # Access through site.ga_id
      site.config['hj_id'] = ENV['HJ_ID'] # Access through site.hj_id
      site.config['git_branch'] = ENV['BRANCH'] # https://docs.netlify.com/configure-builds/environment-variables/#read-only-variables
    end
  end
end