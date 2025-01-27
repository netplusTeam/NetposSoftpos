.class public Lorg/jpos/iso/validator/ISOVException;
.super Lorg/jpos/iso/ISOException;
.source "ISOVException.java"


# static fields
.field private static final serialVersionUID:J = 0x777bdb90933103bbL


# instance fields
.field protected errComponent:Lorg/jpos/iso/ISOComponent;

.field protected treated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "Description"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/validator/ISOVException;->treated:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V
    .locals 1
    .param p1, "Description"    # Ljava/lang/String;
    .param p2, "errComponent"    # Lorg/jpos/iso/ISOComponent;

    .line 42
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/validator/ISOVException;->treated:Z

    .line 43
    iput-object p2, p0, Lorg/jpos/iso/validator/ISOVException;->errComponent:Lorg/jpos/iso/ISOComponent;

    .line 44
    return-void
.end method


# virtual methods
.method public getErrComponent()Lorg/jpos/iso/ISOComponent;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/jpos/iso/validator/ISOVException;->errComponent:Lorg/jpos/iso/ISOComponent;

    return-object v0
.end method

.method public setErrComponent(Lorg/jpos/iso/ISOComponent;)V
    .locals 0
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;

    .line 55
    iput-object p1, p0, Lorg/jpos/iso/validator/ISOVException;->errComponent:Lorg/jpos/iso/ISOComponent;

    .line 56
    return-void
.end method

.method public setTreated(Z)V
    .locals 0
    .param p1, "Treated"    # Z

    .line 59
    iput-boolean p1, p0, Lorg/jpos/iso/validator/ISOVException;->treated:Z

    .line 60
    return-void
.end method

.method public treated()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/jpos/iso/validator/ISOVException;->treated:Z

    return v0
.end method
