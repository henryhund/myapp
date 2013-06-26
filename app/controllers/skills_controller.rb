class SkillsController < ApplicationController

  load_and_authorize_resource

  # GET /skills
  # GET /skills.json
  include SkillsHelper
  # before_filter :get_referer
  def index
    @skills = Skill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skills }
    end
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
    # @skill = Skill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skill }
    end
  end

  # GET /skills/new
  # GET /skills/new.json
  def new
    # @skill = Skill.new
    # @skills = current_user.skills

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill }
    end
  end

  # GET /skills/1/edit
  def edit
    # @skill = Skill.find(params[:id])
    @profile = @skill.user.profile
  end

  # POST /skills
  # POST /skills.json
  def create
    # @skill = Skill.new(params[:skill])
    @skill.user_id = current_user.id

    respond_to do |format|
      if @skill.save
        format.html { redirect_to profile_path(@skill.user.profile), notice: 'Skill was successfully created.' }
        format.json { render json: @skill, status: :created, location: @skill }
      else
        format.html { render action: "new" }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skills/1
  # PUT /skills/1.json
  def update
    # @skill = Skill.find(params[:id])

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        format.html { redirect_to profile_path(@skill.user.profile), notice: 'Skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    # @skill = Skill.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to profile_path(@skill.user.profile) }
      format.json { head :no_content }
    end
  end
end
