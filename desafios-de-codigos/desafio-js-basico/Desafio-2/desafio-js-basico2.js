x = gets().split(" ");

a = parseInt(x[0]);

b = parseInt(x[1]);

c = parseInt(x[2]);

d = parseInt(x[3]);

if (b > c && d > a && c+d > a+b && c > 0 && d > 0 && a % 2 == 0)
{
print("Valores aceitos");
}else
{
print("Valores nao aceitos");
}