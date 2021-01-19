//
//  MargnTableViewCell.m
//  ss
//
//  Created by boce on 2021/1/18.
//

#import "MargnTableViewCell.h"

@implementation MargnTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setFrame:(CGRect)frame{
    static CGFloat margin = 8;
    frame.origin.x = margin;
    frame.size.width -= 2 * frame.origin.x;
    [super setFrame:frame];
}

@end
