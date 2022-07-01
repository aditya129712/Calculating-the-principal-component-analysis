#The R-programming to obtain the solution for the given problem-
  library('ggplot2')
R=array(c(1,0.577,0.500,0.387,0.462,0.577,1,0.599,0.389,0.322,0.5,0.599,1,0.436,0.426,0.387,0.389,0.436,1,0.523,0.462,0.322,0.426,0.523,1),dim=c(5,5))
R
e_val=eigen(R)$value
e_val
e_vec= eigen(R)$vectors
e_vec
p=mat.or.vec(5,1)
for (i in 1:5){
  p[i]=e_val[i]/5}
p[i]
prop=cumsum(p)
prop
ry1_z1=e_vec[1,1]*sqrt(e_val[1])
ry1_z1
ry1_z2=e_vec[2,2]*sqrt(e_val[2])
ry1_z2
i=c(1,2,3,4,5)
i
Table = data.frame(i,e_val)
Table
View(Table)
plot(i,e_val,type="o",main="Scree Plot")
#using ggplot we get required graph
ggp = ggplot(data=Table,mapping=aes(x=i,y=e_val))+geom_point()+geom_line()
labs(
  title = paste("Scree Plot")
)
ggp
