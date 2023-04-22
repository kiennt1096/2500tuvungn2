import '../core.dart';

class SplashContentService {
  List<SplashContent> getSplashContentList() {
    return <SplashContent>[
      SplashContent("assets/icons/splash1.svg", "HỌC & NGHE",
          "Vừa học vừa nghe từ vựng giúp bạn nhớ nhanh hơn và rèn luyện phát âm một cách chính xác nhất."),
      SplashContent("assets/icons/splash2.svg", "KIỂM TRA LẠI TỪ VỰNG",
          "Nhanh chóng kiểm tra lại từ vựng đã học ngay mỗi cuối bài, giúp bạn chủ động hơn việc học của mình."),
      SplashContent("assets/icons/splash3.svg", "MIỄN PHÍ HOÀN TOÀN",
          "Đúng vậy! Ứng dụng hoàn toàn miễn phí và không có bất kỳ quảng cáo nào. Thoải mái tập trung học."),
    ];
  }
}
