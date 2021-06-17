SELECT s.name FROM books b, books_subjects bs, subjects s WHERE bs.book=b.id AND s.id=bs.subject AND b.title='Atomic Habits';
