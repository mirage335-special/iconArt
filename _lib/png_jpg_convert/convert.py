import os
import piexif
import piexif.helper
from PIL import Image

src_path=r"./"
dst_path=r"./"

def convertPNGtoJPG(path):
    image=Image.open(os.path.join(src_path, path))
    items = image.info or {}

    geninfo = items.pop('parameters', None)

    if "exif" in items:
        exif = piexif.load(items["exif"])
        exif_comment = (exif or {}).get("Exif", {}).get(piexif.ExifIFD.UserComment, b'')
        try:
            exif_comment = piexif.helper.UserComment.load(exif_comment)
        except ValueError:
            exif_comment = exif_comment.decode('utf8', errors="ignore")

        if exif_comment:
            items['exif comment'] = exif_comment
            geninfo = exif_comment

        for field in ['jfif', 'jfif_version', 'jfif_unit', 'jfif_density', 'dpi', 'exif',
                        'loop', 'background', 'timestamp', 'duration']:
            items.pop(field, None)

    jpg = image.convert('RGB')
    exif_bytes = piexif.dump({
        "Exif": {
            piexif.ExifIFD.UserComment: piexif.helper.UserComment.dump(geninfo or "", encoding="unicode")
        },
    })
    pre, ext = os.path.splitext(path)
    dstpath=os.path.join(dst_path, pre+'.jpg')
    jpg.save(dstpath)
    piexif.insert(exif_bytes, dstpath)
    print(dstpath)

# Iterate directory
for path in os.listdir(src_path):
    # check if current path is a file
    if path.endswith('png') and os.path.isfile(os.path.join(src_path, path)):
        convertPNGtoJPG(path)
