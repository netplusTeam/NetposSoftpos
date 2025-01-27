.class public Lcom/itextpdf/kernel/crypto/BadPasswordException;
.super Lcom/itextpdf/kernel/PdfException;
.source "BadPasswordException.java"


# static fields
.field public static final PdfReaderNotOpenedWithOwnerPassword:Ljava/lang/String; = "PdfReader is not opened with owner password"

.field private static final serialVersionUID:J = -0x1f9fc26467958d34L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
