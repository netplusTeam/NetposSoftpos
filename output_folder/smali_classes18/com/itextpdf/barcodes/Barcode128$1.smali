.class synthetic Lcom/itextpdf/barcodes/Barcode128$1;
.super Ljava/lang/Object;
.source "Barcode128.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/barcodes/Barcode128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 770
    invoke-static {}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->values()[Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128$1;->$SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet:[I

    :try_start_0
    sget-object v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->A:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$1;->$SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet:[I

    sget-object v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->B:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$1;->$SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet:[I

    sget-object v1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-virtual {v1}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
