<div align="center">
  <img src="https://raw.githubusercontent.com/vinceliuice/MacTahoe-kde/main/preview.png" alt="macOS Tahoe on Fedora KDE" width="800"/>
  <h1>Fedora KDE to macOS Tahoe Transformation Script</h1>
  <p>
    Một kịch bản tự động hóa giúp biến đổi giao diện Fedora KDE Plasma của bạn thành một phiên bản macOS Tahoe tuyệt đẹp chỉ bằng một lệnh duy nhất.
  </p>
  
  <p>
    <a href="https://github.com/hkg2710/Fedora-KDE-Plasma-to-macOS-Tahoe-Transformation-Script/blob/main/LICENSE">
      <img src="https://img.shields.io/github/license/hkg2710/Fedora-KDE-Plasma-to-macOS-Tahoe-Transformation-Script?style=for-the-badge" alt="license">
    </a>
    <img src="https://img.shields.io/github/last-commit/hkg2710/Fedora-KDE-Plasma-to-macOS-Tahoe-Transformation-Script?style=for-the-badge&logo=github&color=blue" alt="last-commit">
    <img src="https://img.shields.io/badge/Shell_Script-100%25-yellow?style=for-the-badge&logo=gnubash" alt="shell-script-badge">
    <img src="https://img.shields.io/badge/Fedora-40+-blue?style=for-the-badge&logo=fedora" alt="fedora-version">
    <img src="https://img.shields.io/badge/KDE_Plasma-6-blueviolet?style=for-the-badge&logo=kde" alt="kde-version">
  </p>
</div>

## 🌟 Giới Thiệu Dự Án

Việc tùy chỉnh giao diện Linux để trông giống macOS thường là một quá trình thủ công, tốn thời gian và dễ xảy ra lỗi. Kịch bản này được tạo ra để giải quyết vấn đề đó bằng cách tự động hóa toàn bộ quy trình, giúp bạn có được một desktop Fedora KDE mang phong cách macOS Tahoe hiện đại, đồng bộ và chuyên nghiệp mà không cần phải lo lắng về các bước cài đặt phức tạp.

## ✨ Các Tính Năng Chính

Kịch bản này sẽ tự động thực hiện các tác vụ sau:

-   ✅ **Chuẩn bị hệ thống:** Cập nhật gói và cài đặt tất cả các công cụ cần thiết (`git`, `cmake`, `kvantum`, v.v.).
-   ✅ **Cài đặt Giao diện MacTahoe:** Tự động tải và cài đặt bộ giao diện KDE Plasma, bao gồm cả cấu hình cho Kvantum.
-   ✅ **Cài đặt Icon & Con trỏ MacTahoe:** Tải và cài đặt bộ icon và con trỏ chuột đồng bộ hoàn hảo với giao diện.
-   ✅ **Cài đặt Hiệu ứng Nâng cao:**
    -   **Lightly:** Cài đặt kiểu trang trí cửa sổ để có khung viền và hiệu ứng làm mờ đẹp nhất.
    -   **Better Blur:** Cài đặt hiệu ứng KWin để "ép" làm mờ trong suốt lên tất cả các ứng dụng, kể cả các ứng dụng GTK như Firefox.
-   ✅ **Cài đặt Màn hình Khởi động & Đăng nhập:** Tự động cài đặt theme Plymouth (màn hình khởi động) và SDDM (màn hình đăng nhập) theo phong cách macOS.
-   ✅ **Hỗ trợ Ứng dụng:** Kích hoạt hỗ trợ **Flatpak** và **AppImage**, đồng thời cho phép các ứng dụng Flatpak sử dụng theme của hệ thống.

## 🚀 Yêu Cầu

-   **Hệ điều hành:** **Fedora 40 trở lên** (khuyến nghị Fedora 42).
-   **Môi trường Desktop:** **KDE Plasma 6**.
-   **Khuyến nghị:** Chạy trên một hệ thống mới cài đặt để tránh xung đột với các tùy chỉnh trước đó.
-   **Kết nối Internet** để tải các gói cần thiết.

## ⚙️ Hướng Dẫn Cài Đặt và Sử Dụng

Quy trình cực kỳ đơn giản. Chỉ cần mở **Konsole** và làm theo các bước sau:

