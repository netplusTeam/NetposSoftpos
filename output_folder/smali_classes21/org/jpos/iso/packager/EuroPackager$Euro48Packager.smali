.class public Lorg/jpos/iso/packager/EuroPackager$Euro48Packager;
.super Lorg/jpos/iso/packager/EuroSubFieldPackager;
.source "EuroPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/EuroPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Euro48Packager"
.end annotation


# instance fields
.field private fld48:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method protected constructor <init>()V
    .locals 9

    .line 283
    invoke-direct {p0}, Lorg/jpos/iso/packager/EuroSubFieldPackager;-><init>()V

    .line 184
    const/16 v0, 0x5d

    new-array v0, v0, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v1, Lorg/jpos/iso/IF_CHAR;

    const/4 v2, 0x4

    const-string v3, "PLACEHOLDER"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const/16 v4, 0x12

    const-string v5, "Field 48 - PDS01"

    invoke-direct {v1, v4, v5}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v5, "Field 48 - PDS02"

    invoke-direct {v1, v2, v5}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v5, "Field 48 - PDS03"

    invoke-direct {v1, v2, v5}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v6, "Field 48 - PDS04"

    invoke-direct {v1, v2, v6}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const/16 v6, 0x62

    const-string v7, "Field 48 - PDS05"

    invoke-direct {v1, v6, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v7, "Field 48 - PDS06"

    invoke-direct {v1, v2, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v7, "Field 48 - PDS07"

    invoke-direct {v1, v2, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x7

    aput-object v1, v0, v7

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v7, "Field 48 - PDS08"

    invoke-direct {v1, v2, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x8

    aput-object v1, v0, v7

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v7, ""

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0x9

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xa

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xb

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xc

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xd

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xe

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0xf

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0x10

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0x11

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v4, "Field 48 - PDS20"

    invoke-direct {v1, v5, v4}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x14

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x15

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x16

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x17

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x18

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x19

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x20

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x21

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x22

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x23

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x24

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x25

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x26

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x27

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const/16 v4, 0x2a

    const-string v8, "Field 48 - PDS40"

    invoke-direct {v1, v4, v8}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0x28

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v8, 0x29

    aput-object v1, v0, v8

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v8, "Field 48 - PDS42"

    invoke-direct {v1, v2, v8}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v2, "Field 48 - PDS87"

    invoke-direct {v1, v5, v2}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v2, "Field 48 - PDS88"

    invoke-direct {v1, v5, v2}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v2, "Field 48 - PDS89"

    invoke-direct {v1, v5, v2}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    invoke-direct {v1, v3, v7}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-instance v1, Lorg/jpos/iso/IFEP_LLCHAR;

    const-string v2, "Field 48 - PDS92"

    invoke-direct {v1, v6, v2}, Lorg/jpos/iso/IFEP_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/jpos/iso/packager/EuroPackager$Euro48Packager;->fld48:[Lorg/jpos/iso/ISOFieldPackager;

    .line 284
    invoke-virtual {p0, v0}, Lorg/jpos/iso/packager/EuroPackager$Euro48Packager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 285
    return-void
.end method
