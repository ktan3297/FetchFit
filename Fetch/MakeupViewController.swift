//
//  MakeupViewController.swift
//  Fetch
//
//  Created by APPLE on 6/14/17.
//  Copyright © 2017 Kristy Tan. All rights reserved.
//

import UIKit

class MakeupViewController: UIViewController{

    @IBOutlet weak var face: UILabel!
    @IBOutlet weak var concealerLabel: UILabel!
    @IBOutlet weak var shadowLabel: UILabel!
    @IBOutlet weak var linerLabel: UILabel!
    @IBOutlet weak var mascaraLabel: UILabel!
    @IBOutlet weak var blushLabel: UILabel!
    @IBOutlet weak var lipstickLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    var button1url = String()
    var button2url = String()
    var button3url = String()
    var button4url = String()
    var button5url = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chooseMakeupType()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func chooseMakeupType()
    {
        if(QuizViewController.profile.style == "Athletic")
        {
            face.text = "None or Mineral Makeup"
            concealerLabel.text = "Waterproof Concealer"
            shadowLabel.text = "Optional"
            linerLabel.text = "Optional"
            mascaraLabel.text = "Waterproof Mascara"
            blushLabel.text = "Optional"
            lipstickLabel.text = "Tinted LipBalm"
            button1.setTitle("Laura Mercier Tinted Moisturizer", for:UIControlState.normal)
            button1url = "http://www.lauramercier.com/tinted-moisturizer/tinted-moisturizer-12609261.html"
            button2.setTitle("Burt's Bees Tinted Lip Balm", for:[])
            button2url = "http://www.burtsbees.com/product/tinted-lip-balm/VM-792850894624.html"
            button3.setTitle("Maybelline Waterproof Mascara", for:[])
            button3url = "https://www.target.com/p/maybelline-174-great-lash-174-waterproof-mascara-111-very-black-0-43-fl-oz/-/A-12053683?ref=tgt_adv_XS000000&AFID=google_pla_df&CPNG=PLA_Health+Beauty+Shopping&adgroup=SC_Health+Beauty&LID=700000001170770pgs&network=g&device=c&location=9004405&gclid=CjwKEAjwvYPKBRCYr5GLgNCJ_jsSJABqwfw7fe9D_mxGKYNv_pNdE5OtPjbDqxkeYq3Bv4UEugiKRBoCg6_w_wcB&gclsrc=aw.ds"
            button4.setTitle("Stila Waterproof Eyeliner", for:[])
            button4url = "http://www.sephora.com/stay-all-day-waterproof-liquid-eye-liner-P253818?skuId=1221084"
            button5.setTitle("M.A.C Eyeshadow", for:[])
            button5url = "http://www.maccosmetics.com/product/13840/1573/Products/Makeup/Eyes/Shadow/Pro-Longwear-Paint-Pot#/shade/Rubenesque"
            
        }
        else if(QuizViewController.profile.style == "Casual")
        {
            face.text = "BB Cream"
            concealerLabel.text = "Light Coverage Concealer"
            shadowLabel.text = "Basic Palette"
            linerLabel.text = "Pencil Liner"
            mascaraLabel.text = "Lengthening Mascara"
            blushLabel.text = "Light Blush"
            lipstickLabel.text = "Lip Stick or Tint"
            button1.setTitle("Maybelline BB Cream", for:[])
            button1url = "https://www.target.com/p/maybelline-174-dream-pure-153-bb-cream-110-light-medium/-/A-15314685?sid=1150S&ref=tgt_adv_XS000000&AFID=google_pla_df&CPNG=PLA_Health+Beauty+Shopping_Brand&adgroup=SC_Health+Beauty&LID=700000001170770pgs&network=g&device=c&location=9004405&gclid=CjwKEAjwvYPKBRCYr5GLgNCJ_jsSJABqwfw79wMtuICvjZr2jJBZ6LUvkwd9DWwgVFOUAAGfoq96XBoCxf_w_wcB&gclsrc=aw.ds"
            button2.setTitle("Revlon Concealer", for:[])
            button2url = "https://www.target.com/p/revlon-colorstay-concealer/-/A-14305561?source=ir&utm_source=ir&clkid=60f6a86bN1614adb8770857021e5a5bcc&lnm=201333&afid=rewardStyle&ref=tgt_adv_xasd0002"
            button3.setTitle("E.L.F Blush and Bronzer Duo", for:[])
            button3url = "https://www.amazon.com/dp/B009FNGX3Q/?smid=ATVPDKIKX0DER&tag=rewardstyle-20&linkCode=df0&creative=395093&creativeASIN=B009FNGX3Q&tag=rewardstyle-20&ascsubtag=hG08MBRuc8-~6WdA4--1626777707"
            button4.setTitle("Urban Decay Naked 2 Palette", for:[])
            button4url = "https://api.shopstyle.com/action/apiVisitRetailer?id=316567666&pid=uid9025-23626345-53"
            button5.setTitle("NARS Nude Lipstick", for:[])
            button5url = "http://shop.nordstrom.com/s/nars-audacious-lipstick/3849706?cm_mmc=Linkshare-_-partner-_-10-_-1&siteId=.2nGiS3mv0Y-QulH1Ij6CSzXF7ddQfsbmw"
        }
        else if(QuizViewController.profile.style == "Elegant")
        {
            face.text = "Light Coverage Foundation"
            concealerLabel.text = "Light Coverage Concealer"
            shadowLabel.text = "Basic Palette"
            linerLabel.text = "Pencil Liner"
            mascaraLabel.text = "Lengthening Mascara"
            blushLabel.text = "Light Blush"
            lipstickLabel.text = "Lip Stick"
            button1.setTitle("Urban Decay Foundation", for:[])
            button1url = "http://www.urbandecay.com/naked-skin-liquid-makeup-from-urban-decay/334.html?cgid=14_301#start=4&cgid=14_301"
            button2.setTitle("NYX Concealer", for:[])
            button2url = "http://www.ulta.com/hi-definition-photo-concealer-wand?productId=xlsImpprod3460285&sku=2215593&cmpid=PS_Non!google!Product_Listing_Ads&cagpspn=pla&CATCI=aud-322103083354:pla-304330478630&CAAGID=42273894909&CAWELAID=772015396&catargetid=330000200001162961&cadevice=c&gclid=CjwKEAjwvYPKBRCYr5GLgNCJ_jsSJABqwfw7I2Q8xoljTG0l-ScMyPVHqsevlBmDfDmJ4yc_-gJo6BoCTcDw_wcB"
            button3.setTitle("Becca Primer", for:[])
            button3url = "http://www.sephora.com/first-light-priming-filter-P416055?SKUID=1901859&om_mmc=aff-linkshare-redirect-ty8NUtOSnl0&c3ch=Linkshare&c3nid=ty8NUtOSnl0&affid=ty8NUtOSnl0-yqudFRxYiwj3nMj8.uY1LQ&ranEAID=ty8NUtOSnl0&ranMID=2417&ranSiteID=ty8NUtOSnl0-yqudFRxYiwj3nMj8.uY1LQ&ranLinkID=15-1901859&browserdefault=true"
            button4.setTitle("Lancome Mascara", for:[])
            button4url = "http://shop.nordstrom.com/s/lancome-definicils-lengthening-and-defining-mascara/2786551?origin=category-personalizedsort"
            button5.setTitle("Charlotte Tilbury Lipstick", for:[])
            button5url = "http://shop.nordstrom.com/s/charlotte-tilbury-k-i-s-s-i-n-g-lipstick/3849027?origin=category-personalizedsort"
        }
        else if(QuizViewController.profile.style == "Sophisticated")
        {
            face.text = "Medium Coverage Foundation"
            concealerLabel.text = "Medium Coverage Concealer"
            shadowLabel.text = "Basic Palette"
            linerLabel.text = "Pen or Gel Liner"
            mascaraLabel.text = "Volumizing Mascara"
            blushLabel.text = "Light Blush"
            lipstickLabel.text = "Lip Stick"
            button1.setTitle("Giorgio Armani Foundation", for:[])
            button1url = "http://shop.nordstrom.com/s/giorgio-armani-luminous-silk-foundation/2853110?origin=category-personalizedsort"
            button2.setTitle("Tom Ford Lipstick", for: [])
            button2url = "http://shop.nordstrom.com/s/tom-ford-lip-color/3221871?origin=category-personalizedsort"
            button3.setTitle("Chanel Eyeshadow", for:[])
            button3url = "https://www.chanel.com/en_US/fragrance-beauty/makeup-eyeshadow-les-4-ombres-138006/sku/138008?WT.srch=1&WT.mc_id=FB_PLAMakeup424123889_en_US_&WT.mc_t=sea&gclid=CjwKEAjwvYPKBRCYr5GLgNCJ_jsSJABqwfw7iTDjA3u1MFoUkuOYyGyWXiY7ON_DOlsrSLCPF4NTdhoC7Gvw_wcB"
            button4.setTitle("Burberry Eyeliner", for: [])
            button4url = "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiopeTxr77UAhVHVw0KHejBC8UYABAMGgJxYg&ohost=www.google.com&cid=CAESEeD2zHfr7ombEBNlb7fJDkqA&sig=AOD64_1YAaF4RpmcumDCs_ZyFMtD4VNM3w&ctype=5&q=&ved=0ahUKEwi2_93xr77UAhXLPT4KHY13C98QvhcISw&adurl="
            button5.setTitle("Guerlain Bronzer", for: [])
            button5url = "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=7&cad=rja&uact=8&ved=0ahUKEwj_1PqFsL7UAhWMHT4KHVnlD1UQFgj_ATAG&url=http%3A%2F%2Fshop.nordstrom.com%2Fs%2Fguerlain-terracotta-light-sheer-bronzing-powder%2F3298594&usg=AFQjCNEGH74dHbjL6aZ6UcjCLI5JaleDJw&sig2=KvtyUDph0QIrVBdzb7Xicw"
        }
    }

    @IBAction func goToLink1(_ sender: Any) {
        UIApplication.shared.open(URL(string: button1url)!)
    }

    @IBAction func goLink2(_ sender: Any) {
        UIApplication.shared.open(URL(string: button2url)!)
    }
  
    @IBAction func goLink3(_ sender: Any) {
        UIApplication.shared.open(URL(string: button3url)!)
    }
    
    @IBAction func goLink4(_ sender: Any) {
        UIApplication.shared.open(URL(string: button4url)!)
    }
    
    @IBAction func goLink5(_ sender: Any) {
        UIApplication.shared.open(URL(string: button5url)!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