1.  **Tải kịch bản về máy:**
    ```bash
    git clone https://github.com/hkg2710/Fedora-KDE-Plasma-to-macOS-Tahoe-Transformation-Script.git
    ```

2.  **Di chuyển vào thư mục của dự án:**
    ```bash
    cd Fedora-KDE-Plasma-to-macOS-Tahoe-Transformation-Script
    ```

3.  **Cấp quyền thực thi cho kịch bản:**
    ```bash
    chmod +x macos_makeover.sh
    ```

4.  **Chạy kịch bản:**
    ```bash
    ./macos_makeover.sh
    ```
    Kịch bản sẽ yêu cầu mật khẩu `sudo` của bạn để bắt đầu quá trình. Sau khi hoàn tất, nó sẽ nhắc bạn khởi động lại máy.

## 🎨 Các Bước Kích Hoạt Giao Diện (Sau Khi Khởi Động Lại)

⚠️ **QUAN TRỌNG:** Sau khi kịch bản chạy xong và bạn đã khởi động lại máy, hãy làm theo các bước cuối cùng này để kích hoạt giao diện mới:

1.  Mở **System Settings** (Cài đặt hệ thống).
2.  Đi đến mục **Appearance** (Giao diện).
3.  Áp dụng các tùy chọn sau:
    -   **Global Theme**: Chọn **MacTahoe**.
    -   **Application Style**: Chọn **Kvantum**.
    -   **Plasma Style**: Chọn **MacTahoe**.
    -   **Colors**: Chọn **MacTahoe-Dark** (tối) hoặc **MacTahoe-Light** (sáng).
    -   **Window Decorations**: Chọn **Lightly**.
    -   **Icons**: Chọn **MacTahoe**.
    -   **Cursors**: Chọn **MacTahoe**.
4.  Đi đến **Window Management** -> **Desktop Effects**:
    -   Tìm và **bật "Better Blur"**.
    -   Nhấp vào biểu tượng cài đặt bên cạnh, **đánh dấu tick vào ô "Force blur"**, và nhấn **Apply**.
5.  Đi đến **Startup and Shutdown** -> **Login Screen (SDDM)**:
    -   Chọn theme **MacTahoe** và nhấn **Apply**.

🎉 **Chúc mừng!** Trải nghiệm macOS Tahoe của bạn giờ đã hoàn tất!

## ⏪ Cách Quay Lại Giao Diện Mặc Định

Nếu bạn muốn quay lại giao diện mặc định của Fedora KDE, chỉ cần vào **System Settings > Appearance** và áp dụng lại theme **Breeze** cho tất cả các mục. Các gói đã cài đặt là những công cụ phát triển tiêu chuẩn và thường không cần phải gỡ bỏ.

## ❓ Xử Lý Sự Cố (Troubleshooting)

-   **Hiệu ứng làm mờ không hoạt động trên một số ứng dụng?**
    -   Đảm bảo bạn đã **khởi động lại máy tính** sau khi chạy kịch bản.
    -   Kiểm tra lại xem hiệu ứng **"Better Blur"** đã được bật và tùy chọn **"Force blur"** đã được chọn trong *System Settings > Desktop Effects*.
-   **Script báo lỗi khi đang chạy?**
    -   Hãy chắc chắn rằng bạn đã chạy lệnh `sudo dnf update -y` và hệ thống đã được cập nhật đầy đủ trước khi chạy kịch bản.

## 🙏 Lời Cảm Ơn

Kịch bản này được xây dựng dựa trên các công cụ và giao diện tuyệt vời từ cộng đồng mã nguồn mở. Xin gửi lời cảm ơn đặc biệt đến:

-   **Vince Liuice**: Tác giả của bộ giao diện [MacTahoe-kde](https://github.com/vinceliuice/MacTahoe-kde) và [MacTahoe-icon-theme](https://github.com/vinceliuice/MacTahoe-icon-theme).
-   **taj-ny**: Tác giả của kịch bản [kwin-effects-forceblur](https://github.com/taj-ny/kwin-effects-forceblur).
-   **boehs**: Tác giả của kiểu trang trí cửa sổ [Lightly](https://github.com/boehs/Lightly).
-   **Linuxscoop**: Nguồn cảm hứng ban đầu từ video hướng dẫn trên YouTube.

## 📜 Giấy Phép

Dự án này được cấp phép theo **Giấy phép MIT**. Xem chi tiết tại tệp `LICENSE`.
