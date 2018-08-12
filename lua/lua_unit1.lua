--[[ 第一题
    function fact(n)
    if n == 0 then
        return 1
    else
        return n*fact(n-1)
    end
end
print("enter a number:")
a = io.read("*n")
print(fact(a))
--]]

--[[ 第二题

function norm(x,y)
    return math.sqrt(x^2+y^2)
end

function twice(x)
    return 2.0*x
end

--]]


---[[ 八皇后问题

N = 8

function isplaceok(a,n,c)

    for i =1,n - 1 do

        if(a[i] == c) or
         (a[i] - i == c - n) or
         (a[i] + i == c+n ) then
            return false
         end
    end
    return true
end

function printsolution(a)

for i = 1,N do

    for j = 1,N do

        io.write(a[i] == j and "X" or "-", " ")

    end
    io.write("\n")
end
io.write("\n")
end


function addqueen(a,n)
    if n>N then
        printsolution(a)
        return;
    else
        for c = 1,N do
            if isplaceok(a,n,c) then
                a[n] = c
                addqueen(a,n+1)
                end
        end
    end
end

addqueen({},1)
--]]

