.class public Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedDataLength;
.super Lorg/jpos/emv/EMVTagType$DataLength;
.source "EMVStandardTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVStandardTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProprietaryFixedDataLength"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jpos/emv/EMVTagType$DataLength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 714
    new-instance v0, Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedDataLength;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedDataLength;-><init>(I)V

    sput-object v0, Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedDataLength;->INSTANCE:Lorg/jpos/emv/EMVTagType$DataLength;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 718
    invoke-direct {p0, p1, p1}, Lorg/jpos/emv/EMVTagType$DataLength;-><init>(II)V

    .line 719
    return-void
.end method


# virtual methods
.method public isFixedLength()Z
    .locals 1

    .line 723
    const/4 v0, 0x1

    return v0
.end method
