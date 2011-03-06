class CodeSubmissionsController < ApplicationController
  before_filter :authenticate_with_cas

  # GET /code_submissions
  # GET /code_submissions.xml
  def index
    @code_submissions = CodeSubmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @code_submissions }
    end
  end

  # GET /code_submissions/1
  # GET /code_submissions/1.xml
  def show
    @code_submission = CodeSubmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @code_submission }
    end
  end

  # GET /code_submissions/new
  # GET /code_submissions/new.xml
  def new
    @code_submission = CodeSubmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @code_submission }
    end
  end

  # GET /code_submissions/1/edit
  def edit
    @code_submission = CodeSubmission.find(params[:id])
  end

  # POST /code_submissions
  # POST /code_submissions.xml
  def create
    @code_submission = CodeSubmission.new(params[:code_submission])

    @code_submission.reviewers << Reviewer.find_or_create(:username => params[:reviewers])

    respond_to do |format|
      if @code_submission.save
        format.html { redirect_to(@code_submission, :notice => 'Code submission was successfully created.') }
        format.xml  { render :xml => @code_submission, :status => :created, :location => @code_submission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @code_submission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /code_submissions/1
  # PUT /code_submissions/1.xml
  def update
    @code_submission = CodeSubmission.find(params[:id])

    respond_to do |format|
      if @code_submission.update_attributes(params[:code_submission])
        format.html { redirect_to(@code_submission, :notice => 'Code submission was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @code_submission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /code_submissions/1
  # DELETE /code_submissions/1.xml
  def destroy
    @code_submission = CodeSubmission.find(params[:id])
    @code_submission.destroy

    respond_to do |format|
      format.html { redirect_to(code_submissions_url) }
      format.xml  { head :ok }
    end
  end
end
