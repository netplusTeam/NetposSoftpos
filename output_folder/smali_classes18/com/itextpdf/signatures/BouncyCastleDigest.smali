.class public Lcom/itextpdf/signatures/BouncyCastleDigest;
.super Ljava/lang/Object;
.source "BouncyCastleDigest.java"

# interfaces
.implements Lcom/itextpdf/signatures/IExternalDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .param p1, "hashAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "oid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "1.2.643.2.2.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "1.3.14.3.2.26"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "1.3.36.3.2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v1, "1.3.36.3.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "1.3.36.3.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v1, "1.2.840.113549.2.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v1, "1.2.840.113549.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 96
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/GOST3411$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/GOST3411$Digest;-><init>()V

    return-object v1

    .line 92
    :pswitch_1
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD256$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD256$Digest;-><init>()V

    return-object v1

    .line 90
    :pswitch_2
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$Digest;-><init>()V

    return-object v1

    .line 88
    :pswitch_3
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;-><init>()V

    return-object v1

    .line 86
    :pswitch_4
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/SHA512$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA512$Digest;-><init>()V

    return-object v1

    .line 84
    :pswitch_5
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/SHA384$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA384$Digest;-><init>()V

    return-object v1

    .line 82
    :pswitch_6
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;-><init>()V

    return-object v1

    .line 80
    :pswitch_7
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/SHA224$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA224$Digest;-><init>()V

    return-object v1

    .line 78
    :pswitch_8
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/SHA1$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA1$Digest;-><init>()V

    return-object v1

    .line 76
    :pswitch_9
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/MD5$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/MD5$Digest;-><init>()V

    return-object v1

    .line 74
    :pswitch_a
    new-instance v1, Lorg/bouncycastle/jcajce/provider/digest/MD2$Digest;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/digest/MD2$Digest;-><init>()V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b77d79e -> :sswitch_a
        -0x7b77d79b -> :sswitch_9
        -0x4b2a08d9 -> :sswitch_8
        -0x4b2a08d8 -> :sswitch_7
        -0x4b2a08d7 -> :sswitch_6
        -0x49128200 -> :sswitch_5
        -0x491281ff -> :sswitch_4
        -0x491281fe -> :sswitch_3
        -0x491281fd -> :sswitch_2
        -0x126249b2 -> :sswitch_1
        0x3e3cb6cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
