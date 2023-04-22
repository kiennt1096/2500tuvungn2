import '../core.dart';

class ChapterService {
  List<Chapter> getChapterList() {
    return <Chapter>[
      Chapter(1, "人と人の関係", "Quan hệ giữa người với người",
          "assets/data/mocktestdata_1.json", [
        Section(
          nameSectionJP: "家族",
          nameSectionVN: "Gia đình",
          linkSection: "assets/data/11.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218642&authkey=AFMh4SMcxcxprUo',
        ),
        Section(
          nameSectionJP: "友達",
          nameSectionVN: "Bạn bè",
          linkSection: "assets/data/12.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218643&authkey=AIn7HcUWVAWD_JA',
        ),
        Section(
          nameSectionJP: "知人・付き合い",
          nameSectionVN: "Người quen - MQH giao tiếp",
          linkSection: "assets/data/13.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218644&authkey=AJGX4TwI12NthP8',
        ),
        Section(
          nameSectionJP: "恋人",
          nameSectionVN: "Người yêu",
          linkSection: "assets/data/14.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218645&authkey=ACBEnq2sMAZS_Xc',
        ),
        Section(
          nameSectionJP: "関係悪化",
          nameSectionVN: "MQH (trở nên) xấu đi",
          linkSection: "assets/data/15.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218646&authkey=AO1MjREHJXeQUgE',
        ),
      ]),
      Chapter(2, "暮らし", "Đời sống", "assets/data/mocktestdata_2.json", [
        Section(
          nameSectionJP: "住まい",
          nameSectionVN: "Nơi ở",
          linkSection: "assets/data/21.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218647&authkey=AGnpvMf7gWe9xfE',
        ),
        Section(
          nameSectionJP: "お金",
          nameSectionVN: "Tiền bạc",
          linkSection: "assets/data/22.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218648&authkey=AAX1E9JhgfM8Fuc',
        ),
        Section(
          nameSectionJP: "食事",
          nameSectionVN: "Bữa ăn",
          linkSection: "assets/data/23.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218650&authkey=AHY331t_WeyiGHw',
        ),
        Section(
          nameSectionJP: "買い物",
          nameSectionVN: "Mua sắm",
          linkSection: "assets/data/24.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218649&authkey=AJMY_p7npcE3WLc',
        ),
        Section(
          nameSectionJP: "時を表す言葉",
          nameSectionVN: "Từ thể hiện thời gian",
          linkSection: "assets/data/25.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218651&authkey=AOinxzYXazgZBnE',
        ),
      ]),
      Chapter(3, "家で", "Ở nhà", "assets/data/mocktestdata_3.json", [
        Section(
          nameSectionJP: "朝",
          nameSectionVN: "Buổi sáng",
          linkSection: "assets/data/31.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218653&authkey=ALKHzotuIMWInas',
        ),
        Section(
          nameSectionJP: "日課",
          nameSectionVN: "Công việc hàng ngày",
          linkSection: "assets/data/32.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218654&authkey=ANnBuWH6PrSsEt8',
        ),
        Section(
          nameSectionJP: "料理",
          nameSectionVN: "Nấu ăn",
          linkSection: "assets/data/33.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218652&authkey=AFnRreutZB4tksQ',
        ),
        Section(
          nameSectionJP: "家事",
          nameSectionVN: "Việc nhà",
          linkSection: "assets/data/34.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218655&authkey=ABAmBBuNCMHSLns',
        ),
        Section(
          nameSectionJP: "引越し",
          nameSectionVN: "Chuyển nhà",
          linkSection: "assets/data/35.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218656&authkey=AAemQ4xq44jSlbI',
        ),
      ]),
      Chapter(4, "町", "Phố xá", "assets/data/mocktestdata_4.json", [
        Section(
          nameSectionJP: "町",
          nameSectionVN: "Phố xá",
          linkSection: "assets/data/41.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218657&authkey=AIKArTJ0K9ZchU4',
        ),
        Section(
          nameSectionJP: "役所",
          nameSectionVN: "Uỷ ban (văn phòng nhà nước)",
          linkSection: "assets/data/42.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218658&authkey=AK2dmIWJgsN8Yvc',
        ),
        Section(
          nameSectionJP: "ふるさと",
          nameSectionVN: "Quê hương",
          linkSection: "assets/data/43.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218659&authkey=AAp4dm_luj-SEqA',
        ),
        Section(
          nameSectionJP: "交通",
          nameSectionVN: "Giao thông",
          linkSection: "assets/data/44.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218660&authkey=AMbIOKDEHFDwQkg',
        ),
        Section(
          nameSectionJP: "産業",
          nameSectionVN: "Các ngành công nghiệp",
          linkSection: "assets/data/45.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218661&authkey=AP74ebUJnLFWThQ',
        ),
      ]),
      Chapter(5, "学校で", "Tại trường học", "assets/data/mocktestdata_5.json", [
        Section(
          nameSectionJP: "学校",
          nameSectionVN: "Trường học",
          linkSection: "assets/data/51.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218662&authkey=APQci6qdXaRt7Xs',
        ),
        Section(
          nameSectionJP: "勉強",
          nameSectionVN: "Học tập",
          linkSection: "assets/data/52.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218663&authkey=AIEeruhtytNmgJI',
        ),
        Section(
          nameSectionJP: "試験",
          nameSectionVN: "Thi cử",
          linkSection: "assets/data/53.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218664&authkey=AM3rX3eLlONWUfk',
        ),
        Section(
          nameSectionJP: "大学・大学院",
          nameSectionVN: "Đại học - Cao học",
          linkSection: "assets/data/54.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218665&authkey=APggsbscMirN7UY',
        ),
        Section(
          nameSectionJP: "パソコン（スマホ）",
          nameSectionVN: "Máy tính (Điện thoại thông minh)",
          linkSection: "assets/data/55.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218666&authkey=ALYjWvWBaCRp_ws',
        ),
      ]),
      Chapter(6, "会社で", "Tại công ty", "assets/data/mocktestdata_6.json", [
        Section(
          nameSectionJP: "就職",
          nameSectionVN: "Việc làm",
          linkSection: "assets/data/61.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218667&authkey=AM3gkuhagMdvlfw',
        ),
        Section(
          nameSectionJP: "会社",
          nameSectionVN: "Công ty",
          linkSection: "assets/data/62.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218668&authkey=AFpCNpcBRJe-rbA',
        ),
        Section(
          nameSectionJP: "仕事",
          nameSectionVN: "Công việc",
          linkSection: "assets/data/63.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218669&authkey=AKv4Prq-QCsSQG4',
        ),
        Section(
          nameSectionJP: "上下関係",
          nameSectionVN: "Quan hệ trên dưới",
          linkSection: "assets/data/64.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218670&authkey=AKGc2PZaGJiq9EA',
        ),
        Section(
          nameSectionJP: "退職・転職",
          nameSectionVN: "Nghỉ việc - Chuyển việc",
          linkSection: "assets/data/65.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218671&authkey=ANMJoIVSPHs2lZY',
        ),
      ]),
      Chapter(7, "お気に入り", "Yêu thích", "assets/data/mocktestdata_7.json", [
        Section(
          nameSectionJP: "競技",
          nameSectionVN: "Thi đấu",
          linkSection: "assets/data/71.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218672&authkey=AHxisWzu-H9vmME',
        ),
        Section(
          nameSectionJP: "ファッション",
          nameSectionVN: "Thời trang",
          linkSection: "assets/data/72.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218673&authkey=AO82TteljWicxPg',
        ),
        Section(
          nameSectionJP: "インターテインメント",
          nameSectionVN: "Giải trí",
          linkSection: "assets/data/73.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218674&authkey=ACSyO3c9zQpowQU',
        ),
        Section(
          nameSectionJP: "本",
          nameSectionVN: "Sách",
          linkSection: "assets/data/74.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218675&authkey=AHpWRWC_nrnwjZ0',
        ),
        Section(
          nameSectionJP: "趣味・好み",
          nameSectionVN: "Sở thích - Ý thích",
          linkSection: "assets/data/75.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218676&authkey=AKQ7mK9BX8HDyxs',
        ),
      ]),
      Chapter(8, "自然・レジャー", "Thiên nhiên - Thư giãn",
          "assets/data/mocktestdata_8.json", [
        Section(
          nameSectionJP: "気候と天気",
          nameSectionVN: "Khí hậu và thời tiết",
          linkSection: "assets/data/81.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218677&authkey=AAGQ3_1WpfrXjJg',
        ),
        Section(
          nameSectionJP: "台風・地震",
          nameSectionVN: "Bão - Động đất",
          linkSection: "assets/data/82.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218678&authkey=AF6wLffXCD7F6Vg',
        ),
        Section(
          nameSectionJP: "自然",
          nameSectionVN: "Thiên nhiên",
          linkSection: "assets/data/83.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218679&authkey=ADNR_gR2gEKqARg',
        ),
        Section(
          nameSectionJP: "休日",
          nameSectionVN: "Ngày nghỉ",
          linkSection: "assets/data/84.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218680&authkey=AIKCrZO9AygW0Ck',
        ),
        Section(
          nameSectionJP: "旅行",
          nameSectionVN: "Du lịch",
          linkSection: "assets/data/85.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218681&authkey=AIMNt2eXMf2-SqE',
        ),
      ]),
      Chapter(9, "健康のために", "Vì sức khoẻ", "assets/data/mocktestdata_9.json", [
        Section(
          nameSectionJP: "体と健康",
          nameSectionVN: "Cơ thể và sức khoẻ",
          linkSection: "assets/data/91.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218682&authkey=AEKamPtosD3i5EE',
        ),
        Section(
          nameSectionJP: "病気になる前に",
          nameSectionVN: "Trước khi đổ bệnh",
          linkSection: "assets/data/92.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218685&authkey=AKjL06EAzd62JzI',
        ),
        Section(
          nameSectionJP: "症状",
          nameSectionVN: "Triệu chứng bệnh",
          linkSection: "assets/data/93.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218683&authkey=AP7BgUWIOdpwyoM',
        ),
        Section(
          nameSectionJP: "病気と治療",
          nameSectionVN: "Bệnh và điều trị",
          linkSection: "assets/data/94.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218684&authkey=AEP1sEaThz_pRxw',
        ),
        Section(
          nameSectionJP: "美容",
          nameSectionVN: "Làm đẹp",
          linkSection: "assets/data/95.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218686&authkey=AMSe9Wlr140xmfg',
        ),
      ]),
      Chapter(10, "ニュース", "Tin tức", "assets/data/mocktestdata_10.json", [
        Section(
          nameSectionJP: "トラブル・事件",
          nameSectionVN: "Rắc rối - Sự cố",
          linkSection: "assets/data/101.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218687&authkey=ABlIrawPvxI9Q-0',
        ),
        Section(
          nameSectionJP: "事故",
          nameSectionVN: "Tai nạn",
          linkSection: "assets/data/102.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218688&authkey=ABC1VbDa9yrVtF0',
        ),
        Section(
          nameSectionJP: "政治",
          nameSectionVN: "Chính trị",
          linkSection: "assets/data/103.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218694&authkey=AN9W_-kmzya7xxA',
        ),
        Section(
          nameSectionJP: "社会",
          nameSectionVN: "Xã hội",
          linkSection: "assets/data/104.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218689&authkey=AAp3SHbPxlKFFK8',
        ),
        Section(
          nameSectionJP: "世界・環境",
          nameSectionVN: "Thế giới - Môi trường",
          linkSection: "assets/data/105.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218690&authkey=ACwkapnUi2rmdME',
        ),
      ]),
      Chapter(11, "様子・イメージ", "Trạng thái - Hình ảnh",
          "assets/data/mocktestdata_11.json", [
        Section(
          nameSectionJP: "性格",
          nameSectionVN: "Tính cách",
          linkSection: "assets/data/111.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218691&authkey=ACa3j7b_ML6x42k',
        ),
        Section(
          nameSectionJP: "いい気分",
          nameSectionVN: "Cảm giác thoải mái",
          linkSection: "assets/data/112.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218692&authkey=AP-MTp2oEKJOwa0',
        ),
        Section(
          nameSectionJP: "ブルーな気分",
          nameSectionVN: "Cảm giác buồn bã",
          linkSection: "assets/data/113.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218693&authkey=AGOzlJVqC4ToIKE',
        ),
        Section(
          nameSectionJP: "プラスのイメージ",
          nameSectionVN: "Hình ảnh tích cực",
          linkSection: "assets/data/114.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218699&authkey=AOhZxfehddytp6Q',
        ),
        Section(
          nameSectionJP: "マイナスのイメージ",
          nameSectionVN: "Hình ảnh tiêu cực",
          linkSection: "assets/data/115.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218695&authkey=ADh9ezfNQ245hyU',
        ),
      ]),
      Chapter(12, "間違えやすい表現", "Cách nói dễ nhầm lẫn", "", [
        Section(
          nameSectionJP: "慣用句：気・心・胸",
          nameSectionVN: "Thành ngữ: Tính khí - Tâm hồn - Tâm trạng",
          linkSection: "assets/data/121.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218696&authkey=AIIm7b5Ki7Y6wuQ',
        ),
        Section(
          nameSectionJP: "慣用句：頭・顔",
          nameSectionVN: "Thành ngữ: Đầu - Mặt",
          linkSection: "assets/data/122.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218697&authkey=ALlUuPxHAtH2uWQ',
        ),
        Section(
          nameSectionJP: "慣用句：体",
          nameSectionVN: "Thành ngữ: Cơ thể",
          linkSection: "assets/data/123.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218698&authkey=AB3TQUA0eeAxwqw',
        ),
        Section(
          nameSectionJP: "副詞",
          nameSectionVN: "Phó từ",
          linkSection: "assets/data/124.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218700&authkey=AFmPn6CUb4NHeBE',
        ),
        Section(
          nameSectionJP: "接続表現",
          nameSectionVN: "Cách nói nối",
          linkSection: "assets/data/125.json",
          linkAudio:
              'https://onedrive.live.com/download?cid=D2D7FDF5F616D542&resid=D2D7FDF5F616D542%218701&authkey=AGuW4NUY6drHz5c',
        ),
      ]),
    ];
  }
}
