//  PROGRAMMER: Giselle Pacheco
//  PANTHERID: 2348330
//  CLASS:          COP 465501 TR 5:00
//  INSTRUCTOR:     Steve Luis  ECS 282
//  ASSIGNMENT:     #1 Program
//  DUE:            Thursday 09/12/11
//

#import "BNRQuizViewController.h"


@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Create two arrays filled with questions and answers
        // and make the pointers point to them
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        self.answers = @[@"Grapes",
                         @"14",
                         
                         @"Montpelier"];
    }
    // Return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    // Step to the next question
    self.currentQuestionIndex++;
    // Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        // Go back to the first question
        self.currentQuestionIndex = 0;
    }
    // Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    // Display the string in the question label
    self.questionLabel.text = question;
    // Reset the answer label
    self.answerLabel.text = @"???";
    
    self.countQuestion++;
    [self.questionCounter setText:[NSString stringWithFormat:@"# Questions count: %d", self.countQuestion]];
    
    
}
- (IBAction)showAnswer:(id)sender
{
    self.countAnswers++;
    [self.answerCounter setText:[NSString stringWithFormat:@"# answer count: %d", self.countAnswers]];
    
    
    // What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    // Display it in the answer label
    self.answerLabel.text = answer;
    
    
    
    
}

@end
