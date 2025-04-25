# bai_tap6
Bài tập 6 k225480106010  Lương Quang Hà môn HQT CSDL  
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025  
bài tập  
Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server  
tạo database với tên là sv_tnut  
![image](https://github.com/user-attachments/assets/218b27f5-50a6-41ba-b0d4-5f88ade29116)  
mở file sv_tnut đã tải trước đó  
![image](https://github.com/user-attachments/assets/019a131a-62aa-4d59-b40e-22a77b833252)  
![image](https://github.com/user-attachments/assets/01ec59f0-b258-43fd-99e8-a0fcd37a23f0)  
![image](https://github.com/user-attachments/assets/0e09ebea-eebd-4345-9053-50f2de05b485)  
khi mở file sv_tnut ta được bảng danh sách sinh viên  
![image](https://github.com/user-attachments/assets/ecac4b29-1ad4-4147-8ad1-b39596270b14)  
nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?  
giải thích:  
so sánh trực tiếp toàn bộ ngày tháng năm sinh  
![image](https://github.com/user-attachments/assets/d812e70a-7eb7-46f4-9a1e-7f39ff14b7ea)  
nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?  
giải thích:  
dùng hàm DAY và MONTH để lấy ngày và tháng từ ngày sinh  
![image](https://github.com/user-attachments/assets/9058a903-ddeb-4815-9b09-ca6b8d66fd62)  
nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?  
giải thích:  
lấy tháng và năm từ ngày sinh để so sánh  
![image](https://github.com/user-attachments/assets/e2ac1556-111d-497d-81ac-10c032103995)  
nhập sql để tìm xem có những sv nào trùng tên với em?  
giải thích:  
cẳ phần cuối cùng trong họ tên (Hà)  
![image](https://github.com/user-attachments/assets/8e1f05a2-b9f5-4f47-b764-cb1cded787ee)  
nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.  
giải thích:  
cắt phần từ đầu đến trước tên chính là họ và tên đệm ( Lương Quang)  
![image](https://github.com/user-attachments/assets/6d492e78-e1bf-46c3-9e7e-05e8963eee91)  
nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em. 
giải thích:  
so sánh từng ký tự giữa sdt của mình với các sv khác nếu khác đúng 1 vị trí thì chọn  
![image](https://github.com/user-attachments/assets/1e8dcbaa-5051-463d-b2ba-69a15cdc3a8f)  
LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.  
giải thích:  
dùng COLLATE để sắp xếp chuẩn tiếng việt( có phân biệt các ký tự đặc biệt)  
![image](https://github.com/user-attachments/assets/fc0e399e-4a6b-4723-9c20-826060922ee0)  
LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV  
giải thích:  
lọc theo mã ngành là KMT và tên sinh viên nữa, vì không có cột giới tính nên không thể  
chính xác 100% 
![image](https://github.com/user-attachments/assets/0cf703fa-a46d-40af-acb4-9067d7b9b1df)



















