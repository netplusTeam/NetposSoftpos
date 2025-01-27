.class public Lorg/jpos/iso/filter/DebugFilter;
.super Ljava/lang/Object;
.source "DebugFilter.java"

# interfaces
.implements Lorg/jpos/iso/RawIncomingFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 0
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 41
    return-object p2
.end method

.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;[B[BLorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 2
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "header"    # [B
    .param p4, "image"    # [B
    .param p5, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 31
    if-eqz p5, :cond_1

    .line 32
    if-eqz p3, :cond_0

    .line 33
    new-instance v0, Lorg/jpos/util/Dumpable;

    const-string v1, "header"

    invoke-direct {v0, v1, p3}, Lorg/jpos/util/Dumpable;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 34
    :cond_0
    if-eqz p4, :cond_1

    .line 35
    new-instance v0, Lorg/jpos/util/Dumpable;

    const-string v1, "image"

    invoke-direct {v0, v1, p4}, Lorg/jpos/util/Dumpable;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 37
    :cond_1
    return-object p2
.end method
