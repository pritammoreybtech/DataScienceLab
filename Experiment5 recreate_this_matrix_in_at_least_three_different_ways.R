#AIM:

#Pictured below is a matrix. Recreate this matrix in at least three different ways.   
#Player  Piece     
#[1,] "dark"  "king"    
#[2,] "dark"  "queen"   
#[3,] "dark"  "pawn"    
#[4,] "dark"  "pawn"    
#[5,] "dark"  "knight"  
#[6,] "light" "bishop"  
#[7,] "light" "king"   
#[8,] "light" "rook"  
#[9,] "light" "pawn"    
#[10,] "light" "pawn"    
#a) Hint. Use the dim() function, the matrix() function, and cbind().  
#b) Can you think of a faster way to create this matrix?   
#c) Assign names to it in two different ways.   
#d) Would using rbind() be practical in this case?   
#e) Can you think of a way to make adding a row to the matrix worthwhile?  

#SOLUTION:

#a)Use the dim() function, the matrix() function, and cbind().
data <- c(
  "dark", "king",
  "dark", "queen",
  "dark", "pawn",
  "dark", "pawn",
  "dark", "knight",
  "light", "bishop",
  "light", "king",
  "light", "rook",
  "light", "pawn",
  "light", "pawn"
)

dim(data)<-c(2, 10)
m1<-t(data)
colnames(m1)<-c("Player","Piece")
print("Method 1:Using dim():")
print(m1)

m2<- matrix(data, ncol=2, byrow=TRUE)
colnames(m2) <- c("Player", "Piece")
print("Method 2:Using matrix():")
print(m2)

player_data<-c("dark","dark","dark","dark","dark",
          "light","light","light","light","light")
piece_data<-c("king", "queen", "pawn", "pawn", "knight",
           "bishop", "king", "rook", "pawn", "pawn")
m3<-cbind(Player=player_data,Piece=piece_data)
print("Method 3:Using cbind():")
print(m3)

#b)Can you think of a faster way to create this matrix? 
player<-rep(c("dark", "light"), each = 5)
piece<-c("king", "queen", "pawn", "pawn", "knight", 
           "bishop", "king", "rook", "pawn", "pawn")
fast<-cbind(Player=player,Piece=piece)
print(fast)

#c)Assign names to it in two different ways. 
colnames(m1)<-c("Players","Pieces")
print(m1)
dimnames(m1)<-list(NULL,c("Player","Piece"))
print(m1)

#d)Would using rbind() be practical in this case?
chess_matrix<-rbind(c("dark", "king"),
                      c("dark", "queen"),
                      c("dark", "pawn"),
                      c("dark", "pawn"),
                      c("dark", "knight"),
                      c("light", "bishop"),
                      c("light", "king"),
                      c("light", "rook"),
                      c("light", "pawn"),
                      c("light", "pawn"))

#No,rbind() is not practical for creating the full matrix,as it requires adding rows one by one.

#e)Can you think of a way to make adding a row to the matrix worthwhile?
#Yes, adding a row is useful when updating the matrix with new player 
#moves or pieces during gameplay, making rbind() helpful for real-time changes.
# Practical when adding a new row later:
new_row<-c("dark", "rook")
m1<-rbind(m1,new_row)
print(m1)



