class DiagnosisController < ApplicationController
  def new; end

  def create
    answers = params[:answers]
    @result = diagnosis_result(answers)
    redirect_to diagnosis_result_path(result: @result)
  end

  def result
    @tkg = params[:result]
  end

  private
  def diagnosis_result(answers)
    answers ||= {}
    q1 = answers[:q1].to_i
    q2 = answers[:q2].to_i
    q3 = answers[:q3].to_i
    q4 = answers[:q4].to_i
    q5 = answers[:q5].to_i
    q6 = answers[:q6].to_i
    q7 = answers[:q7].to_i
    q8 = answers[:q8].to_i
    q9 = answers[:q9].to_i
    q10 = answers[:q10].to_i
    score = aggregate(answers)

    if q1 == 0 && q2 == 0
      @result_title = 'Imagination(イマジネーション)'
    elsif q1 == 0 && q2 ==2
      @result_title = 'SKG(醤油かけご飯)'
    elsif q1 == 2 && q2 == 0
      @result_title = 'Day After Tomorrow(デイ・アフター・トゥモロー)'
    elsif q3 == 1
      @result_title = 'Summer Salt(サマーソルト)'
    elsif q3 == 0
      @result_title = 'Get Wild (ゲットワイルド)'
    elsif q6 == 0 && q7 == 2 && score >= 11
      @result_title = 'Only you(オンリー・ユー)'
    elsif q6 == 0 && q7 == 2 && score <= 10
      @result_title = 'I miss you(黄身が恋しい)'
    elsif q8 == 2
      @result_title = 'TK(ティーケー)'
    elsif q9 == 2
      @result_title = 'Macho Men(マッチョメン)'
    elsif q10 == 1
      @result_title = 'Dark Side(ダークサイド)'
    else
      score_result(score)
    end
  end

  def aggregate(answers)
    score = 0
    score += 2 if answers[:q1] == '2'
    score += 1 if answers[:q1] == '1'
    score += 2 if answers[:q2] == '2'
    score += 1 if answers[:q2] == '1'
    score += 2 if answers[:q3] == '2'
    score += 1 if answers[:q3] == '1'
    score += 2 if answers[:q4] == '2'
    score += 1 if answers[:q4] == '1'
    score += 2 if answers[:q5] == '2'
    score += 1 if answers[:q5] == '1'
    score += 2 if answers[:q6] == '2'
    score += 1 if answers[:q6] == '1'
    score += 2 if answers[:q7] == '2'
    score += 1 if answers[:q7] == '1'
    score += 2 if answers[:q8] == '2'
    score += 1 if answers[:q8] == '1'
    score += 2 if answers[:q9] == '2'
    score += 1 if answers[:q9] == '1'
    score += 2 if answers[:q10] == '2'
    score += 1 if answers[:q10] == '1'
    score
  end

  def score_result(score)
    case score
    when 0..5
      @result_title = 'Shooting Star(シューティングスター)'
    when 6..8
      @result_title = 'Sunrise(サンライズ)'
    when 9..10
      @result_title = 'Full Moon(フルムーン)'
    when 11..13
      @result_title = 'Flying Nimbus(觔斗雲)'
    when 14..15
      @result_title = 'Typhoon(タイフーン)'
    when 16..20
      @result_title = 'The Fall(ザ・フォール)'
    end
  end
end
