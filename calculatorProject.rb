// calculator using the ruby 
ans=0;
hash=Hash.new 
$ans=0;
$history = []
$s="";
# $l1=0;
$flag=0;
c=0;
def calculate(num1,num2,op,l1)
    if l1==0
       $s.concat("#{num1} #{op} #{num2}");
       l1=1
    else 
       $s.concat(" #{op} #{num2}")
    end    
    if op=='+'
        puts num1+num2;
        $ans= num1+num2;
    end
    if op=='-'
        puts num1-num2;
        $ans= num1-num2;
    end
    if op=='*'
        puts num1*num2;
        $ans= num1*num2;
    end
    if op=='/'
        puts num1/num2;   
        $ans= num1/num2;         
    end
    return $ans;
end
while 1
    puts "/******************************** CALCULATOR *****************************************/"
   puts "enter the number of input you want's to give  :"
   num=gets.chomp.to_i;
    if num==1
        while num<=1
          puts "it is invalid please enter the valid input beacause minimum two operands are required to perform any operation:"
          num=gets.chomp.to_i;
        end
    end    
       i=0;
       c=0;
       arr=Array.new;
       $flag=0;
       $l=0;
    for i in 0...num-1
        if $flag==0
          while c<2
           puts "enter the input #{i+1}:"
           arr[i]=gets.chomp.to_i;
           i=i+1;
           c=c+1;
          end 
          $flag=1;
          puts "enter the operator please: "
          ch=gets.chomp;
          unless ch=='+'||ch=='-'||ch=='*'||ch=='/'
            while ch!='+'||ch!='-'||ch!='*'||ch!='/'
                puts "enter the valid operator please: "
                ch=gets.chomp;
                if ch=='+'||ch=='-'||ch=='*'||ch=='/'
                   break;
                end   
            end
        end  
          $l= calculate arr[0],arr[1],ch,0;
        else
            i=i+1;
            puts "enter the input #{i+1}:"
            arr[i]=gets.chomp.to_i;
            puts "enter the operator please: "
            ch=gets.chomp;
            
            unless ch=='+'||ch=='-'||ch=='*'||ch=='/'
                while ch!='+'||ch!='-'||ch!='*'||ch!='/'
                    puts "enter the valid operator please: "
                    ch=gets.chomp;
                    if ch=='+'||ch=='-'||ch=='*'||ch=='/'
                       break;
                    end   
                end
            end      
            $l= calculate $l,arr[i],ch,1;
        end 
    end  
    $s.concat(" =  #{$l}")
        $history << $s
        puts "the equation= #{$s}"
        $s=""
    puts "enter the (y) to continue , (h) to view history or enter (x) to exit:"
    ch=gets.chomp;
    unless ch=='y'||ch=='h'||ch=='x'
        while ch!='y'||ch!='h'||ch!='x'
            puts "enter the valid character please: "
            ch=gets.chomp;
            if ch=='y'||ch=='h'||ch=='x'
               break;
            end   
        end
    end      
    if ch=='y'
        next
    elsif ch=='h'
        puts $history
        puts "enter the (y) to continue or enter the (x) to exit "
        ch=gets.chomp;
        unless ch=='y'||ch=='h'||ch=='x'
            while ch!='y'||ch!='h'||ch!='x'

                puts "enter the valid character please: #{ch} "
                ch=gets.chomp;
                if ch=='y'||ch=='h'||ch=='x'
                   break;
                end   
            end
        end   
        if ch=='y'
            next
        elsif ch=='x' 
            break;
        end       
    elsif ch=='x' 
        break;
    end        
end    
puts "/****************************************************** THANK YOU ******************************************************/"
