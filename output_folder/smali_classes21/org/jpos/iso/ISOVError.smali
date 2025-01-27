.class public Lorg/jpos/iso/ISOVError;
.super Ljava/lang/Object;
.source "ISOVError.java"


# static fields
.field public static final ERR_INVALID_LENGTH:I = 0x1

.field public static final ERR_INVALID_VALUE:I = 0x2


# instance fields
.field protected description:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected rejectCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "Description"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/iso/ISOVError;->description:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/jpos/iso/ISOVError;->description:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Description"    # Ljava/lang/String;
    .param p2, "RejectCode"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lorg/jpos/iso/ISOVError;->description:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/jpos/iso/ISOVError;->description:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/jpos/iso/ISOVError;->rejectCode:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jpos/iso/ISOVError;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/jpos/iso/ISOVError;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectCode()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/jpos/iso/ISOVError;->rejectCode:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lorg/jpos/iso/ISOVError;->id:Ljava/lang/String;

    .line 57
    return-void
.end method
