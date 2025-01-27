.class public Lorg/jpos/tlv/ISOMsgRef;
.super Ljava/lang/Object;
.source "ISOMsgRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/ISOMsgRef$Ref;
    }
.end annotation


# instance fields
.field private final delegate:Lorg/jpos/iso/ISOMsg;

.field private offset:I


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "delegate"    # Lorg/jpos/iso/ISOMsg;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/tlv/ISOMsgRef;->offset:I

    .line 44
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lorg/jpos/tlv/ISOMsgRef;->delegate:Lorg/jpos/iso/ISOMsg;

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lorg/jpos/tlv/ISOMsgRef;)I
    .locals 1
    .param p0, "x0"    # Lorg/jpos/tlv/ISOMsgRef;

    .line 38
    iget v0, p0, Lorg/jpos/tlv/ISOMsgRef;->offset:I

    return v0
.end method

.method static synthetic access$102(Lorg/jpos/tlv/ISOMsgRef;I)I
    .locals 0
    .param p0, "x0"    # Lorg/jpos/tlv/ISOMsgRef;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Lorg/jpos/tlv/ISOMsgRef;->offset:I

    return p1
.end method

.method static synthetic access$108(Lorg/jpos/tlv/ISOMsgRef;)I
    .locals 2
    .param p0, "x0"    # Lorg/jpos/tlv/ISOMsgRef;

    .line 38
    iget v0, p0, Lorg/jpos/tlv/ISOMsgRef;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jpos/tlv/ISOMsgRef;->offset:I

    return v0
.end method

.method static synthetic access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/tlv/ISOMsgRef;

    .line 38
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef;->delegate:Lorg/jpos/iso/ISOMsg;

    return-object v0
.end method


# virtual methods
.method public reference(I)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "fieldNumber"    # I

    .line 51
    new-instance v0, Lorg/jpos/tlv/ISOMsgRef$Ref;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jpos/tlv/ISOMsgRef$Ref;-><init>(Lorg/jpos/tlv/ISOMsgRef;ILorg/jpos/tlv/ISOMsgRef$1;)V

    return-object v0
.end method
