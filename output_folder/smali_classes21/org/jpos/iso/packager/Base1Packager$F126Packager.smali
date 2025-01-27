.class public Lorg/jpos/iso/packager/Base1Packager$F126Packager;
.super Lorg/jpos/iso/packager/Base1SubFieldPackager;
.source "Base1Packager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/Base1Packager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "F126Packager"
.end annotation


# instance fields
.field protected fld126:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method protected constructor <init>()V
    .locals 6

    .line 191
    invoke-direct {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;-><init>()V

    .line 174
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v1, Lorg/jpos/iso/packager/Base1_BITMAP126;

    const/16 v2, 0x10

    const-string v3, "Bit Map"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/packager/Base1_BITMAP126;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const/16 v2, 0x19

    const-string v3, "Customer Name"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const/16 v3, 0x39

    const-string v4, "Customer Address"

    invoke-direct {v1, v3, v4}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const-string v4, "Biller Address"

    invoke-direct {v1, v3, v4}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const/16 v3, 0x12

    const-string v4, "Biller Telephone Number"

    invoke-direct {v1, v3, v4}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const/4 v3, 0x6

    const-string v4, "Process By Date"

    invoke-direct {v1, v3, v4}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFB_LLNUM;

    const/16 v4, 0x11

    const-string v5, "Cardholder Cert Serial Number"

    invoke-direct {v1, v4, v5, v2}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFB_LLNUM;

    const-string v5, "Merchant Cert Serial Number"

    invoke-direct {v1, v4, v5, v2}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v4, 0x28

    const-string v5, "Transaction ID"

    invoke-direct {v1, v4, v5, v2}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-instance v1, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v5, "TransStain"

    invoke-direct {v1, v4, v5, v2}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const-string v2, "CVV2 Request Data"

    invoke-direct {v1, v3, v2}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jpos/iso/packager/Base1Packager$F126Packager;->fld126:[Lorg/jpos/iso/ISOFieldPackager;

    .line 192
    invoke-virtual {p0, v0}, Lorg/jpos/iso/packager/Base1Packager$F126Packager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 193
    return-void
.end method
