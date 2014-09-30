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

@interface MEMenuViewController (){

    NSArray * tableDatalist;
}
@end

UIImage *selectedImage1;
UIImage *selectedImage2;
UIImage *selectedImage3;
UIImage *selectedImage4;
UIImage *selectedImage5;

UIImage *saveImage1;
UIImage *saveImage2;
UIImage *saveImage3;
UIImage *saveImage4;
UIImage *saveImage5;

@implementation MEMenuViewController

@synthesize red, green, blue;

//パレットのスライドを動作させる
- (IBAction)unwindToMenuViewController:(UIStoryboardSegue *)segue {}

//遷移先に画像の値を受け渡す
- (void)unwindToMenuViewController:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //パレット一列目　赤
    if ([segue.identifier isEqualToString:@"ToRed"]) {
        ViewController *ViewControllor = [segue destinationViewController];
        
        ViewControllor.picture = selectedImage1;
    
    //パレット二列目　青
    }else if([segue.identifier isEqualToString:@"ToBlue"]){
        ViewController *ViewControllor = [segue destinationViewController];
        
        ViewControllor.picture = selectedImage2;
    
    //パレット三列目　緑
    }else if([segue.identifier isEqualToString:@"ToGreen"]){
        ViewController *ViewControllor = [segue destinationViewController];
        
        ViewControllor.picture = selectedImage3;
        
    //パレット四列目　黄
    }else if([segue.identifier isEqualToString:@"ToYellow"]){
        ViewController *ViewControllor = [segue destinationViewController];
        
        ViewControllor.picture = selectedImage4;
    
    //パレット五列目　紫
    }else if([segue.identifier isEqualToString:@"ToPurple"]){
        ViewController *ViewControllor = [segue destinationViewController];
        
        ViewControllor.picture = selectedImage5;
    }


}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    selectedImage1 = saveImage1;
    [self performSegueWithIdentifier:@"ToRed" sender:self];
    selectedImage2 = saveImage2;
    [self performSegueWithIdentifier:@"ToBlue" sender:self];
    selectedImage3 = saveImage3;
    [self performSegueWithIdentifier:@"ToGreen" sender:self];
    selectedImage4 = saveImage4;
    [self performSegueWithIdentifier:@"ToYellow" sender:self];
    selectedImage5 = saveImage5;
    [self performSegueWithIdentifier:@"ToPurple" sender:self];
    
    //self.title = @"color palette";
    
}
 
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return 5;
//}

// セル数を指定
- (NSInteger)tableView:(UITableView *)aTableView
 numberOfRowsInSection:(NSInteger)section {

// 黒・赤・緑・青の4行とする
    return 5;
}

/*
// 一つ一つのセルデータを返す
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //static NSString *CellIdentifier = @"CellIdentifier";
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
 
    //"CellIdentifier"というkeyでCellデータを取得    
    //UITableViewCell *cell = [tableView cellForRowAtIndexPath:CellIdentifier];

    //Cellデータが無い場合、UITableViewCellを生成して、"cell"というkeyでキャッシュする
    //if (cell == nil) {
        //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefaultreuseIdentifier:CellIdentifier] autorelease];
    //    cell.accessoryType = UITableViewCellAccessoryNone;
    //}

// 行選択時にハイライト表示しないよう設定(見やすくするため)
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
}
*/

//セルが選択された時　indexpathをもとにViewControllerに表示される点の色を変えるようにしたい
- (void)tableView :(UITableView *)aTableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
// 線の色を「黒」にセット
if (indexPath.row == 0) {
/*
    UIViewController.red = 0.0;
    UIViewController.green = 0.0;
    UIViewController.blue = 0.0;
*/
}
/*
// 線の色を「赤」にセット
else if (indexPath.row == 1) {
    ViewController.red = 1.0;
    ViewController.green = 0.0;
    ViewController.blue = 0.0;
}
// 線の色を「緑」にセット
else if (indexPath.row == 2) {
    ViewController.red = 0.0;
    ViewController.green = 1.0;
    ViewController.blue = 0.0;
}
//線の色を「青」にセット
else if (indexPath.row == 3) {
    ViewController.red = 0.0;
    ViewController.green = 0.0;
    ViewController.blue = 1.0;
}

else if (indexPath.row == 4){
    ViewController.red = 1.0;
    ViewController.green = 0.0;
    ViewController.blue = 1.0;
}
 
else if (indexPath.row == 5){
    ViewController.red = 1.0;
    ViewController.green = 1.0;
    ViewController.blue = 1.0;
}
*/

}

    
// システムイベントがタッチイベントをキャンセルしたときに実行されるメソッド
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches count : %d (touchesCancelled:withEvent:)", [touches count]);
}

@end
