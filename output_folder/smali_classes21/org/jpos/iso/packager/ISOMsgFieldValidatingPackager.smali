.class public Lorg/jpos/iso/packager/ISOMsgFieldValidatingPackager;
.super Lorg/jpos/iso/ISOMsgFieldPackager;
.source "ISOMsgFieldValidatingPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOValidator;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISOFieldPackager;Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "fieldPackager"    # Lorg/jpos/iso/ISOFieldPackager;
    .param p2, "msgPackager"    # Lorg/jpos/iso/ISOPackager;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOMsgFieldPackager;-><init>(Lorg/jpos/iso/ISOFieldPackager;Lorg/jpos/iso/ISOPackager;)V

    .line 43
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

    .line 46
    iget-object v0, p0, Lorg/jpos/iso/packager/ISOMsgFieldValidatingPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    check-cast v0, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/packager/ISOBaseValidatingPackager;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    return-object v0
.end method
