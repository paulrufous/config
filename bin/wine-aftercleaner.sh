# 1. ВЫМАРЫВАНИЕ СОДЕРЖИМОГО
DIRS_TO_CLEAN="$HOME/.local/share/applications $HOME/.local/share/mime"
BAD_WORD="wine"
# Из файлов в этих папках будет удалена любая строка,
# которая содержит слово "$BAD_WORD"

for DIR in $DIRS_TO_CLEAN
do
    {
    grep -Rwi -Hl "$BAD_WORD" "$DIR" | while read FILENAME #thx to ixti@laptop
    do
        grep -wvi "$BAD_WORD" "$FILENAME" > "$FILENAME"
    done
    }
done

# 2. ПОЛНОЕ УДАЛЕНИЕ НЕКОТОРЫХ ФАЙЛОВ
#
# Удалить лишние иконки, *.desktop файлы и прочее
# Дописать, когда будет на чем тестировать :)
rm $HOME/.local/share/applications/wine-extension-*.desktop
rm $HOME/.local/share/mime/packages/x-wine-extension-*.xml
rm $HOME/.local/share/mime/application/x-wine-extension-*.xml
