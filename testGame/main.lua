output = 5
chicken = 5
-- if (chicken >= 20) then
--     message = 1;
-- elseif chicken >= 10 then --Trying unreachable code
--     message = 2;
-- else
--     message = "Nopeee";
-- end

message = chicken >= 20 and 1 or (chicken >= 10 and 2 or "Nopeee: Chicken is " .. (chicken));

count = 0
while count < 10 do
    count = count + 1
    message = message .. " " .. message;
end

message = 0
for i=1, 3, 1 do
    message = message + 1
end

message = 0
for i=100, 3, -1 do
    message = message + 1
end

function test(mess, addBy)
    local mess = mess + addBy
    return mess
end

message = 0
message = test(message, 10)

testScores = {}

testScoreA = {1, 2, 3}
testScoreB = {4, 5, 6}
testScoreC = {7, 8, 9}

table.insert(testScores, testScoreA)
table.insert(testScores, testScoreB)
table.insert(testScores, testScoreC)
testScoreA.subject = "Science"
testScores["Afasdf"]=1
message = ""

for i, s in ipairs(testScoreA) do
    message = message.."  "..s.." "..testScoreA.subject.."\n"
end

-- message = tostring(testScores[1][1]).."  "..tostring(testScores[1][2]).."  "..tostring(testScores[1][3]).."\n"..tostring(testScores[2][1]).."  "..tostring(testScores[2][2]).."  "..tostring(testScores[2][3]).."\n"..tostring(testScores[3][1]).."  "..tostring(testScores[3][2]).."  "..tostring(testScores[3][3]).."\n"


function love.draw()
    love.graphics.setFont(love.graphics.newFont(30))
    love.graphics.print(message)
end
