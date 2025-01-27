.class public final Lcom/itextpdf/barcodes/qrcode/WriterException;
.super Ljava/lang/Exception;
.source "WriterException.java"


# static fields
.field private static final serialVersionUID:J = -0x697a03de2b86a154L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method
