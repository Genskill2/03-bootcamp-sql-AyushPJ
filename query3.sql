SELECT b.title FROM books b, books_subjects bs, subjects s WHERE bs.book=b.id AND s.id=bs.subject AND s.name IN ('Technology','Politics');
