class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"

    get '/projects' do
        projects = Project.all
        projects.to_json
    end

    #2. user should be able to view all their listed projects.
    get '/projects/:id' do
        projects = Project.where(user_id: params[:id])
        projects.to_json
    end

    get '/skills' do
        skills = Skill.all
        skills.to_json
    end

    #7. A user should be able to view their listed skills.
    get '/skills/:id' do
        user = User.find(params[:id])
        if user.skills == false
            return {message: "record not found!"}.to_json
        end
        user.skills.to_json
    end

    get '/users' do
        users = User.all
        users.to_json
    end

    #3. User to add a project
    post '/projects/:id' do
        skill_id = Skill.find_by(name: params[:skill]).id

        project = Project.create(
            project_name: params[:project_name],
            description: params[:description],
            link: params[:link],
            startedAt: Time.now,
            completedAt: Time.now,
            user_id: params[:id],
            skill_id: skill_id
        )

        project.to_json
    end

    #4. A user should be able to update existing project data.
    patch '/projects/:id' do
        skill_id = Skill.find_by(name: params[:skill]).id

        project = Project.find(params[:id])
        project.update(
            project_name: params[:project_name],
            description: params[:description],
            link: params[:link],
            skill_id: skill_id
        )

        project.to_json
    end

    #A user should be able to delete a project.
    delete '/projects/:id' do
        project = Project.find(params[:id])
        #delete the project
        project.destroy
    end

end