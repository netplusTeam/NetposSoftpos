.class public final enum Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
.super Ljava/lang/Enum;
.source "Barcode128.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/barcodes/Barcode128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Barcode128CodeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum A:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum B:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

.field public static final enum C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 252
    new-instance v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->A:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 253
    new-instance v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v3, "B"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->B:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 254
    new-instance v3, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v5, "C"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 255
    new-instance v5, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const-string v7, "AUTO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    .line 251
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->$VALUES:[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 251
    const-class v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    .locals 1

    .line 251
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->$VALUES:[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-virtual {v0}, [Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-object v0
.end method
