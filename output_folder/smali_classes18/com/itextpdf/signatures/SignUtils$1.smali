.class final Lcom/itextpdf/signatures/SignUtils$1;
.super Ljava/lang/Object;
.source "SignUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$keyStore:Ljava/security/KeyStore;

.field final synthetic val$keyStoreAliases:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/Enumeration;Ljava/security/KeyStore;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStoreAliases:Ljava/util/Enumeration;

    iput-object p2, p0, Lcom/itextpdf/signatures/SignUtils$1;->val$keyStore:Ljava/security/KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/itextpdf/signatures/SignUtils$1$1;

    invoke-direct {v0, p0}, Lcom/itextpdf/signatures/SignUtils$1$1;-><init>(Lcom/itextpdf/signatures/SignUtils$1;)V

    return-object v0
.end method
