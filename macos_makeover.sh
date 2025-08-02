#!/bin/bash

# ==============================================================================
# Fedora KDE to macOS Tahoe Transformation Script
# Tự động hóa quá trình cài đặt theme, icon, và các công cụ cần thiết.
# ==============================================================================

# Màu sắc để output đẹp hơn
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # Không màu

# Dừng ngay lập tức nếu có lỗi
set -e

# --- Bắt đầu ---
echo -e "${GREEN}--- Kịch Bản Biến Fedora KDE Thành macOS Tahoe ---${NC}"
echo -e "${YELLOW}Kịch bản sẽ tự động tải và cài đặt tất cả các thành phần cần thiết.${NC}"
echo "Vui lòng nhập mật khẩu của bạn khi được yêu cầu."

# --- Bước 1: Chuẩn Bị Hệ Thống ---
echo -e "\n${GREEN}[1/5] Đang cập nhật hệ thống và cài đặt các gói cần thiết...${NC}"
sudo dnf update -y
sudo dnf groupinstall "Development Tools" -y
sudo dnf install -y git cmake extra-cmake-modules kvantum kf6-kdecoration-devel qt6-qtdeclarative-devel gettext curl wget rsync sassc glib2-devel plymouth plymouth-themes libfuse2

# --- Bước 2: Tải và Cài Đặt Giao Diện & Icon ---
echo -e "\n${GREEN}[2/5] Đang tải và cài đặt Giao diện, Icon và Hiệu ứng...${NC}"
# Tạo một thư mục riêng để chứa mã nguồn, giữ cho thư mục Home gọn gàng
mkdir -p ~/macos-kde-makeover
cd ~/macos-kde-makeover

# Tải và Cài đặt Giao diện MacTahoe-KDE
echo "--> Đang cài đặt MacTahoe KDE Theme..."
git clone https://github.com/vinceliuice/MacTahoe-kde.git
cd MacTahoe-kde
./install.sh
cd ..

# Tải và Cài đặt Icon & Con trỏ chuột MacTahoe
echo "--> Đang cài đặt MacTahoe Icon Theme..."
git clone https://github.com/vinceliuice/MacTahoe-icon-theme.git
cd MacTahoe-icon-theme
./install.sh
cd ..

# Cài đặt Hiệu Ứng "Better Blur" (Bắt buộc)
echo "--> Đang cài đặt KWin Better Blur Effect..."
git clone https://github.com/taj-ny/kwin-effects-forceblur.git
cd kwin-effects-forceblur
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_TESTING=OFF -DCMAKE_BUILD_TYPE=Release
make
sudo make install
cd ../..

# Cài đặt Lightly Window Decoration (Nên làm)
echo "--> Đang cài đặt Lightly Window Decoration..."
git clone https://github.com/boehs/Lightly.git
cd Lightly
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_TESTING=OFF -DCMAKE_BUILD_TYPE=Release
make
sudo make install
cd ../..

# --- Bước 3: Cài Đặt Hỗ Trợ Ứng Dụng ---
echo -e "\n${GREEN}[3/5] Đang cấu hình Flatpak và AppImage...${NC}"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "--> Cho phép ứng dụng Flatpak sử dụng theme hệ thống..."
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.local/share/icons

# --- Bước 4: Kích Hoạt Plymouth ---
echo -e "\n${GREEN}[4/5] Đang kích hoạt màn hình khởi động Plymouth...${NC}"
sudo plymouth-set-default-theme -R MacTahoe

# --- Bước 5: Hoàn Tất và Hướng Dẫn Thủ Công ---
echo -e "\n${GREEN}[5/5] Quá trình cài đặt tự động đã hoàn tất!${NC}"
echo -e "${YELLOW}-------------------------------------------------------------------${NC}"
echo -e "${YELLOW}!!! HÀNH ĐỘNG TIẾP THEO CỦA BẠN LÀ BẮT BUỘC !!!${NC}"
echo -e "${YELLOW}-------------------------------------------------------------------${NC}"
echo ""
echo -e "1. ${GREEN}KHỞI ĐỘNG LẠI MÁY TÍNH CỦA BẠN NGAY BÂY GIỜ.${NC} Đây là bước bắt buộc."
echo ""
echo "2. Sau khi khởi động lại, mở ${GREEN}System Settings > Appearance${NC} và thực hiện các thay đổi sau:"
echo "   - **Global Theme**: Chọn **MacTahoe**."
echo "   - **Application Style**: Chọn **Kvantum**."
echo "   - **Window Decorations**: Chọn **Lightly**."
echo "   - **Icons**: Chọn **MacTahoe**."
echo "   - **Cursors**: Chọn **MacTahoe**."
echo ""
echo "3. Tiếp theo, vào ${GREEN}System Settings > Window Management > Desktop Effects${NC}:"
echo "   - Tìm và **bật 'Better Blur'**."
echo "   - Nhấp vào biểu tượng cài đặt, sau đó **tick vào ô 'Force blur'** và nhấn **Apply**."
echo ""
echo "4. Cuối cùng, vào ${GREEN}System Settings > Startup and Shutdown > Login Screen (SDDM)${NC}:"
echo "   - Chọn theme **MacTahoe** và nhấn **Apply**."
echo ""

# Xóa thư mục chứa mã nguồn (tùy chọn)
echo -e "${YELLOW}Bạn có muốn xóa thư mục chứa mã nguồn '~/macos-kde-makeover' không? (y/n)${NC}"
read -r cleanup_choice
if [[ "$cleanup_choice" == "y" || "$cleanup_choice" == "Y" ]]; then
    rm -rf ~/macos-kde-makeover
    echo "Đã dọn dẹp thư mục mã nguồn."
fi

echo -e "\n${GREEN}Chúc bạn có những trải nghiệm tuyệt vời với giao diện mới!${NC}"