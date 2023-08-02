hash = Hash.new
puts "enter your objective: "
o = gets.chomp
hash["objective:"] = o

puts "enter your name: "
name = gets.chomp
hash["name:"] = name

puts "enter your age: "
age = gets.chomp.to_i
hash["age:"] = age

puts "enter the Address: "
address = gets.chomp
hash["Address:"] = address

puts "enter the Phone no: "
p= gets.chomp
hash["Phone_no:"] = p

puts "enter the Skills: "
skills = gets.chomp
hash["skills:"] = skills

puts "enter the Hobbies: "
h = gets.chomp
hash["Hobbies:"] = h

puts "\n"
# Write hash data to sita.txt
 
File.open("sita.txt", "w") do |file|
  file.write("Resume Project\n");
    for i in 0..60
          file.write("* ");
    end  
    
  hash.each do |key, value|
    file.write("      
              #{key} #{value}\t\n                                          ")
  end
  file.write("\n")

  for j in 0..60
    file.write("* ")
  end  
end

# Download sita.txt from the URL
require 'prawn'

def text_to_pdf(input_file, output_file)
  # Read the contents of the text file
  text_content = File.read(input_file)

  # Generate a new PDF document
  Prawn::Document.generate(output_file) do
    # Add the text content to the PDF
    text text_content
  end
end

# Replace 'input.txt' with the path to your text file, and 'output.pdf' with the desired PDF output file path.
text_to_pdf('sita.txt', 'output.pdf')

puts "PDF conversion completed!"


puts "PDF generated successfully. File saved as."
puts "enter yes if you want to open the file otherwise enter x:"
require 'launchy'

# Replace this with the actual path to your PDF file
pdf_file_path = "/home/dell/resumeproject/output.pdf"

puts "Do you want to open the PDF file? (yes/no)"
input = gets.chomp.downcase

if input == "yes"
  # Open the PDF file using the default system PDF viewer
  Launchy.open(pdf_file_path)
else
  puts "PDF file not opened."
end



