.class public Lorg/jpos/iso/IFB_AMOUNT2003;
.super Lorg/jpos/iso/IFB_NUMERIC;
.source "IFB_AMOUNT2003.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/jpos/iso/IFB_NUMERIC;-><init>()V

    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 23
    new-instance v0, Lorg/jpos/iso/ISOAmount;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOAmount;-><init>(I)V

    return-object v0
.end method
