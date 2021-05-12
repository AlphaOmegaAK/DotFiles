function fish_greeting
    printf (set_color F70)"
WELCOME
    .--. .---..       .          .    .--..---.
    |   :|     \     /          / \   |   ) |  
    |   ||---   \   /   ____   /___\  |--'  |  
    |   ;|       \ /          /     \ |  \  |  
    '--' '---'    '          '       `'   ` '  
"
#set msgs \
   #"Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday's code. - Dan Salomon" \
   #"Dont't worry if it doesn't work right.If everything did, you'd be out of a job." \
   #"Without requirements or design, programming is the art of adding bugs to an empty text file" \
   #"I don't care if it works on your machine! We are not shipping your machine! - Vidiu Platon" \
   #"Software undergoes beta testing shortly before it's released - Beta is latin for still doesn't work" \
   #"If debudding is the process of removing software bugs, then programming must be the process of putting them in. - Edsger W. Dijkstra" \
   #"The computer was born to solve problems that did not exist before." \
   #"Always code as if the guy who ends up maintaning your code will be a violent psychopath who knows where you live. - Rick Osborne" \
   #"Your mind is programmable - if you're not programming your mind, someone else will program it for you. - Jeremy Hammond" \
   #"Talk is cheap.Show me the code. - Linus Torvalds" \
   #"The trouble with programmers is that you can never tell what a programmer is doing until it's too late. - Seymour Cray" \
   #"Any fool can write code that a computer can understand.Good programmers write code that humans can understand." \
   #"First, solve the problem.Then write the code. - John Johnson" \
   #"The function of a good software is to make the complex appear to be simple. - Grady Booch" \
   
#set chosen_msg (random)"%"(count $msgs)
#set chosen_msg $msgs[(math $chosen_msg"+1")]
#printf (set_color F20)"%s\n" $chosen_msg

fortune
end


