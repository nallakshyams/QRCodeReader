//
//  ViewController.m
//  BarcodeScanner
//


#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *scannedBarcodeTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // Reading the barcode (if any) from the clipboard and setting the text.
    self.scannedBarcodeTextView.text = [UIPasteboard generalPasteboard].string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
