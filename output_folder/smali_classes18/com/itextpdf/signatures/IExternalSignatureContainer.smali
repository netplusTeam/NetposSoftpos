.class public interface abstract Lcom/itextpdf/signatures/IExternalSignatureContainer;
.super Ljava/lang/Object;
.source "IExternalSignatureContainer.java"


# virtual methods
.method public abstract modifySigningDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public abstract sign(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
