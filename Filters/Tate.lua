local gamesToFilter = {"BulletSoul", "Bullet Soul", "Bullet Soul Infinite Burst", "Dodonpachi: DaiOuJou - Black Label Extra",
                       "DoDonPachi: Resurrection Ver 1.5", "Dodonpachi: DaiFukkatsu Ver 1.5",
                       "Dodonpachi DaiFukkatsu Black Label", "Dodonpachi: SaiDaiOuJou", "Eschatos",
                       "EspGaluda II - Black Label", "Espgaluda II Black Label", "Espgaluda II: Black Label",
                       "Ketsui: Kizuna Jigoku Tachi Extra", "Mamoru-Kun", "Muchi Muchi Pork! / (Ibara II): Pink Sweets",
                       "Mushihimesama HD", "Mushihimesama: Futari Version 1.5", "Raiden Fighters Aces", "Raiden IV",
                       "Shikigami No Shiro III", "Shooting 200X", "Shooting Love, 200X", "Shooting 10th Anniversary",
                       "Under Defeat HD", "Shooting Love 200X", "DoDonPachi DaiFukkatsu Black Label",
                       "DoDonPachi: DaiFukkatsu Black Label", "DoDonPachi SaiDaiOuJou",
                       "Muchi Muchi Pork! & Pink Sweets", "Mushihimesama", "Mushihimesama Futari",
                       "DoDonPachi: Resurrection", "虫姫さまふたり", "虫姫さま", "Raiden IV (NA)",
                       "Raiden IV (JAP)", "Dodonpachi: DaiOuJou Black Label Extra",
                       "Dodonpachi DaiOuJou Black Label Extra", "Mamorukun Curse!", "Under Defeat HD (JP)",
                       "Under Defeat HD: Deluxe Edition", "バレットソウル", "バレットソウル弾魂", "バレットソウルインフィニットバースト",
                       "バレット ソウル", "バレット ソウル 弾魂", "バレット ソウル インフィニットバースト",
                       "怒首領蜂大復活ブラックレーベル", "怒首領蜂大復活ブラックレーベル", "Dodonpachi:DaiFukkatsu", "怒首領蜂大復活",
                       "怒首領蜂大復活", "怒首領蜂大復活Ver.1.5", "怒首領蜂大往生ブラックレーベルEXTRA", "怒首領蜂大往生ブラックレーベルEXTRA",
                       "怒首領蜂最大往生", "怒首領蜂最大往生", "ESCHATOS", "エスカトス", "エスプガルーダIIブラックレーベル",
                       "エスプガルーダIIブラックレーベル", "Ketsui", "ケツイ", "ケツイ~絆地獄たち~EXTRA", "まもるクンは呪われてしまった!",
                       "むちむちポーク！＆ピンクスゥイーツ", "むちむちポーク&ピンクスゥイーツ", "雷電IV", "雷電IV", "ライデンファイターズエイシズ",
                       "ライデンファイターズエイシズ", "式神の城III", "式神の城III", "シューティングラブ。200X", "シューティングラブ。10周年", 
                       "シューティングラブ。コレクション", "アンダーディフィートHD", "アンダーディフィート HD"}

local function IsTateable(Content, collection)
    for _, str in ipairs(collection) do
        if string.find(string.lower(Content.Name), string.lower(str)) then
            return true
        end
    end
    return false
end

GameListFilterCategories.User["Tate"] = function(Content)
    return IsTateable(Content, gamesToFilter)
end