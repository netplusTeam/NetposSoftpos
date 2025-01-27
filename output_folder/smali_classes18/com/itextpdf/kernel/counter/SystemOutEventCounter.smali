.class public Lcom/itextpdf/kernel/counter/SystemOutEventCounter;
.super Lcom/itextpdf/kernel/counter/EventCounter;
.source "SystemOutEventCounter.java"


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    const-string v0, "iText"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 70
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/kernel/counter/EventCounter;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;->name:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method protected onEvent(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V
    .locals 4
    .param p1, "event"    # Lcom/itextpdf/kernel/counter/event/IEvent;
    .param p2, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 75
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/itextpdf/kernel/counter/SystemOutEventCounter;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/itextpdf/kernel/counter/event/IEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[{0}] {1} event"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    return-void
.end method
