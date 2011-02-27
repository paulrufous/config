# 1. ВЫМАРЫВАНИЕ СОДЕРЖИМОГО
DIRS_TO_CLEAN="$HOME/.local/share/applications $HOME/.local/share/mime"
# Из этих папок будет удалена любая строка, содержащая слово "wine"

for DIR in $DIRS_TO_CLEAN
do
    {
    grep -Rwi -Hl wine "$DIR" | while read FILENAME #thx to ixti@laptop
    do
        grep -wvi wine "$FILENAME" > "$FILENAME"
    done
    }
done

# 2. ПОЛНОЕ УДАЛЕНИЕ НЕКОТОРЫХ ФАЙЛОВ
#
# Удалить лишние иконки, *.desktop файлы и прочее
# Дописать, когда будет на чем тестировать :)
