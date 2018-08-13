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

---[[ 第二题

function norm(x,y)
    return math.sqrt(x^2+y^2)
end

function twice(x)
    return 2.0*x
end

--]]
