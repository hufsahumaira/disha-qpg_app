class QuestionPapersController < ApplicationController

  def index

  end

  def show
    @question_paper = QuestionPaper.find(params[:id])

    @module = @question_paper.module
    @fullmark = @question_paper.fullmark
    @difficulty = @question_paper.paper_difficulty
    code = @question_paper.code

    if @fullmark==25
      if @difficulty=='easy'
        if @module==2
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod1_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)

          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)

          @mod2_ques4_5 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

        elsif @module==3
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)

          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)
          @mod3_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

        elsif @module==4
          @mod1_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod3_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod4_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod4_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)
        elsif @module==5
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)

          @mod2_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)
          @mod2_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

          @mod3_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)
          @mod3_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)

          @mod4_ques1_2_3 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)
          @mod4_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

          @mod5_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)

        else
          flash[:danger] = "Module must be in between 2-5"
          redirect_to paper_path

        end

      elsif @difficulty=='medium'
        if @module==2
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod1_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)

          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

          @mod2_ques4_5 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

        elsif @module==3
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod3_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

        elsif @module==4
          @mod1_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod3_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod4_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod4_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

        elsif @module==5
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

          @mod2_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)
          @mod2_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

          @mod3_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod3_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)

          @mod4_ques1_2_3 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)
          @mod4_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

          @mod5_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)

        else
          flash[:danger] = "Module must be in between 2-5"
          redirect_to paper_path

        end

      elsif @difficulty=='hard'
        if @module==2
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod1_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)

          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)

          @mod2_ques4_5 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

        elsif @module==3
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)
          @mod3_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)

        elsif @module==4
          @mod1_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)
          @mod3_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod4_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod4_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)

        elsif @module==5
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)

          @mod2_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)
          @mod2_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

          @mod3_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)
          @mod3_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod4_ques1_2_3 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)
          @mod4_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

          @mod5_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 5)

        else
          flash[:danger] = "Module must be in between 2-5"
          redirect_to paper_path

        end

      end
    elsif @fullmark==40
      if @difficulty=='easy'
        if @module==3
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod2_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)
          @mod2_ques2_3_4 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)

          @mod3_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 5)
          @mod3_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)
          @mod3_ques4_5 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

        elsif @module==4
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)
          @mod1_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 5)

          @mod4_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod4_ques3_4 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)

        elsif @module==5
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)
          @mod3_ques3_4 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod4_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 5)
          @mod4_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod4_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 1)

          @mod5_ques1_2_3 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod5_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

        else
          flash[:danger] = "Module must be in between 3-5"
          redirect_to paper_path

        end

      elsif @difficulty=='medium'
        if @module==3
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 5)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod2_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod2_ques2_3_4 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)

          @mod3_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)
          @mod3_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)
          @mod3_ques4_5 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

        elsif @module==4
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod1_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)

          @mod4_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod4_ques3_4 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)

        elsif @module==5
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 5)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)
          @mod3_ques3_4 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)

          @mod4_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)
          @mod4_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)
          @mod4_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod5_ques1_2_3 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod5_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

        else
          flash[:danger] = "Module must be in between 3-5"
          redirect_to paper_path

        end

      elsif @difficulty=='hard'
        if @module==3
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 4)
          @mod1_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)

          @mod2_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 3)
          @mod2_ques2_3_4 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)

          @mod3_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 5)
          @mod3_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod3_ques4_5 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)

        elsif @module==4
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)
          @mod1_ques2_3 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 4)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)
          @mod2_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 5)

          @mod4_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)
          @mod4_ques3_4 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)

        elsif @module==5
          @mod1_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 5)
          @mod1_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 3)

          @mod2_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 4)

          @mod3_ques1_2 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 3)
          @mod3_ques3_4 = AddQuestion.limit(2).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 1)

          @mod4_ques1 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 5)
          @mod4_ques2 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'medium', course: code, mark: 2)
          @mod4_ques3 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 1)

          @mod5_ques1_2_3 = AddQuestion.limit(3).order("RANDOM()").where(difficulty: 'hard', course: code, mark: 2)
          @mod5_ques4 = AddQuestion.limit(1).order("RANDOM()").where(difficulty: 'easy', course: code, mark: 2)

        else
          flash[:danger] = "Module must be in between 3-5"
          redirect_to paper_path

        end

      end

    else
      flash[:danger] = "Fullmark must me 25 or 40"
      redirect_to paper_path
    end

    respond_to do |format|
      format.pdf{
        render pdf: 'show.pdf',
        template: 'question_papers/show',
        layout: 'pdf.html.erb',
        title: 'Exam Paper',
        save_to_file: Rails.root.join('pdfs', "exampaper.pdf")
      }
      format.html
    end
  end
  def new
    @question_paper = QuestionPaper.new
  end

  def create
    @question_paper = QuestionPaper.new(question_paper_params)
    if @question_paper.save
      redirect_to exam_paper_path
    else
      render 'new'
    end
  end

  def exam_paper
    @question_paper = QuestionPaper.last
  end


  private

  def question_paper_params
    params.require(:question_paper).permit(:name, :code, :fullmark, :paper_difficulty, :module)
  end
end
