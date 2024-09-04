module ApplicationHelper
  def result_image(image)
    case image
    when 'Sunrise(サンライズ)'
      '01_sunrise.png'
    when 'Typhoon(タイフーン)'
      '02_typhoon.png'
    when 'The Fall(ザ・フォール)'
      '03_the_fall.png'
    when 'Full Moon(フルムーン)'
      '04_full_moon.png'
    when 'Shooting Star(シューティングスター)'
      '05_shooting_star.png'
    when 'Flying Nimbus(觔斗雲)'
      '06_flying_nimbus.png'
    when 'Only you(オンリー・ユー)'
      '07_only_you.png'
    when 'I miss you(黄身が恋しい)'
      '08_i_miss_you.png'
    when 'Macho Men(マッチョメン)'
      '09_macho_men.png'
    when 'Day After Tomorrow(デイ・アフター・トゥモロー)'
      '10_day_after_tomorrow.png'
    when 'Dark Side(ダークサイド)'
      '11_dark_side.png'
    when 'Summer Salt(サマーソルト)'
      '12_summer_salt.png'
    when 'Get Wild (ゲットワイルド)'
      '13_get_wild .png'
    when 'SKG(醤油かけご飯)'
      '14_skg.png'
    when 'TK(ティーケー)'
      '15_tk.png'
    when 'Imagination(イマジネーション)'
      '16_imagination.png'
    end
  end

  def result_text(text)
    case text
    when 'Sunrise(サンライズ)'
      "・ご飯の上に醤油をかけ混ぜる\n・その上に溶いた卵をかける\n・一番オススメの食べ方"
    when 'Typhoon(タイフーン)'
      "・白身とご飯を混ぜる\n・黄身を乗せる\n・醤油を少々\n・嵐のような美味しさ"
    when 'The Fall(ザ・フォール)'
      "・卵を落とし混ぜずに食す\n・醤油を少々\n・黄身、白身、ご飯の味をそれぞれに楽しむ。"
    when 'Full Moon(フルムーン)'
      "・白身をメレンゲ状にしてご飯にかける\n・黄身を乗せる\n・醤油を少々\n・「月が綺麗ですね」"
    when 'Shooting Star(シューティングスター)'
      "・卵と醤油をかけて混ぜるだけ\n・シンプル イズ ベスト"
    when 'Flying Nimbus(觔斗雲)'
      "・黄身と白身をメレンゲ状にしてお米と混ぜる\n・醤油を少々\n・天竺を感じる味"
    when 'Only you(オンリー・ユー)'
      "・黄身だけをご飯の上に乗せる\n・醤油を少々\n・一途♡"
    when 'I miss you(黄身が恋しい)'
      "・余った白身をご飯と混ぜる\n・醤油を少々\n・黄身がいないと寂しいね。"
    when 'Macho Men(マッチョメン)'
      "・白身のみをご飯と混ぜる\n・醤油を少々\n・筋肉も大喜び"
    when 'Day After Tomorrow(デイ・アフター・トゥモロー)'
      "・黄身を冷凍する\n・解凍してご飯に乗せる\n・醤油を少々\n・環境問題について考えさせられる"
    when 'Dark Side(ダークサイド)'
      "・黄身を醤油に一晩漬ける\n・それをご飯に乗せる\n・爆ぜろリアル！弾けろシナプス！バニッシュメント・ディス・ワールド！！"
    when 'Summer Salt(サマーソルト)'
      '・塩 TKG'
    when 'Get Wild (ゲットワイルド)'
      "・卵とご飯を混ぜる\n・調味料無し\n・XYZ"
    when 'SKG(醤油かけご飯)'
      '・ご飯に醤油をかける'
    when 'TK(ティーケー)'
      "・卵だけ\n・お好みで醤油を少々"
    when 'Imagination(イマジネーション)'
      "・卵とご飯と醤油を用意する\n・だけど食べない\n・食べるのではない、感じてみる"
    end
  end
end
