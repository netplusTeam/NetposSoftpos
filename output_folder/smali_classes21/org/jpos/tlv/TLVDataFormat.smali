.class public final enum Lorg/jpos/tlv/TLVDataFormat;
.super Ljava/lang/Enum;
.source "TLVDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/tlv/TLVDataFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum ASCII_ALPHA:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum ASCII_ALPHA_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum ASCII_ALPHA_NUMERIC_SPACE:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum ASCII_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum BINARY:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum COMPRESSED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum CONSTRUCTED:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum PACKED_NUMERIC_DATE_YYMMDD:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum PACKED_NUMERIC_TIME_HHMMSS:Lorg/jpos/tlv/TLVDataFormat;

.field public static final enum PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lorg/jpos/tlv/TLVDataFormat;

    const-string v1, "ASCII_NUMERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/tlv/TLVDataFormat;->ASCII_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    .line 27
    new-instance v1, Lorg/jpos/tlv/TLVDataFormat;

    const-string v3, "ASCII_ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA:Lorg/jpos/tlv/TLVDataFormat;

    .line 28
    new-instance v3, Lorg/jpos/tlv/TLVDataFormat;

    const-string v5, "ASCII_ALPHA_NUMERIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    .line 29
    new-instance v5, Lorg/jpos/tlv/TLVDataFormat;

    const-string v7, "ASCII_ALPHA_NUMERIC_SPACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPACE:Lorg/jpos/tlv/TLVDataFormat;

    .line 30
    new-instance v7, Lorg/jpos/tlv/TLVDataFormat;

    const-string v9, "ASCII_ALPHA_NUMERIC_SPECIAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jpos/tlv/TLVDataFormat;->ASCII_ALPHA_NUMERIC_SPECIAL:Lorg/jpos/tlv/TLVDataFormat;

    .line 31
    new-instance v9, Lorg/jpos/tlv/TLVDataFormat;

    const-string v11, "BINARY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jpos/tlv/TLVDataFormat;->BINARY:Lorg/jpos/tlv/TLVDataFormat;

    .line 32
    new-instance v11, Lorg/jpos/tlv/TLVDataFormat;

    const-string v13, "COMPRESSED_NUMERIC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jpos/tlv/TLVDataFormat;->COMPRESSED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    .line 33
    new-instance v13, Lorg/jpos/tlv/TLVDataFormat;

    const-string v15, "CONSTRUCTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jpos/tlv/TLVDataFormat;->CONSTRUCTED:Lorg/jpos/tlv/TLVDataFormat;

    .line 34
    new-instance v15, Lorg/jpos/tlv/TLVDataFormat;

    const-string v14, "PACKED_NUMERIC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC:Lorg/jpos/tlv/TLVDataFormat;

    .line 35
    new-instance v14, Lorg/jpos/tlv/TLVDataFormat;

    const-string v12, "PACKED_NUMERIC_DATE_YYMMDD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC_DATE_YYMMDD:Lorg/jpos/tlv/TLVDataFormat;

    .line 36
    new-instance v12, Lorg/jpos/tlv/TLVDataFormat;

    const-string v10, "PACKED_NUMERIC_TIME_HHMMSS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jpos/tlv/TLVDataFormat;->PACKED_NUMERIC_TIME_HHMMSS:Lorg/jpos/tlv/TLVDataFormat;

    .line 37
    new-instance v10, Lorg/jpos/tlv/TLVDataFormat;

    const-string v8, "PROPRIETARY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jpos/tlv/TLVDataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jpos/tlv/TLVDataFormat;->PROPRIETARY:Lorg/jpos/tlv/TLVDataFormat;

    .line 25
    const/16 v8, 0xc

    new-array v8, v8, [Lorg/jpos/tlv/TLVDataFormat;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lorg/jpos/tlv/TLVDataFormat;->$VALUES:[Lorg/jpos/tlv/TLVDataFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/tlv/TLVDataFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jpos/tlv/TLVDataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/tlv/TLVDataFormat;

    return-object v0
.end method

.method public static values()[Lorg/jpos/tlv/TLVDataFormat;
    .locals 1

    .line 25
    sget-object v0, Lorg/jpos/tlv/TLVDataFormat;->$VALUES:[Lorg/jpos/tlv/TLVDataFormat;

    invoke-virtual {v0}, [Lorg/jpos/tlv/TLVDataFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/tlv/TLVDataFormat;

    return-object v0
.end method
