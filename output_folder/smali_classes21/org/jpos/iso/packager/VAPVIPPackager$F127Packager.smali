.class public Lorg/jpos/iso/packager/VAPVIPPackager$F127Packager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "VAPVIPPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/VAPVIPPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "F127Packager"
.end annotation


# instance fields
.field protected fld127:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method protected constructor <init>()V
    .locals 6

    .line 182
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 173
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const/4 v2, 0x1

    const-string v3, "FILE UPDATE COD"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFB_LLHNUM;

    const/16 v3, 0x13

    const-string v4, "ACCOUNT NUMBER"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/iso/IFB_LLHNUM;-><init>(ILjava/lang/String;Z)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFB_NUMERIC;

    const/4 v3, 0x4

    const-string v4, "PURGE DATE"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const-string v5, "ACTION CODE"

    invoke-direct {v1, v4, v5}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFE_CHAR;

    const/16 v4, 0x9

    const-string v5, "REGION CODING"

    invoke-direct {v1, v4, v5}, Lorg/jpos/iso/IFE_CHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v4, "FILLER"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jpos/iso/packager/VAPVIPPackager$F127Packager;->fld127:[Lorg/jpos/iso/ISOFieldPackager;

    .line 183
    invoke-virtual {p0, v0}, Lorg/jpos/iso/packager/VAPVIPPackager$F127Packager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 184
    return-void
.end method
