local gamesToFilter = {
    "Bullet Soul",
    "Infinite Burst",
    "DaiOuJou",
    "Daifukkatsu",
    "SaiDaiOuJou",
    "DoDonPachi",
    "Eschatos",
    "Espgaluda II",
    "Ketsui",
    "Mamoru-Kun",
    "Muchi Muchi Pork!",
    "Pink Sweets",
    "Mushihimesama",
    "Raiden Fighters Aces",
    "Raiden IV",
    "Shikigami No Shiro III",
    "Shooting 200X",
    "Shooting 10th Anniversary",
    "Under Defeat HD",
    "虫姫さま",
    "虫姫さまふたり"
}

local function matchesGame(title)
    local lowerTitle = string.lower(title)
    for _, game in ipairs(gamesToFilter) do
        if string.find(lowerTitle, string.lower(game), 1, true) then
            return true
        end
    end
    return false
end

function filterGames(games)
    local filteredGames = {}
    for _, games in ipairs(games) do
        if matchesGame(game.Title) then
            table.insert(filteredGames, game)
        end
    end
    return filteredGames
end