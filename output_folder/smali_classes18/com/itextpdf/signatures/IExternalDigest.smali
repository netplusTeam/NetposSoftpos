.class public interface abstract Lcom/itextpdf/signatures/IExternalDigest;
.super Ljava/lang/Object;
.source "IExternalDigest.java"


# virtual methods
.method public abstract getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
