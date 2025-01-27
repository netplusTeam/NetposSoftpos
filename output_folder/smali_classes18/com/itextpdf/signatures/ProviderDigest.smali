.class public Lcom/itextpdf/signatures/ProviderDigest;
.super Ljava/lang/Object;
.source "ProviderDigest.java"

# interfaces
.implements Lcom/itextpdf/signatures/IExternalDigest;


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/signatures/ProviderDigest;->provider:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .param p1, "hashAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/itextpdf/signatures/ProviderDigest;->provider:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method
