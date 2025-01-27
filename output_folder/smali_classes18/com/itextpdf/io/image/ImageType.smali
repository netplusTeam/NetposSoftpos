.class public final enum Lcom/itextpdf/io/image/ImageType;
.super Ljava/lang/Enum;
.source "ImageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/io/image/ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/io/image/ImageType;

.field public static final enum BMP:Lcom/itextpdf/io/image/ImageType;

.field public static final enum GIF:Lcom/itextpdf/io/image/ImageType;

.field public static final enum JBIG2:Lcom/itextpdf/io/image/ImageType;

.field public static final enum JPEG:Lcom/itextpdf/io/image/ImageType;

.field public static final enum JPEG2000:Lcom/itextpdf/io/image/ImageType;

.field public static final enum NONE:Lcom/itextpdf/io/image/ImageType;

.field public static final enum PNG:Lcom/itextpdf/io/image/ImageType;

.field public static final enum PS:Lcom/itextpdf/io/image/ImageType;

.field public static final enum RAW:Lcom/itextpdf/io/image/ImageType;

.field public static final enum TIFF:Lcom/itextpdf/io/image/ImageType;

.field public static final enum WMF:Lcom/itextpdf/io/image/ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 47
    new-instance v0, Lcom/itextpdf/io/image/ImageType;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    .line 48
    new-instance v1, Lcom/itextpdf/io/image/ImageType;

    const-string v3, "PNG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    .line 49
    new-instance v3, Lcom/itextpdf/io/image/ImageType;

    const-string v5, "GIF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/io/image/ImageType;->GIF:Lcom/itextpdf/io/image/ImageType;

    .line 50
    new-instance v5, Lcom/itextpdf/io/image/ImageType;

    const-string v7, "BMP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    .line 51
    new-instance v7, Lcom/itextpdf/io/image/ImageType;

    const-string v9, "TIFF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    .line 52
    new-instance v9, Lcom/itextpdf/io/image/ImageType;

    const-string v11, "WMF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    .line 53
    new-instance v11, Lcom/itextpdf/io/image/ImageType;

    const-string v13, "PS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/io/image/ImageType;->PS:Lcom/itextpdf/io/image/ImageType;

    .line 54
    new-instance v13, Lcom/itextpdf/io/image/ImageType;

    const-string v15, "JPEG2000"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    .line 55
    new-instance v15, Lcom/itextpdf/io/image/ImageType;

    const-string v14, "JBIG2"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    .line 56
    new-instance v14, Lcom/itextpdf/io/image/ImageType;

    const-string v12, "RAW"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    .line 57
    new-instance v12, Lcom/itextpdf/io/image/ImageType;

    const-string v10, "NONE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/itextpdf/io/image/ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/itextpdf/io/image/ImageType;->NONE:Lcom/itextpdf/io/image/ImageType;

    .line 46
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/itextpdf/io/image/ImageType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/itextpdf/io/image/ImageType;->$VALUES:[Lcom/itextpdf/io/image/ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/io/image/ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/itextpdf/io/image/ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/image/ImageType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/io/image/ImageType;
    .locals 1

    .line 46
    sget-object v0, Lcom/itextpdf/io/image/ImageType;->$VALUES:[Lcom/itextpdf/io/image/ImageType;

    invoke-virtual {v0}, [Lcom/itextpdf/io/image/ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/io/image/ImageType;

    return-object v0
.end method
