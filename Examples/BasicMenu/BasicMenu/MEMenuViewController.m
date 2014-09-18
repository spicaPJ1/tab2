// MEMenuViewController.m
// BasicMenu
//
// Copyright (c) 2013, Michael Enriquez (http://enriquez.me)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>
#import "MEMenuViewController.h"

@interface MEMenuViewController ()

@end

@implementation MEMenuViewController

//@synthesize red, green, blue;
//@synthesize myValue1 = myValue2;

- (IBAction)unwindToMenuViewController:(UIStoryboardSegue *)segue { }
//- (IBAction)unwindToMenuViewController:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"mySegue"]) {
//        ViewController *viewCon = segue.destinationViewController;
//        viewCon.myValue1 = @"test";
//}
- (void)viewDidLoad{
    [super viewDidLoad];
    
    //self.title = @"color palette";
}

// セル数を指定
//- (NSInteger)tableView:(UITableView *)aTableView
// numberOfRowsInSection:(NSInteger)section {

// 黒・赤・緑・青の4行とする
//    return 5;
//}

// セルを生成するとき
//- (UITableViewCell *)tableView:(UITableView *)tableView
//         cellForRowAtIndexPath:(NSIndexPath *)indexPath {

//    static NSString *CellIdentifier = @"CellIdentifier";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefaultreuseIdentifier:CellIdentifier] autorelease];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }

// 行選択時にハイライト表示しないよう設定(見やすくするため)
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;

//    return cell;
//}

//セルが選択された時　indexpathをもとにViewControllerに表示される点の色を変えるようにする
//- (void)tableView :(UITableView *)aTableView
//didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

// 線の色を「黒」にセット
//if (indexPath.row == 0) {
//    detailViewController.red = 0.0;
//    detailViewController.green = 0.0;
//    detailViewController.blue = 0.0;
//}
// 線の色を「赤」にセット
//else if (indexPath.row == 1) {
//    detailViewController.red = 1.0;
//    detailViewController.green = 0.0;
//    detailViewController.blue = 0.0;
//}
// 線の色を「緑」にセット
//else if (indexPath.row == 2) {
//    detailViewController.red = 0.0;
//    detailViewController.green = 1.0;
//    detailViewController.blue = 0.0;
//}
// 線の色を「青」にセット
//else if (indexPath.row == 3) {
//    detailViewController.red = 0.0;
//    detailViewController.green = 0.0;
//   detailViewController.blue = 1.0;
//}
//
//else if (indexPath.row == 4){
//    detailViewController.red = 1.0;
//    detailViewController.green = 0.0;
//    detailViewController.blue = 1.0;
//}
//}


// システムイベントがタッチイベントをキャンセルしたときに実行されるメソッド
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesCancelled:withEvent:)", [touches count]);
}

@end
