.class public Lcom/payneteasy/tlv/DefaultBerTagFactory;
.super Ljava/lang/Object;
.source "DefaultBerTagFactory.java"

# interfaces
.implements Lcom/payneteasy/tlv/BerTagFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTag([BII)Lcom/payneteasy/tlv/BerTag;
    .locals 1
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLength"    # I

    .line 7
    new-instance v0, Lcom/payneteasy/tlv/BerTag;

    invoke-direct {v0, p1, p2, p3}, Lcom/payneteasy/tlv/BerTag;-><init>([BII)V

    return-object v0
.end method
