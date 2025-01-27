.class public final enum Lorg/jpos/iso/PosDataCode$ReadingMethod;
.super Ljava/lang/Enum;
.source "PosDataCode.java"

# interfaces
.implements Lorg/jpos/iso/PosDataCode$Flag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/PosDataCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/iso/PosDataCode$ReadingMethod;",
        ">;",
        "Lorg/jpos/iso/PosDataCode$Flag;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum BARCODE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum CONTACTLESS:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum DATA_ON_FILE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum FALLBACK:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum ICC:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum ICC_FAILED:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum MAGNETIC_STRIPE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum MAGNETIC_STRIPE_FAILED:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static OFFSET:I

.field public static final enum PHYSICAL:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum TRACK1_PRESENT:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum TRACK2_PRESENT:Lorg/jpos/iso/PosDataCode$ReadingMethod;

.field public static final enum UNKNOWN:Lorg/jpos/iso/PosDataCode$ReadingMethod;


# instance fields
.field private description:Ljava/lang/String;

.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->UNKNOWN:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 34
    new-instance v1, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v4, "CONTACTLESS"

    const/4 v5, 0x2

    const-string v6, "Information not taken from card"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/jpos/iso/PosDataCode$ReadingMethod;->CONTACTLESS:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 35
    new-instance v4, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v6, "PHYSICAL"

    const/4 v7, 0x4

    const-string v8, "Physical entry"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/jpos/iso/PosDataCode$ReadingMethod;->PHYSICAL:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 36
    new-instance v6, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v8, "BARCODE"

    const/4 v9, 0x3

    const/16 v10, 0x8

    const-string v11, "Bar code"

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/jpos/iso/PosDataCode$ReadingMethod;->BARCODE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 37
    new-instance v8, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v11, "MAGNETIC_STRIPE"

    const/16 v12, 0x10

    const-string v13, "Magnetic Stripe"

    invoke-direct {v8, v11, v7, v12, v13}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/jpos/iso/PosDataCode$ReadingMethod;->MAGNETIC_STRIPE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 38
    new-instance v11, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v12, "ICC"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14, v12}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/jpos/iso/PosDataCode$ReadingMethod;->ICC:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 39
    new-instance v12, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v14, "DATA_ON_FILE"

    const/4 v15, 0x6

    const/16 v13, 0x40

    const-string v7, "Data on file"

    invoke-direct {v12, v14, v15, v13, v7}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/jpos/iso/PosDataCode$ReadingMethod;->DATA_ON_FILE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 40
    new-instance v7, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v13, "ICC_FAILED"

    const/4 v14, 0x7

    const/16 v15, 0x800

    const-string v9, "ICC read but failed"

    invoke-direct {v7, v13, v14, v15, v9}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/jpos/iso/PosDataCode$ReadingMethod;->ICC_FAILED:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 41
    new-instance v9, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v13, "MAGNETIC_STRIPE_FAILED"

    const/16 v15, 0x1000

    const-string v14, "Magnetic Stripe read but failed"

    invoke-direct {v9, v13, v10, v15, v14}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/jpos/iso/PosDataCode$ReadingMethod;->MAGNETIC_STRIPE_FAILED:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 42
    new-instance v13, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v14, "FALLBACK"

    const/16 v15, 0x9

    const/16 v10, 0x2000

    const-string v5, "Fallback"

    invoke-direct {v13, v14, v15, v10, v5}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/jpos/iso/PosDataCode$ReadingMethod;->FALLBACK:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 43
    new-instance v5, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v10, "TRACK1_PRESENT"

    const/16 v14, 0xa

    const/high16 v15, 0x8000000

    const-string v3, "Track1 data present"

    invoke-direct {v5, v10, v14, v15, v3}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/jpos/iso/PosDataCode$ReadingMethod;->TRACK1_PRESENT:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 44
    new-instance v3, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const-string v10, "TRACK2_PRESENT"

    const/16 v15, 0xb

    const/high16 v14, 0x10000000

    const-string v2, "Track2 data present"

    invoke-direct {v3, v10, v15, v14, v2}, Lorg/jpos/iso/PosDataCode$ReadingMethod;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/jpos/iso/PosDataCode$ReadingMethod;->TRACK2_PRESENT:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 32
    const/16 v2, 0xc

    new-array v2, v2, [Lorg/jpos/iso/PosDataCode$ReadingMethod;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v7, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v13, v2, v0

    const/16 v0, 0xa

    aput-object v5, v2, v0

    aput-object v3, v2, v15

    sput-object v2, Lorg/jpos/iso/PosDataCode$ReadingMethod;->$VALUES:[Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 59
    const/4 v0, 0x0

    sput v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->OFFSET:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "val"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->val:I

    .line 50
    iput-object p4, p0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/iso/PosDataCode$ReadingMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;

    return-object v0
.end method

.method public static values()[Lorg/jpos/iso/PosDataCode$ReadingMethod;
    .locals 1

    .line 32
    sget-object v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->$VALUES:[Lorg/jpos/iso/PosDataCode$ReadingMethod;

    invoke-virtual {v0}, [Lorg/jpos/iso/PosDataCode$ReadingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/iso/PosDataCode$ReadingMethod;

    return-object v0
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 62
    sget v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->OFFSET:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->val:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->description:Ljava/lang/String;

    return-object v0
.end method
