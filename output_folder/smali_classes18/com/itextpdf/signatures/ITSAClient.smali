.class public interface abstract Lcom/itextpdf/signatures/ITSAClient;
.super Ljava/lang/Object;
.source "ITSAClient.java"


# virtual methods
.method public abstract getMessageDigest()Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract getTimeStampToken([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTokenSizeEstimate()I
.end method
