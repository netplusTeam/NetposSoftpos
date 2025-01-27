.class public Lorg/jpos/iso/ISOMsgFieldValidator;
.super Lorg/jpos/iso/ISOFieldValidator;
.source "ISOMsgFieldValidator.java"


# instance fields
.field protected msgValidator:Lorg/jpos/iso/ISOValidator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jpos/iso/ISOValidator;)V
    .locals 0
    .param p1, "Description"    # Ljava/lang/String;
    .param p2, "msgValidator"    # Lorg/jpos/iso/ISOValidator;

    .line 35
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOFieldValidator;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lorg/jpos/iso/ISOMsgFieldValidator;->msgValidator:Lorg/jpos/iso/ISOValidator;

    .line 37
    return-void
.end method


# virtual methods
.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 40
    instance-of v0, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/iso/ISOMsgFieldValidator;->msgValidator:Lorg/jpos/iso/ISOValidator;

    invoke-interface {v0, p1}, Lorg/jpos/iso/ISOValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
