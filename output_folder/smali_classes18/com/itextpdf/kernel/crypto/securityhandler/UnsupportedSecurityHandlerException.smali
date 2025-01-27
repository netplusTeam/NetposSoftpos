.class public Lcom/itextpdf/kernel/crypto/securityhandler/UnsupportedSecurityHandlerException;
.super Lcom/itextpdf/kernel/PdfException;
.source "UnsupportedSecurityHandlerException.java"


# static fields
.field public static final UnsupportedSecurityHandler:Ljava/lang/String; = "Failed to open the document. Security handler {0} is not supported"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
