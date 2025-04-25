-- 1. Sinh viên trùng hoàn toàn ngày/tháng/năm sinh
SELECT * FROM SV
WHERE ns = '2004-06-29';

-- 2. Sinh viên trùng ngày và tháng sinh
SELECT * FROM SV
WHERE DAY(ns) = 29 AND MONTH(ns) = 6;

-- 3. Sinh viên trùng tháng và năm sinh
SELECT * FROM SV
WHERE MONTH(ns) = 6 AND YEAR(ns) = 2004;

-- 4. Sinh viên trùng tên (Hà)
SELECT * FROM SV
WHERE ten = N'Hà';

-- 5. Sinh viên trùng họ và tên đệm (Lương Quang)
SELECT * FROM SV
WHERE hodem = N'Lương Quang';

-- 6. Sinh viên có SĐT sai khác đúng 1 số so với 0355593070
SELECT * FROM SV
WHERE LEN(sdt) = 10 AND (
    SELECT COUNT(*)
    FROM (
        VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10)
    ) AS Numbers(pos)
    WHERE SUBSTRING(sdt, pos, 1) <> SUBSTRING('0355593070', pos, 1)
) = 1;

-- 7. Sinh viên ngành KMT, sắp xếp theo tên và họ đệm
SELECT * FROM SV
WHERE lop LIKE '%KMT%'
ORDER BY 
    ten COLLATE Vietnamese_CI_AS,
    hodem COLLATE Vietnamese_CI_AS;

-- 8. Sinh viên nữ ngành KMT (dựa trên tên phổ biến)
SELECT * FROM SV
WHERE lop LIKE '%KMT%'
AND ten IN (
    N'Lan', N'Hoa', N'Hương', N'Huệ', N'Trang', N'Ngọc', N'Hạnh',
    N'Thảo', N'Thùy', N'nguyệt', N'Nhung', N'My', N'Loan'
);
