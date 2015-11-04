//  PROGRAMMER: Giselle Pacheco
//  PANTHERID: 2348330
//  CLASS:          COP 465501 TR 5:00
//  INSTRUCTOR:     Steve Luis  ECS 282
//  ASSIGNMENT:     #1 Program
//  DUE:            Thursday 09/12/11
//

#import <UIKit/UIKit.h>

@interface BNRQuizViewController : UIViewController

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic) int countQuestion;
@property (nonatomic) int countAnswers;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;


@property (nonatomic, weak) IBOutlet UILabel *questionCounter;
@property (nonatomic, weak) IBOutlet UILabel *answerCounter;



@end
