# Lichee Zero

> Nguồn: Sipeed Wiki — trang Lichee Zero, lưu offline bằng SingleFile ngày 2026-07-06.  
> Bản này đã được chuyển từ HTML sang Markdown, ảnh được tách ra thư mục `assets/`, và nội dung được dịch sang tiếng Việt.

## 1. Tổng quan Lichee Zero

Lichee Zero là một board phát triển mini dựa trên SoC hiệu năng cao **Allwinner V3s** với nhân **ARM Cortex-A7**. Board có thiết kế nhỏ gọn, đưa hầu hết tài nguyên của chip ra ngoài, tích hợp sẵn USB, Flash, khe thẻ TF/microSD, đầu nối LCD 40P và các chân IO để lập trình viên có thể mở rộng. Board phù hợp cho người mới học Linux embedded hoặc dùng trong phát triển sản phẩm thương mại.

Bo mạch lõi:

![Bo mạch lõi Lichee Zero - mặt trước](assets/image_01.png)

![Bo mạch lõi Lichee Zero - mặt sau](assets/image_02.png)

Bo mạch lõi + bo mạch mở rộng:

![Lichee Zero core board gắn trên dock - mặt trước](assets/image_03.png)

![Lichee Zero core board gắn trên dock - mặt sau](assets/image_04.png)

## 2. Thông số

### 2.1. Thông số V3s

Khối chức năng của V3s:

![Sơ đồ khối V3s](assets/image_05.png)

| Hạng mục | Thông số |
| --- | --- |
| CPU | ARM Cortex™-A7, tối đa 1.2 GHz |
| Bộ nhớ | Tích hợp 64 MB DRAM |
| Audio Codec | Tích hợp audio codec 92 dB<br>Hỗ trợ 2 kênh ADC và 2 kênh DAC<br>Hỗ trợ ngõ ra bias micro analog nhiễu thấp<br>Hỗ trợ 1 ngõ vào micro và 1 ngõ ra stereo microphone |
| Video | Hỗ trợ mã hóa H.264 1080p@40fps hoặc 1080p@30fps + VGA@30fps<br>Hỗ trợ giải mã H.264 1080p@30fps và MJPEG 1080p@30fps |
| Video Input/Output | Hỗ trợ CSI song song 8/10/12-bit và MIPI CSI2 4 lane<br>Hỗ trợ cảm biến CMOS tối đa 5M<br>Hỗ trợ LCD RGB/i80/LVDS, độ phân giải tối đa 1024x768 |
| Kết nối | 3 bộ điều khiển SD card<br>LRADC / SPI / TWI / UART / PWM<br>USB, EMAC + PHY |
| ISP | Tích hợp ISP tối đa 5M pixel<br>Hỗ trợ 2 kênh output riêng cho hiển thị và mã hóa<br>Hỗ trợ nhiều định dạng input/output<br>Hỗ trợ AE / AF / AWB<br>Hỗ trợ chỉnh saturation, khử nhiễu, sửa điểm ảnh lỗi và sửa méo ảnh |

### 2.2. Thông số bo mạch lõi Lichee Zero

| Hạng mục | Thông số |
| --- | --- |
| CPU | V3s |
| Bộ nhớ | 64 MB DDR2 |
| Lưu trữ | Chừa sẵn pad hàn SOP8 cho SPI Flash<br>Tích hợp khe thẻ TF/microSD |
| Hiển thị | Đầu nối FPC LCD RGB 40P thông dụng<br>Có thể cắm trực tiếp các màn hình 40P 4.3/5/7 inch thông dụng, có mạch điều khiển đèn nền onboard<br>Có thể dùng board chuyển để cắm màn hình 50P 7/9 inch<br>Hỗ trợ các độ phân giải thông dụng như 272x480, 480x800, 1024x600<br>Tích hợp chip cảm ứng điện trở, hỗ trợ màn hình cảm ứng điện trở<br>Tích hợp LED RGB |
| Giao tiếp | SDIO x2, có thể dùng với module SDIO WiFi + BT tương ứng<br>SPI x1<br>I2C x2<br>UART x3<br>Ethernet 100M x1, bao gồm EPHY<br>USB OTG x1<br>MIPI CSI x1 |
| Giao tiếp khác | PWM x2<br>LRADC x1<br>Speaker x2 + Mic x1 |
| Đặc tính điện | Cấp nguồn 5V qua Micro USB<br>Cấp nguồn 3.3V~5V qua chân cắm 2.54 mm<br>Cấp nguồn qua lỗ tem/bán nguyệt 1.27 mm |

![Pinout / mặt trước bo mạch lõi Lichee Zero](assets/image_06.png)

![Pinout / mặt sau bo mạch lõi Lichee Zero](assets/image_07.png)

### 2.3. Bo mạch mở rộng Lichee Zero

| Hạng mục | Thông số |
| --- | --- |
| CPU | V3s |
| Bộ nhớ | 64 MB DDR2 |
| Lưu trữ | Chừa sẵn pad hàn SOP8 cho SPI Flash<br>Tích hợp khe thẻ TF/microSD |
| Hiển thị | Đầu nối FPC LCD RGB 40P thông dụng<br>Có thể cắm trực tiếp các màn hình 40P 4.3/5/7 inch thông dụng, có mạch điều khiển đèn nền onboard<br>Có thể dùng board chuyển để cắm màn hình 50P 7/9 inch<br>Hỗ trợ các độ phân giải thông dụng như 272x480, 480x800, 1024x600<br>Tích hợp chip cảm ứng điện trở, hỗ trợ màn hình cảm ứng điện trở<br>Tích hợp LED RGB |
| Giao tiếp | SDIO x2, có thể dùng với module SDIO WiFi + BT tương ứng<br>SPI x1<br>I2C x2<br>UART x3<br>Ethernet 100M x1, bao gồm EPHY<br>USB OTG x1<br>MIPI CSI x1 |
| Giao tiếp khác | PWM x2<br>LRADC x1<br>Speaker x2 + Mic x1 |
| Ngoại vi onboard | Cổng Ethernet<br>Cổng tai nghe 3.5 mm<br>Micro electret<br>Khe thẻ TF/microSD bổ sung<br>4 nút bấm<br>Giao tiếp MIPI |
| Đặc tính điện | Cấp nguồn 5V qua Micro USB<br>Cấp nguồn 3.3V~5V qua chân cắm 2.54 mm<br>Cấp nguồn qua lỗ tem/bán nguyệt 1.27 mm |

![Pinout / bố trí chân trên Lichee Zero Dock](assets/image_08.png)

## 3. Hướng dẫn sử dụng

- [Lichee Zero — tài liệu hướng dẫn trên Sipeed Wiki](https://wiki.sipeed.com/soft/Lichee/zh/Zero-Doc/Start/intro_cn.md)

## 4. Hỗ trợ kỹ thuật sản phẩm

Board phát triển Lichee Zero có thể đáp ứng nhiều nhu cầu khác nhau trong nhiều tình huống ứng dụng. Board đã được sử dụng rộng rãi trong lĩnh vực AIoT; chất lượng và hiệu năng có uy tín tốt trong ngành. Đội ngũ kỹ thuật chuyên nghiệp có thể hỗ trợ khách hàng xử lý nhiều vấn đề về thiết kế phần cứng và chức năng phần mềm.

Để được hỗ trợ kỹ thuật chuyên sâu hơn và nhận thêm tài liệu chi tiết, liên hệ bộ phận kinh doanh/hỗ trợ qua email: [support@sipeed.com](mailto:support@sipeed.com).
