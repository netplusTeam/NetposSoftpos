.class final enum Lcom/neovisionaries/i18n/CurrencyCode$8;
.super Lcom/neovisionaries/i18n/CurrencyCode;
.source "CurrencyCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/CurrencyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;II[Lcom/neovisionaries/i18n/CountryCode;)V
    .locals 8
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "numeric"    # I
    .param p5, "minorUnit"    # I
    .param p6, "countries"    # [Lcom/neovisionaries/i18n/CountryCode;

    .line 2010
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/neovisionaries/i18n/CurrencyCode;-><init>(Ljava/lang/String;ILjava/lang/String;II[Lcom/neovisionaries/i18n/CountryCode;Lcom/neovisionaries/i18n/CurrencyCode$1;)V

    return-void
.end method


# virtual methods
.method public isFund()Z
    .locals 1

    .line 2015
    const/4 v0, 0x1

    return v0
.end method
