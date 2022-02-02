package Beans;

import java.util.ArrayList;

public class ProductsDataSample {
	static 	ArrayList<Product> arr=new ArrayList<Product>();
//	static {
//		
//		
//		Product p1 = new Product("pr01","ak",
//				"Áo Khoác Dù TMS LOGO MIDSIDE Nam Nữ Ulzzang Unisex Form Rộng Bomber 7zia Jacket - Sayhey Clothing",
//				"https://cf.shopee.vn/file/e70f276ef5429a96b4216aaeffacfcdd_tn", "Viet Nam", 178000, 56, 4,225, 12000,1000,new String[]{
//						"https://cf.shopee.vn/file/97fe4e6265c20c68ccc03878b7162b76_tn",
//						"https://cf.shopee.vn/file/30eb61e4159a8d042d65ee808f60658b_tn",
//						"https://cf.shopee.vn/file/4834c0ee73879b0cd1471b6e21c43e4a_tn",
//						"https://cf.shopee.vn/file/371788c650cffc5b3b99820e48f773e5_tn",
//						"https://cf.shopee.vn/file/9916e2896b212938bffbf709e5776257_tn",
//						"https://cf.shopee.vn/file/b53d23572ef644532c64bce6bf78d514_tn",
//						},new String[] {
//						"M(55-45KG)",
//						"L(65-55kg)",
//						"xl(75-65k)"},new String[] {
//								"màu đen",
//								"màu xám",
//						});
//		Product p2 = new Product("pr02","ak",
//				"Áo KHOÁC NÚT Ulzzang Unisex 1hitshop",
//				"https://cf.shopee.vn/file/f18d1d74863a66fc5f74a1b552e6ece9_tn", "Viet Nam", 280000, 33, 4,300, 11000,359,new String[]{
//						"https://cf.shopee.vn/file/f7256dcde48cbfb162ce7a62b5b7ecee_tn",
//						"https://cf.shopee.vn/file/0e9fea0c2eacee83e26c4d576df9a271_tn",
//						"https://cf.shopee.vn/file/d3922bede0dc7066b966562bc55b76dd_tn",
//						"https://cf.shopee.vn/file/ce1f715a23e44384c3552f20aacd86e8_tn",
//						"https://cf.shopee.vn/file/85750760d23c489b0e4776da1bc2f7ae_tn",
//						"https://cf.shopee.vn/file/b350789c883f997753f17969e544a1a4_tn",
//						},new String[] {
//						"M(55-45KG)",
//						"L(65-55kg)",
//						"xl(75-65k)"},new String[] {
//								"màu đen",
//								"màu xám",
//						});
//		Product p3 = new Product("pr03","gNu",
//				" Giày thể thao nữ kiểu dáng học sinh ROS",
//				"https://cf.shopee.vn/file/3adf97f6ed710f4ee91e8670de6a126e_tn", "Trung Quốc", 180000, 42, 3,421, 2103,612,new String[]{
//						"https://cf.shopee.vn/file/ffc53e52ec659ed9d84860199f007607_tn",
//						"https://cf.shopee.vn/file/8b08ec41bb70cc9f42eafda49482f475_tn",
//						"https://cf.shopee.vn/file/07fa890d7b4bf039b86e44691b10a0cf_tn",
//						"https://cf.shopee.vn/file/0d01fb9bdd30679cd98a0608962481f8_tn",
//						"https://cf.shopee.vn/file/194d3cb7afbcf854c00e617afe9054fa_tn",
//						"https://cf.shopee.vn/file/c9326943e7317548b75b74cf6c8db452_tn",
//						},new String[] {
//						"36",
//						"37",
//						"38",
//						"39",
//						"40"},new String[] {
//								"Trắng",
//								"hồng",
//								"Xanh"
//						});
//		Product p4 = new Product("pr04","dep",
//				" Dép lê nam nữ xốp lỗ đi trong nhà tắm văn phòng siêu bền, cho siêu nhẹ bé (nhẹ hơn dép nhựa), siêu rẻ, chống trơn trượt",
//				"https://cf.shopee.vn/file/cc27deac33d70eed61041607f73bf573_tn", "Thái Lan", 36000, 47, 4,312, 1231,753,new String[]{
//						"https://cf.shopee.vn/file/7780ae5806f706c32be0b72260db9f1b_tn",
//						"https://cf.shopee.vn/file/7b6e27ca430808bca423b612a83ed23b_tn",
//						"https://cf.shopee.vn/file/5bae729960a0529d29f1e335af3569ad_tn",
//						"https://cf.shopee.vn/file/ae0f15106d9fc000400758b280b2a874_tn",
//						"https://cf.shopee.vn/file/6068d538a049ec5e1852d1b4875a1665_tn",
//						"https://cf.shopee.vn/file/097ae368c21b45b1e88928519719a003_tn",
//						},new String[] {
//						"36/37",
//						"38/39",
//						"39/40",
//						"40/41",
//						"42/43"},new String[] {
//								"đen",
//								"hồng nhạt",
//								"Xanh dương",
//								"Xanh than"
//						});
//		Product p5 = new Product("pr05","dep",
//				" Dép lê nam nữ xốp lỗ đi trong nhà tắm văn phòng siêu bền, cho siêu nhẹ bé (nhẹ hơn dép nhựa), siêu rẻ, chống trơn trượt",
//				"https://cf.shopee.vn/file/abe554eb94231fd9ca4885610080c619_tn", "Trung Quốc", 250000, 50, 5,461, 1321,431,new String[]{
//						"https://cf.shopee.vn/file/6020c6028f115371127a0e7bfaaaf520_tn",
//						"https://cf.shopee.vn/file/6741f0335ea34621afb6d6f36c3d1e01_tn",
//						"https://cf.shopee.vn/file/b05d78237aa25b1762af0626dff23e50_tn",
//						"https://cf.shopee.vn/file/5690186430f5b9b4356cfbe81991ff9a_tn",
//						"https://cf.shopee.vn/file/e4e0fcecebd35a1b42d7941f242805f8_tn",
//						"https://cf.shopee.vn/file/fe14cd0a7f9f05cb80e372ce2cf6b5cc_tn",
//						},new String[] {
//						"36/37",
//						"38/39",
//						"39/40",
//						"40/41",
//						"42/43"},new String[] {
//								"Gray",
//								"Green",
//								"Yellow",
//								"Black"
//						});
//		Product p6 = new Product("pr06","as",
//				" Áo sơ mi nữ trắng đi học tay dài bo nhúm cổ bẻ basic form rộng vừa - Sơ mi đi học sinh nữ trắng tay dài",
//				"https://cf.shopee.vn/file/b4f491bd72d9b7719f67acb23fe3b847_tn", "Việt Nam", 100000, 35, 4,261, 721,341,new String[]{
//						"https://cf.shopee.vn/file/e90fe5c7dcb08ae90a7599bd718819b7_tn",
//						"https://cf.shopee.vn/file/c1ec722226c19945b5bb1c8ca646147a_tn",
//						"https://cf.shopee.vn/file/a24126c6648ea288da50dba234312565_tn",
//						"https://cf.shopee.vn/file/3a7fd4079aa1de786d77b4c5c4bb6038_tn",
//						"https://cf.shopee.vn/file/107868e1440db2a7fa6d2c675f22ef37_tn",
//						"https://cf.shopee.vn/file/3cf49d98343aff4c38f0cc8f5bb66fb1_tn",
//						},new String[] {
//						"M",
//						"L",
//						"XL",
//						},new String[] {
//								"áo cúc thường",
//								"áo cúc ngọc",
//								
//						});
////		
//		arr.add(p1);
//		arr.add(p2);
//		arr.add(p3);
//		arr.add(p4);
//		arr.add(p5);
//		arr.add(p6);
////		arr.add(p7);
////		arr.add(p8);
////		arr.add(p9);
////		arr.add(p10);
////		arr.add(p11);
////		arr.add(p12);
////		arr.add(p13);
////		arr.add(p13);
//		
//	}
//	
	public static ArrayList<Product> getAllProduct(){
		return arr;
	}
}
