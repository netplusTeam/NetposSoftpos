.class public Lorg/jpos/iso/packager/PostPackager$PostPrivatePackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "PostPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/PostPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PostPrivatePackager"
.end annotation


# instance fields
.field protected fld127:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method protected constructor <init>()V
    .locals 11

    .line 239
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 208
    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/4 v2, 0x0

    const-string v3, "PLACEHOLDER"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFB_BITMAP;

    const/16 v2, 0x8

    const-string v3, "BITMAP"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFB_BITMAP;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const/16 v4, 0x20

    const-string v5, "SWITCH KEY"

    invoke-direct {v1, v4, v5}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/16 v6, 0x30

    const-string v7, "ROUTING INFORMATION"

    invoke-direct {v1, v6, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/16 v7, 0x16

    const-string v8, "POS DATA"

    invoke-direct {v1, v7, v8}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v8, 0x4

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/16 v8, 0x49

    const-string v9, "SERVICE STATION DATA"

    invoke-direct {v1, v8, v9}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v8, 0x5

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v8, "AUTHORIZATION PROFILE"

    invoke-direct {v1, v5, v8}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const/16 v5, 0x32

    const-string v8, "CHECK DATA"

    invoke-direct {v1, v5, v8}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v8, 0x7

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFA_LLLCHAR;

    const/16 v8, 0x80

    const-string v9, "RETENTION DATA"

    invoke-direct {v1, v8, v9}, Lorg/jpos/iso/IFA_LLLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFA_LLLCHAR;

    const/16 v8, 0xff

    const-string v9, "ADDITIONAL NODE DATA"

    invoke-direct {v1, v8, v9}, Lorg/jpos/iso/IFA_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0x9

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v8, "CVV2"

    invoke-direct {v1, v6, v8}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v6, 0xa

    aput-object v1, v0, v6

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const-string v6, "ORIGINAL KEY"

    invoke-direct {v1, v4, v6}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const/16 v4, 0x19

    const-string v6, "TERMINAL OWNDER"

    invoke-direct {v1, v4, v6}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0xc

    aput-object v1, v0, v6

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/16 v8, 0x11

    const-string v9, "POS GEOGRAPHIC DATA"

    invoke-direct {v1, v8, v9}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v9, 0xd

    aput-object v1, v0, v9

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const-string v9, "SPONSOR BANK"

    invoke-direct {v1, v2, v9}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v9, 0xe

    aput-object v1, v0, v9

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const/16 v9, 0x1d

    const-string v10, "AVS REQUEST"

    invoke-direct {v1, v9, v10}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v9, 0xf

    aput-object v1, v0, v9

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const-string v9, "AVS RESPONSE"

    invoke-direct {v1, v3, v9}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const-string v3, "CARDHOLDER INFORMATION"

    invoke-direct {v1, v5, v3}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const-string v3, "VALIDATION DATA"

    invoke-direct {v1, v5, v3}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/16 v3, 0x2d

    const-string v5, "BANK DETAILS"

    invoke-direct {v1, v3, v5}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "AUTHORIZER DATE SETTLEMENT"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const-string v2, "RECORD IDENTIFICATION"

    invoke-direct {v1, v6, v2}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFA_LLLLLCHAR;

    const v2, 0x1869f

    const-string v3, "STRUCTURED DATA"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFA_LLLLLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/16 v2, 0xfd

    const-string v3, "PAYEE NAME AND ADDRESS"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFA_LLCHAR;

    const/16 v2, 0x1c

    const-string v3, "PAYER ACCOUNT INFORMATION"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFA_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFA_LLLLCHAR;

    const/16 v2, 0x1f40

    const-string v3, "ICC DATA"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IFA_LLLLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/jpos/iso/packager/PostPackager$PostPrivatePackager;->fld127:[Lorg/jpos/iso/ISOFieldPackager;

    .line 240
    invoke-virtual {p0, v0}, Lorg/jpos/iso/packager/PostPackager$PostPrivatePackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 241
    return-void
.end method
