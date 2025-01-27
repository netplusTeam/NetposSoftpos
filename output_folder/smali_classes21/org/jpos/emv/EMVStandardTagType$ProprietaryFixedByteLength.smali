.class public Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedByteLength;
.super Lorg/jpos/emv/EMVTagType$ByteLength;
.source "EMVStandardTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVStandardTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProprietaryFixedByteLength"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jpos/emv/EMVTagType$ByteLength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 774
    new-instance v0, Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedByteLength;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedByteLength;-><init>(I)V

    sput-object v0, Lorg/jpos/emv/EMVStandardTagType$ProprietaryFixedByteLength;->INSTANCE:Lorg/jpos/emv/EMVTagType$ByteLength;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 778
    invoke-direct {p0, p1, p1}, Lorg/jpos/emv/EMVTagType$ByteLength;-><init>(II)V

    .line 779
    return-void
.end method


# virtual methods
.method public isFixedLength()Z
    .locals 1

    .line 783
    const/4 v0, 0x1

    return v0
.end method
